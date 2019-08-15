package com.report.generator;

import com.fasterxml.jackson.databind.ObjectMapper;
import com.google.common.collect.Lists;
import com.google.common.collect.Maps;
import com.report.generator.constants.StatusColor;
import com.report.generator.model.Product;
import com.report.generator.model.Robot;
import com.report.generator.model.Stat;
import com.report.generator.service.ConfigurationService;
import com.report.generator.service.DynamicBuilder;
import com.report.generator.service.ProductBuilder;
import com.report.generator.service.ViewBuilder;
import freemarker.template.Configuration;
import freemarker.template.Template;
import org.apache.commons.collections4.CollectionUtils;
import org.apache.commons.lang3.ArrayUtils;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.regex.Pattern;
import java.util.stream.Collectors;
import java.util.stream.IntStream;

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

        Robot robotRoot = ((DynamicBuilder) productBuilder).loadObjectIntoMemory(outputFileToProcess);
        //System.out.println(objectMapper.writeValueAsString(robotRoot));

        List<Stat> statObj = robotRoot.getStatistics().getSuite().getStat();

        Stat largestStat = statObj.stream().min(comparingInt(s -> s.getId().length())).get();
        String fileName = sanitize(largestStat.getName());
        root.put("homePage", fileName + ".html");

        Stat smallestChildStat = statObj.stream().max(comparingInt(s -> s.getId().length())).get();
        long count = getOccurrenceOfPatternForString(smallestChildStat.getId(), regex);
        System.out.println("smallestChildStat ID : " + smallestChildStat.getId());
        System.out.println("count : " + count);

        HashMap<String, List<Product>> allProducts = Maps.newHashMap();

        while (count != 0) {

            String stringToMatch = getRegexToMatch(regex, (int) count, false);

            allProducts.put(stringToMatch, buildChildProducts(statObj, stringToMatch));
            count--;
        }

        //System.out.println(objectMapper.writeValueAsString(allProducts));
        int sum = allProducts.values().stream().map(List::size).mapToInt(Integer::intValue).sum();
        System.out.println("map size : " + sum);
        System.out.println("statObj size : " + statObj.size());

        count = getOccurrenceOfPatternForString(smallestChildStat.getId(), regex);

        while (count != 1) {

            String stringToMatch = getRegexToMatch(regex, (int) count, true);

            allProducts.get(stringToMatch).stream()
                    .forEach(p -> {
                        List<Product> subProducts = allProducts.get(stringToMatch + "-" + regex)
                                .stream()
                                .filter(c -> c.getId().matches(p.getId() + "-" + regex))
                                .collect(Collectors.toList());

                        subProducts.stream().forEach(c -> {
                            try {
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
            count--;
        }

        System.out.println(objectMapper.writeValueAsString(allProducts));

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

        /*if (consolidatedProductList.size() == 1) {
            Product overviewRecord = consolidatedProductList.get(0);
            viewBuilder.createOutputFile(objectMapper, outputTemplate, overviewRecord, root);

            if(isNotEmpty(overviewRecord.getSubproducts())){
                overviewRecord.getSubproducts().stream().forEach(p -> {
                    try {
                        viewBuilder.createOutputFile(objectMapper, outputTemplate, p, root);
                    } catch (Exception e) {
                        e.printStackTrace();
                    }
                });
            }
        } else {
            System.out.println("consolidatedProductList : " + consolidatedProductList);
            System.out.println("Error : More than One root element found !");
        }*/

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

        List<Product> productsList = Lists.newArrayList();

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
                        productObj.setDetailView(sanitize(productObj.getName()) + ".html");
                        return productObj;
                    }).collect(Collectors.toList());

        }

        return productsList;
    }

}
