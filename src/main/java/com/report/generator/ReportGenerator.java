package com.report.generator;

import com.fasterxml.jackson.databind.ObjectMapper;
import com.report.generator.constants.StatusColor;
import com.report.generator.model.template.TemplateSuite;
import com.report.generator.model.robot.Robot;
import com.report.generator.model.robot.SearchResult;
import com.report.generator.model.robot.Stat;
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
    CommandParser commandParser = null;
    FileService fileService = null;

    public static void main(String[] args) {
        printStartBanner();
        ReportGenerator reportGenerator = new ReportGenerator();
        reportGenerator.run(args);
        printEndBanner();
    }

    private void run(String[] args) {

        commandParser = new CommandParser(args);
        fileService = new FileService(commandParser);
        viewBuilder = new ViewBuilder(fileService);
        objectMapper = new ObjectMapper();
        final XmlInputReader productBuilder = new XmlInputReader();
        Configuration config = new FreemarkerConfigService().getFreemarkerConfiguration();

        Map root = newHashMap();
        Map<String, String> createOutputPages = newHashMap();
        List<SearchResult> searchResults = newArrayList();
        Robot robotRoot = productBuilder.readInput(fileService.getInputDir());
        List<Stat> statObj = robotRoot.getStatistics().getSuite().getStat();

        addHomePageValue(root, statObj);

        Stat smallestChildStat = statObj.stream().max(comparingInt(s -> s.getId().length())).get();
        HashMap<String, List<TemplateSuite>> allProducts = getAllProducts(createOutputPages, searchResults, statObj, smallestChildStat);

        checkForInconsistencies(statObj, allProducts);

        createChildOutputPages(config, root, createOutputPages, searchResults, smallestChildStat, allProducts);

        root.put("searchList", searchResults);
        createMainDashboard(config, root, allProducts);

        viewBuilder.copyOutputDependencies();

    }

    private void createMainDashboard(Configuration config, Map root, HashMap<String, List<TemplateSuite>> allProducts) {
        allProducts.get(REGEX).stream().forEach(
                c -> {
                    try {
                        if (isNotEmpty(c.getSubTemplateSuites())) {
                            populateColors(c.getSubTemplateSuites());
                            viewBuilder.createOutputFile(config.getTemplate("template.ftl"), c, root);
                        }
                    } catch (Exception e) {
                        e.printStackTrace();
                    }
                });
    }

    private void createChildOutputPages(Configuration config, Map root, Map<String, String> createOutputPages, List<SearchResult> searchResults, Stat smallestChildStat, HashMap<String, List<TemplateSuite>> allProducts) {
        long regexOccurrenceCount = getOccurrenceOfPatternForString(smallestChildStat.getId(), REGEX);
        while (regexOccurrenceCount != 1) {

            String stringToMatch = getRegexToMatch(REGEX, (int) regexOccurrenceCount, true);

            allProducts.get(stringToMatch).stream()
                    .forEach(p -> {
                        List<TemplateSuite> childTemplateSuites = allProducts.get(stringToMatch + "-" + REGEX)
                                .stream()
                                .filter(c -> c.getId().matches(p.getId() + "-" + REGEX))
                                .collect(Collectors.toList());

                        childTemplateSuites.stream().forEach(c -> {
                            try {
                                searchResults.add(new SearchResult(c.getName(), createOutputPages.get(p.getId())));
                                if (isNotEmpty(c.getSubTemplateSuites())) {
                                    populateColors(c.getSubTemplateSuites());
                                    viewBuilder.createOutputFile(config.getTemplate("template.ftl"), c, root);
                                }
                            } catch (Exception e) {
                                e.printStackTrace();
                            }
                        });

                        p.setSubProducts(childTemplateSuites);
                    });

            allProducts.remove(stringToMatch + "-" + REGEX);
            regexOccurrenceCount--;
        }
    }

    private HashMap<String, List<TemplateSuite>> getAllProducts(Map<String, String> createOutputPages, List<SearchResult> searchResults, List<Stat> statObj, Stat smallestChildStat) {
        HashMap<String, List<TemplateSuite>> allProducts = newHashMap();
        long regexOccurrenceCount = getOccurrenceOfPatternForString(smallestChildStat.getId(), REGEX);

        while (regexOccurrenceCount != 0) {

            String stringToMatch = getRegexToMatch(REGEX, (int) regexOccurrenceCount, false);

            allProducts.put(stringToMatch, buildChildProducts(statObj, stringToMatch, createOutputPages, searchResults));
            regexOccurrenceCount--;
        }

        return allProducts;
    }

    private void addHomePageValue(Map root, List<Stat> statObj) {
        Stat largestStat = statObj.stream().min(comparingInt(s -> s.getId().length())).get();
        String fileName = sanitize(largestStat.getName());
        root.put("homePage", fileName + ".html");
    }

    private void checkForInconsistencies(List<Stat> statObj, HashMap<String, List<TemplateSuite>> allProducts) {
        int sum = allProducts.values().stream().map(List::size).mapToInt(Integer::intValue).sum();
        if (sum != statObj.size()) {
            System.out.println("ERROR: Sum and statObj size mismatch !");
            System.exit(500);
        }
    }

    private List<TemplateSuite> buildChildProducts(List<Stat> statObj, String stringToMatch, Map<String, String> createOutputPages, List<SearchResult> searchResults) {

        List<TemplateSuite> productsList = newArrayList();
        List<Stat> matchingChildren = statObj.stream()
                .filter(s -> s.getId().matches(stringToMatch))
                .collect(Collectors.toList());

        if (isNotEmpty(matchingChildren)) {
            productsList = matchingChildren.stream()
                    .map(s -> {
                        TemplateSuite templateSuiteObj = new TemplateSuite(s.getId());
                        templateSuiteObj.setName(s.getName());
                        templateSuiteObj.setFail(s.getFail().doubleValue());
                        templateSuiteObj.setPass(s.getPass().doubleValue());
                        templateSuiteObj.buildTotal();
                        templateSuiteObj.setFailPercent(calculatePercentage(templateSuiteObj, FAIL_PERCENT));
                        templateSuiteObj.setPassPercent(calculatePercentage(templateSuiteObj, PASS_PERCENT));
                        StatusColor status = getStatusFromPercentage(templateSuiteObj.getPassPercent());
                        templateSuiteObj.setStatus(status.getColor());
                        String url = sanitize(templateSuiteObj.getName()) + ".html";
                        templateSuiteObj.setDetailView(url);
                        createOutputPages.put(s.getId(), url);
                        searchResults.add(new SearchResult(s.getName(), url));
                        return templateSuiteObj;
                    }).collect(Collectors.toList());

        }

        return productsList;
    }

}
