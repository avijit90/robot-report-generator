package com.report.generator.service;

import com.report.generator.constants.StatusColor;
import com.report.generator.model.robot.Robot;
import com.report.generator.model.robot.SearchResult;
import com.report.generator.model.robot.Stat;
import com.report.generator.model.template.TemplateSuite;
import freemarker.template.Configuration;
import freemarker.template.Template;

import java.io.File;
import java.io.FileWriter;
import java.io.StringWriter;
import java.io.Writer;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.stream.Collectors;

import static com.google.common.collect.Lists.newArrayList;
import static com.google.common.collect.Maps.newHashMap;
import static com.report.generator.constants.PercentageType.*;
import static com.report.generator.constants.StatusColor.getStatusFromPercentage;
import static com.report.generator.util.AppUtils.populateColors;
import static com.report.generator.util.AppUtils.sanitize;
import static com.report.generator.util.RegexHelper.*;
import static java.text.MessageFormat.format;
import static java.util.Comparator.comparingInt;
import static org.apache.commons.collections4.CollectionUtils.isNotEmpty;
import static org.apache.commons.lang3.StringUtils.containsIgnoreCase;

public class ViewBuilder {

    private Map<String, String> createOutputPages = newHashMap();
    private List<SearchResult> searchResults = newArrayList();
    private Map root = newHashMap();

    private FileService fileService;
    private FreemarkerConfigService freemarkerConfigService;

    public ViewBuilder(FileService fileService) {
        this.fileService = fileService;
        this.freemarkerConfigService = new FreemarkerConfigService();
    }

    public void createOutputFile(Template template, TemplateSuite overviewRecord, Map root) throws Exception {

        root.put("templateSuite", overviewRecord);

        if (containsIgnoreCase(template.getName(), "sidebar")) {
            StringWriter stringWriter = new StringWriter();
            template.process(root, stringWriter);
            String sidebarOutput = stringWriter.toString();
            root.put("sidebar", sidebarOutput);
            return;
        }

        String fileName = sanitize(overviewRecord.getName());
        File outputFile = new File(fileService.getOutputDir() + fileName + ".html");

        Writer fileWriter = new FileWriter(outputFile);
        System.out.println(format("Created file : {0}", outputFile.getPath()));

        try {
            template.process(root, fileWriter);
        } finally {
            fileWriter.close();
        }
    }

    public void copyOutputDependencies() {
        fileService.createDependentFiles();
        fileService.copyRobotFiles();
    }

    public void buildView(Robot robotRoot) {

        Configuration config = freemarkerConfigService.getFreemarkerConfiguration();
        List<Stat> statistics = robotRoot.getStatistics().getSuite().getStat();

        addHomePageValue(statistics);
        Stat smallestChildStat = statistics.stream().max(comparingInt(s -> s.getId().length())).get();
        HashMap<String, List<TemplateSuite>> suiteClassification = getSuiteClassification(statistics, smallestChildStat);

        createChildOutputPages(config, smallestChildStat, suiteClassification);

        createMainDashboard(config, suiteClassification);
        copyOutputDependencies();
    }

    private HashMap<String, List<TemplateSuite>> getSuiteClassification(List<Stat> statistics, Stat smallestChildStat) {

        HashMap<String, List<TemplateSuite>> suiteClassification = classifySuitesByIds(createOutputPages, searchResults, statistics, smallestChildStat);

        checkForInconsistencies(statistics, suiteClassification);
        return suiteClassification;
    }

    private HashMap<String, List<TemplateSuite>> classifySuitesByIds(Map<String, String> createOutputPages, List<SearchResult> searchResults, List<Stat> statObj, Stat smallestChildStat) {
        HashMap<String, List<TemplateSuite>> suiteClassification = newHashMap();
        long regexOccurrenceCount = getOccurrenceOfPatternForString(smallestChildStat.getId(), REGEX);

        while (regexOccurrenceCount != 0) {

            String stringToMatch = getRegexToMatch(REGEX, (int) regexOccurrenceCount, false);

            suiteClassification.put(stringToMatch, buildChildTemplateSuites(statObj, stringToMatch, createOutputPages, searchResults));
            regexOccurrenceCount--;
        }

        return suiteClassification;
    }

    private void checkForInconsistencies(List<Stat> statObj, HashMap<String, List<TemplateSuite>> allProducts) {
        int sum = allProducts.values().stream().map(List::size).mapToInt(Integer::intValue).sum();
        if (sum != statObj.size()) {
            System.out.println("ERROR: Sum and statObj size mismatch !");
            System.exit(500);
        }
    }

    private void createChildOutputPages(Configuration config, Stat smallestChildStat, HashMap<String, List<TemplateSuite>> allProducts) {
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

                                searchResults.add(new SearchResult(c.getName(),
                                        createOutputPages.get(p.getId())));

                                if (isNotEmpty(c.getSubTemplateSuites())) {
                                    populateColors(c.getSubTemplateSuites());
                                    createOutputFile(config.getTemplate("template.ftl"), c, root);
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
        root.put("searchList", searchResults);
    }

    private List<TemplateSuite> buildChildTemplateSuites(List<Stat> statObj, String stringToMatch, Map<String, String> createOutputPages, List<SearchResult> searchResults) {

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

    private void createMainDashboard(Configuration config, HashMap<String, List<TemplateSuite>> templateSuites) {
        templateSuites.get(REGEX).stream().forEach(
                c -> {
                    try {
                        if (isNotEmpty(c.getSubTemplateSuites())) {
                            populateColors(c.getSubTemplateSuites());
                            createOutputFile(config.getTemplate("template.ftl"), c, root);
                        }
                    } catch (Exception e) {
                        e.printStackTrace();
                    }
                });
    }

    private void addHomePageValue(List<Stat> statObj) {
        Stat largestStat = statObj.stream().min(comparingInt(s -> s.getId().length())).get();
        String fileName = sanitize(largestStat.getName());
        root.put("homePage", fileName + ".html");
    }
}
