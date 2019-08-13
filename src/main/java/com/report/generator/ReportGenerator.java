package com.report.generator;

import com.fasterxml.jackson.databind.ObjectMapper;
import com.google.common.collect.Lists;
import com.report.generator.model.Product;
import com.report.generator.model.Robot;
import com.report.generator.service.*;
import freemarker.template.Configuration;
import freemarker.template.Template;

import java.util.HashMap;
import java.util.Map;

public class ReportGenerator {

    public static void main(String[] args) throws Exception {
        ReportGenerator reportGenerator = new ReportGenerator();
        reportGenerator.run();
    }

    private void run() throws Exception {

        final ObjectMapper objectMapper = new ObjectMapper();
        final ViewBuilder viewBuilder = new ViewBuilder();
        final ConfigurationService configurationService = new ConfigurationService();
        final ProductBuilder productBuilder = new ProductTestLoader();
        Map root = new HashMap();

        //Robot robotRoot = ((DynamicBuilder) productBuilder).loadObjectIntoMemory();

        Configuration config = configurationService.getConfiguration();
        //Template sidebarTemplate = config.getTemplate("sidebar.ftl");
        Template outputTemplate = config.getTemplate("/advanced/index.ftl");
        //Template outputTemplate = config.getTemplate("/test.ftl");

        Product ftRecord = productBuilder.getFundTransferRecord();
        Product termDeposit = productBuilder.getTermDepositRecord();
        Product sysFeatures = productBuilder.getSysFeaturesRecord();
        Product overviewRecord = productBuilder.buildOverview(ftRecord, sysFeatures, termDeposit);

        viewBuilder.addStaticValuesToRoot(root);

        //viewBuilder.createOutputFile(objectMapper, sidebarTemplate, overviewRecord, root);
        viewBuilder.createOutputFile(objectMapper, outputTemplate, overviewRecord, root);
        //viewBuilder.createOutputFile(objectMapper, outputTemplate, ftRecord, root);
        //viewBuilder.createOutputFile(objectMapper, outputTemplate, termDeposit, root);

        System.out.println("--------------------------------");

    }

}
