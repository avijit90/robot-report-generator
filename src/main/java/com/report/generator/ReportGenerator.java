package com.report.generator;

import com.fasterxml.jackson.databind.ObjectMapper;
import com.report.generator.model.*;
import com.report.generator.service.ConfigurationService;
import com.report.generator.service.DynamicBuilder;
import com.report.generator.service.ProductBuilder;
import com.report.generator.service.ViewBuilder;
import org.apache.commons.lang3.StringUtils;

import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Optional;

import static com.report.generator.util.AppUtils.sanitize;

public class ReportGenerator {

    public static void main(String[] args) throws Exception {
        ReportGenerator reportGenerator = new ReportGenerator();
        reportGenerator.run();
    }

    private void run() throws Exception {

        final ObjectMapper objectMapper = new ObjectMapper();
        final ViewBuilder viewBuilder = new ViewBuilder();
        final ConfigurationService configurationService = new ConfigurationService();
        final ProductBuilder productBuilder = new DynamicBuilder();
        Map root = new HashMap();

        Robot robotRoot = ((DynamicBuilder) productBuilder).loadObjectIntoMemory();
        System.out.println(objectMapper.writeValueAsString(robotRoot));

        Optional<Stat> testStat = robotRoot.getStatistics().getSuite().getStat().stream()
                .filter(s -> StringUtils.equalsIgnoreCase(s.getValue(), "All Tests")).findFirst();
        if (testStat.isPresent()) {
            Product overview = new Product();
            overview.setName("Overview");
            overview.setFail(testStat.get().getFail().doubleValue());
            overview.setPass(testStat.get().getPass().doubleValue());
            overview.setDetailView(sanitize(overview.getName()) + ".html");
        }

        Suite mainSuite = robotRoot.getSuite();

        /*Configuration config = configurationService.getConfiguration();
        Template outputTemplate = config.getTemplate("/advanced/index.ftl");

        Product ftRecord = productBuilder.getFundTransferRecord();
        Product termDeposit = productBuilder.getTermDepositRecord();
        Product sysFeatures = productBuilder.getSysFeaturesRecord();
        Product overviewRecord = productBuilder.buildOverview(ftRecord, sysFeatures, termDeposit);

        viewBuilder.addStaticValuesToRoot(root);

        //viewBuilder.createOutputFile(objectMapper, sidebarTemplate, overviewRecord, root);
        viewBuilder.createOutputFile(objectMapper, outputTemplate, overviewRecord, root);*/
        //viewBuilder.createOutputFile(objectMapper, outputTemplate, ftRecord, root);
        //viewBuilder.createOutputFile(objectMapper, outputTemplate, termDeposit, root);

        System.out.println("--------------------------------");

    }

}
