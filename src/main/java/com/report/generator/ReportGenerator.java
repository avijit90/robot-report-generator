package com.report.generator;

import com.fasterxml.jackson.databind.ObjectMapper;
import com.report.generator.constants.StatusColor;
import com.report.generator.model.Product;
import com.report.generator.model.Robot;
import com.report.generator.model.SearchResult;
import com.report.generator.model.Stat;
import com.report.generator.service.*;
import freemarker.template.Configuration;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.regex.Pattern;
import java.util.stream.Collectors;
import java.util.stream.IntStream;

import static com.google.common.collect.Lists.newArrayList;
import static com.google.common.collect.Maps.newHashMap;
import static com.report.generator.constants.PercentageType.FAIL_PERCENT;
import static com.report.generator.constants.PercentageType.PASS_PERCENT;
import static com.report.generator.constants.StatusColor.getStatusFromPercentage;
import static com.report.generator.util.AppUtils.*;
import static java.util.Comparator.comparingInt;
import static org.apache.commons.collections4.CollectionUtils.isNotEmpty;

public class ReportGenerator {

    ObjectMapper objectMapper = null;
    List<SearchResult> searchResults = null;
    Map<String, String> pagesCreated = null;
    ViewBuilder viewBuilder = null;
    InputParser inputParser = null;
    FileService fileService = null;

    public static void main(String[] args) {
        printStartBanner();
        ReportGenerator reportGenerator = new ReportGenerator();
        reportGenerator.run(args);
        printEndBanner();
    }

    private void run(String[] args) {

        fileService = new FileService();
        inputParser = new InputParser(args, fileService);
        viewBuilder = new ViewBuilder(inputParser.getInputDir(), inputParser.getOutputDir());
        objectMapper = new ObjectMapper();
        final DynamicBuilder productBuilder = new DynamicBuilder();
        Configuration config = new ConfigurationService().getConfiguration();

        String regex = "s\\d+";
        Map root = newHashMap();
        pagesCreated = newHashMap();

        Robot robotRoot = productBuilder.readRobotInput(inputParser.getInputDir());

        List<Stat> statObj = robotRoot.getStatistics().getSuite().getStat();

        Stat largestStat = statObj.stream().min(comparingInt(s -> s.getId().length())).get();
        String fileName = sanitize(largestStat.getName());
        root.put("homePage", fileName + ".html");

        Stat smallestChildStat = statObj.stream().max(comparingInt(s -> s.getId().length())).get();
        long regexOccurrenceCount = getOccurrenceOfPatternForString(smallestChildStat.getId(), regex);

        HashMap<String, List<Product>> allProducts = newHashMap();
        while (regexOccurrenceCount != 0) {

            String stringToMatch = getRegexToMatch(regex, (int) regexOccurrenceCount, false);

            allProducts.put(stringToMatch, buildChildProducts(statObj, stringToMatch));
            regexOccurrenceCount--;
        }

        checkForInconsistencies(statObj, allProducts);

        regexOccurrenceCount = getOccurrenceOfPatternForString(smallestChildStat.getId(), regex);
        while (regexOccurrenceCount != 1) {

            String stringToMatch = getRegexToMatch(regex, (int) regexOccurrenceCount, true);

            allProducts.get(stringToMatch).stream()
                    .forEach(p -> {
                        List<Product> subProducts = allProducts.get(stringToMatch + "-" + regex)
                                .stream()
                                .filter(c -> c.getId().matches(p.getId() + "-" + regex))
                                .collect(Collectors.toList());

                        subProducts.stream().forEach(c -> {
                            try {
                                searchResults.add(new SearchResult(c.getName(), pagesCreated.get(p.getId())));
                                if (isNotEmpty(c.getSubproducts())) {
                                    viewBuilder.populateColors(c.getSubproducts());
                                    viewBuilder.createOutputFile(config.getTemplate("index.ftl"), c, root);
                                }
                            } catch (Exception e) {
                                e.printStackTrace();
                            }
                        });

                        p.setSubProducts(subProducts);
                    });

            allProducts.remove(stringToMatch + "-" + regex);
            regexOccurrenceCount--;
        }

        root.put("searchList", searchResults);
        allProducts.get(regex).stream().forEach(
                c -> {
                    try {
                        if (isNotEmpty(c.getSubproducts())) {
                            viewBuilder.populateColors(c.getSubproducts());
                            viewBuilder.createOutputFile(config.getTemplate("index.ftl"), c, root);
                        }
                    } catch (Exception e) {
                        e.printStackTrace();
                    }
                });

        viewBuilder.copyRobotFiles();
        viewBuilder.createDependentFiles();

    }

    private void checkForInconsistencies(List<Stat> statObj, HashMap<String, List<Product>> allProducts) {
        int sum = allProducts.values().stream().map(List::size).mapToInt(Integer::intValue).sum();
        if (sum != statObj.size()) {
            System.out.println("ERROR: Sum and statObj size mismatch !");
            System.exit(500);
        }
    }

    private String getRegexToMatch(String regex, int count, boolean decreaseCount) {
        List<String> regexList = new ArrayList<>();
        IntStream.range(0, decreaseCount ? count - 1 : count).forEach(i -> regexList.add(i, regex));
        String stringToMatch = String.join("-", regexList);
        return stringToMatch;
    }

    private long getOccurrenceOfPatternForString(String stringToCheck, String patternString) {
        final Pattern pattern = Pattern.compile(patternString);
        return pattern.splitAsStream(stringToCheck).count();
    }

    private List<Product> buildChildProducts(List<Stat> statObj, String stringToMatch) {

        List<Product> productsList = newArrayList();
        searchResults = newArrayList();

        List<Stat> matchingChildren = statObj.stream()
                .filter(s -> s.getId().matches(stringToMatch))
                .collect(Collectors.toList());

        if (isNotEmpty(matchingChildren)) {
            productsList = matchingChildren.stream()
                    .map(s -> {
                        Product productObj = new Product(s.getId());
                        productObj.setName(s.getName());
                        productObj.setFail(s.getFail().doubleValue());
                        productObj.setPass(s.getPass().doubleValue());
                        productObj.buildTotal();
                        productObj.setFailPercent(calculatePercentage(productObj, FAIL_PERCENT));
                        productObj.setPassPercent(calculatePercentage(productObj, PASS_PERCENT));
                        StatusColor status = getStatusFromPercentage(productObj.getPassPercent());
                        productObj.setStatus(status.getColor());
                        String url = sanitize(productObj.getName()) + ".html";
                        productObj.setDetailView(url);
                        pagesCreated.put(s.getId(), url);
                        searchResults.add(new SearchResult(s.getName(), url));
                        return productObj;
                    }).collect(Collectors.toList());

        }

        return productsList;
    }

}
