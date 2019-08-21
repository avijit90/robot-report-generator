package com.report.generator;

import com.fasterxml.jackson.databind.ObjectMapper;
import com.report.generator.constants.StatusColor;
import com.report.generator.model.Product;
import com.report.generator.model.Robot;
import com.report.generator.model.SearchResult;
import com.report.generator.model.Stat;
import com.report.generator.service.*;
import freemarker.template.Configuration;

import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.stream.Collectors;

import static com.google.common.collect.Lists.newArrayList;
import static com.google.common.collect.Maps.newHashMap;
import static com.report.generator.constants.PercentageType.*;
import static com.report.generator.constants.StatusColor.getStatusFromPercentage;
import static com.report.generator.util.AppUtils.*;
import static com.report.generator.util.RegexHelper.*;
import static java.util.Comparator.comparingInt;
import static org.apache.commons.collections4.CollectionUtils.isNotEmpty;

public class ReportGenerator {

    ObjectMapper objectMapper = null;
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

        inputParser = new InputParser(args);
        fileService = new FileService(inputParser);
        viewBuilder = new ViewBuilder(fileService);
        objectMapper = new ObjectMapper();
        final DynamicBuilder productBuilder = new DynamicBuilder();
        Configuration config = new ConfigurationService().getConfiguration();

        Map root = newHashMap();
        Map<String, String> createOutputPages = newHashMap();
        List<SearchResult> searchResults = newArrayList();
        Robot robotRoot = productBuilder.readRobotInput(fileService.getInputDir());
        List<Stat> statObj = robotRoot.getStatistics().getSuite().getStat();

        Stat largestStat = statObj.stream().min(comparingInt(s -> s.getId().length())).get();
        String fileName = sanitize(largestStat.getName());
        root.put("homePage", fileName + ".html");

        Stat smallestChildStat = statObj.stream().max(comparingInt(s -> s.getId().length())).get();
        long regexOccurrenceCount = getOccurrenceOfPatternForString(smallestChildStat.getId(), REGEX);

        HashMap<String, List<Product>> allProducts = newHashMap();
        while (regexOccurrenceCount != 0) {

            String stringToMatch = getRegexToMatch(REGEX, (int) regexOccurrenceCount, false);

            allProducts.put(stringToMatch, buildChildProducts(statObj, stringToMatch, createOutputPages, searchResults));
            regexOccurrenceCount--;
        }

        checkForInconsistencies(statObj, allProducts);

        regexOccurrenceCount = getOccurrenceOfPatternForString(smallestChildStat.getId(), REGEX);
        while (regexOccurrenceCount != 1) {

            String stringToMatch = getRegexToMatch(REGEX, (int) regexOccurrenceCount, true);

            allProducts.get(stringToMatch).stream()
                    .forEach(p -> {
                        List<Product> subProducts = allProducts.get(stringToMatch + "-" + REGEX)
                                .stream()
                                .filter(c -> c.getId().matches(p.getId() + "-" + REGEX))
                                .collect(Collectors.toList());

                        subProducts.stream().forEach(c -> {
                            try {
                                searchResults.add(new SearchResult(c.getName(), createOutputPages.get(p.getId())));
                                if (isNotEmpty(c.getSubproducts())) {
                                    populateColors(c.getSubproducts());
                                    viewBuilder.createOutputFile(config.getTemplate("index.ftl"), c, root);
                                }
                            } catch (Exception e) {
                                e.printStackTrace();
                            }
                        });

                        p.setSubProducts(subProducts);
                    });

            allProducts.remove(stringToMatch + "-" + REGEX);
            regexOccurrenceCount--;
        }

        root.put("searchList", searchResults);
        allProducts.get(REGEX).stream().forEach(
                c -> {
                    try {
                        if (isNotEmpty(c.getSubproducts())) {
                            populateColors(c.getSubproducts());
                            viewBuilder.createOutputFile(config.getTemplate("index.ftl"), c, root);
                        }
                    } catch (Exception e) {
                        e.printStackTrace();
                    }
                });


        viewBuilder.copyOutputDependencies();

    }

    private void checkForInconsistencies(List<Stat> statObj, HashMap<String, List<Product>> allProducts) {
        int sum = allProducts.values().stream().map(List::size).mapToInt(Integer::intValue).sum();
        if (sum != statObj.size()) {
            System.out.println("ERROR: Sum and statObj size mismatch !");
            System.exit(500);
        }
    }

    private List<Product> buildChildProducts(List<Stat> statObj, String stringToMatch, Map<String, String> createOutputPages, List<SearchResult> searchResults) {

        List<Product> productsList = newArrayList();
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
                        createOutputPages.put(s.getId(), url);
                        searchResults.add(new SearchResult(s.getName(), url));
                        return productObj;
                    }).collect(Collectors.toList());

        }

        return productsList;
    }

}
