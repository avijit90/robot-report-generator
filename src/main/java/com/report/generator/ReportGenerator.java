package com.report.generator;

import com.fasterxml.jackson.databind.ObjectMapper;
import com.report.generator.constants.StatusColor;
import com.report.generator.model.Product;
import com.report.generator.model.Robot;
import com.report.generator.model.SearchResult;
import com.report.generator.model.Stat;
import com.report.generator.service.ConfigurationService;
import com.report.generator.service.DynamicBuilder;
import com.report.generator.service.ProductBuilder;
import com.report.generator.service.ViewBuilder;
import freemarker.template.Configuration;
import freemarker.template.Template;

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
import static com.report.generator.util.AppUtils.calculatePercentage;
import static com.report.generator.util.AppUtils.sanitize;
import static java.util.Comparator.comparingInt;
import static org.apache.commons.collections4.CollectionUtils.isNotEmpty;
import static org.apache.commons.lang3.ArrayUtils.isNotEmpty;

public class ReportGenerator {

    ObjectMapper objectMapper = null;
    String outputFileToProcess = null;
    List<SearchResult> searchResults = null;
    Map<String, String> pagesCreated = null;

    public static void main(String[] args) throws Exception {
        ReportGenerator reportGenerator = new ReportGenerator();
        reportGenerator.run(args);
    }

    private void run(String[] args) throws Exception {

        if (isNotEmpty(args)) {
            outputFileToProcess = args[0];
        }

        String regex = "s\\d+";
        objectMapper = new ObjectMapper();
        final ViewBuilder viewBuilder = new ViewBuilder();
        final ConfigurationService configurationService = new ConfigurationService();
        final ProductBuilder productBuilder = new DynamicBuilder();
        Configuration config = configurationService.getConfiguration();
        Template outputTemplate = config.getTemplate("/advanced/index.ftl");
        Map root = viewBuilder.getRootWithStaticValues();
        pagesCreated = newHashMap();

        Robot robotRoot = ((DynamicBuilder) productBuilder).loadObjectIntoMemory(outputFileToProcess);
        //System.out.println(objectMapper.writeValueAsString(robotRoot));

        List<Stat> statObj = robotRoot.getStatistics().getSuite().getStat();

        Stat largestStat = statObj.stream().min(comparingInt(s -> s.getId().length())).get();
        String fileName = sanitize(largestStat.getName());
        root.put("homePage", fileName + ".html");

        Stat smallestChildStat = statObj.stream().max(comparingInt(s -> s.getId().length())).get();
        long regexOccurrenceCount = getOccurrenceOfPatternForString(smallestChildStat.getId(), regex);
        System.out.println("smallestChildStat ID : " + smallestChildStat.getId());
        System.out.println("regexOccurrenceCount : " + regexOccurrenceCount);

        HashMap<String, List<Product>> allProducts = newHashMap();
        while (regexOccurrenceCount != 0) {

            String stringToMatch = getRegexToMatch(regex, (int) regexOccurrenceCount, false);

            allProducts.put(stringToMatch, buildChildProducts(statObj, stringToMatch));
            regexOccurrenceCount--;
        }

        System.out.println(objectMapper.writeValueAsString(allProducts));
        int sum = allProducts.values().stream().map(List::size).mapToInt(Integer::intValue).sum();
        System.out.println("map size : " + sum);
        System.out.println("statObj size : " + statObj.size());

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
                                    viewBuilder.createOutputFile(objectMapper, outputTemplate, c, root);
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

        System.out.println(objectMapper.writeValueAsString(allProducts));
        root.put("searchList", searchResults);
        allProducts.get(regex).stream().forEach(
                c -> {
                    try {
                        if (isNotEmpty(c.getSubproducts())) {
                            viewBuilder.populateColors(c.getSubproducts());
                            viewBuilder.createOutputFile(objectMapper, outputTemplate, c, root);
                        }
                    } catch (Exception e) {
                        e.printStackTrace();
                    }
                });

        /*Product ftRecord = productBuilder.getFundTransferRecord();
        Product termDeposit = productBuilder.getTermDepositRecord();
        Product sysFeatures = productBuilder.getSysFeaturesRecord();
        Product overviewRecord = productBuilder.buildOverview(ftRecord, sysFeatures, termDeposit);*/

        //viewBuilder.createOutputFile(objectMapper, sidebarTemplate, overviewRecord, root);
        //viewBuilder.createOutputFile(objectMapper, outputTemplate, overviewRecord, root);
        //viewBuilder.createOutputFile(objectMapper, outputTemplate, ftRecord, root);
        //viewBuilder.createOutputFile(objectMapper, outputTemplate, termDeposit, root);

        System.out.println("--------------------------------");

    }

    private String getRegexToMatch(String regex, int count, boolean decreaseCount) {
        System.out.println("repetition : " + count);
        List<String> regexList = new ArrayList<>();
        IntStream.range(0, decreaseCount ? count - 1 : count).forEach(i -> regexList.add(i, regex));
        String stringToMatch = String.join("-", regexList);
        System.out.println("stringToMatch :" + stringToMatch);
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
