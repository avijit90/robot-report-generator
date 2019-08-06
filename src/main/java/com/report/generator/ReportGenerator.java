package com.report.generator;

//import com.report.generator.service.FileReader;

import com.fasterxml.jackson.databind.ObjectMapper;
import com.report.generator.constants.PercentageType;
import com.report.generator.model.Product;
import freemarker.template.Configuration;
import freemarker.template.Template;
import freemarker.template.TemplateException;
import freemarker.template.TemplateExceptionHandler;

import java.io.File;
import java.io.FileWriter;
import java.io.IOException;
import java.io.Writer;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import static com.report.generator.constants.PercentageType.FAIL_PERCENT;
import static com.report.generator.constants.PercentageType.PASS_PERCENT;

public class ReportGenerator {

    //public FileReader fileReader;

    public static void main(String[] args) throws IOException, TemplateException {
        ReportGenerator reportGenerator = new ReportGenerator();
        reportGenerator.run();
    }

    private void run() throws IOException, TemplateException {
        final ObjectMapper objectMapper = new ObjectMapper();

        // Where do we load the templates from:
        // Some other recommended settings:
        Configuration cfg = new Configuration(Configuration.VERSION_2_3_27);
        cfg.setDirectoryForTemplateLoading(new File("./src/main/template"));
        cfg.setDefaultEncoding("UTF-8");
        cfg.setTemplateExceptionHandler(TemplateExceptionHandler.RETHROW_HANDLER);
        cfg.setLogTemplateExceptions(false);
        cfg.setWrapUncheckedExceptions(true);

        Template temp = cfg.getTemplate("template.ftl");
        //Template temp = cfg.getTemplate("test.ftl");


        Product ftRecord = getFundTransferRecord();
        Product sysFeatures = getSysFeaturesRecord();
        Product termDeposit = getTermDepositRecord();

        Product overviewRecord = new Product();
        overviewRecord.setName("Overview");
        overviewRecord.setStatus("orange");
        overviewRecord.setPass(20D);
        overviewRecord.setFail(7D);
        overviewRecord.setTotal();
        overviewRecord.setFailPercent(getPercentage(overviewRecord, FAIL_PERCENT));
        overviewRecord.setPassPercent(getPercentage(overviewRecord, PASS_PERCENT));
        overviewRecord.setDetailView(sanitize(overviewRecord.getName()) + ".html");
        List<Product> subproductList = new ArrayList<>();
        subproductList.add(ftRecord);
        subproductList.add(sysFeatures);
        subproductList.add(termDeposit);
        overviewRecord.setSubProducts(subproductList);

        createOutputFile(objectMapper, temp, overviewRecord);
        /*createOutputFile(objectMapper, temp, ftRecord);
        createOutputFile(objectMapper, temp, sysFeatures);
        createOutputFile(objectMapper, temp, termDeposit);*/

        System.out.println("--------------------------------");

    }

    private Product getTermDepositRecord() {
        Product termDeposit = new Product();
        termDeposit.setName("Term Deposit");
        termDeposit.setStatus("green");
        termDeposit.setPass(4D);
        termDeposit.setFail(5D);
        termDeposit.setTotal();
        termDeposit.setFailPercent(getPercentage(termDeposit, FAIL_PERCENT));
        termDeposit.setPassPercent(getPercentage(termDeposit, PASS_PERCENT));
        termDeposit.setDetailView(sanitize(termDeposit.getName()) + ".html");
        return termDeposit;
    }

    private Product getSysFeaturesRecord() {
        Product sysFeatures = new Product();
        sysFeatures.setName("System Features");
        sysFeatures.setStatus("green");
        sysFeatures.setPass(10D);
        sysFeatures.setFail(2D);
        sysFeatures.setTotal();
        sysFeatures.setFailPercent(getPercentage(sysFeatures, FAIL_PERCENT));
        sysFeatures.setPassPercent(getPercentage(sysFeatures, PASS_PERCENT));
        sysFeatures.setDetailView(sanitize(sysFeatures.getName()) + ".html");
        return sysFeatures;
    }

    private Product getFundTransferRecord() {
        Product ftRecord = new Product();
        ftRecord.setName("Fund Transfer");
        ftRecord.setStatus("green");
        ftRecord.setPass(6D);
        ftRecord.setFail(0D);
        ftRecord.setTotal();
        ftRecord.setFailPercent(getPercentage(ftRecord, FAIL_PERCENT));
        ftRecord.setPassPercent(getPercentage(ftRecord, PASS_PERCENT));
        ftRecord.setDetailView(sanitize(ftRecord.getName()) + ".html");
        return ftRecord;
    }

    private void createOutputFile(ObjectMapper objectMapper, Template temp, Product overviewRecord) throws IOException, TemplateException {
        Map root = new HashMap();
        root.put("product", overviewRecord);
        root.put("path_to_Report", "./../report.html");
        root.put("path_to_Output", "./../output.xml");
        root.put("path_to_Log", "./../log.html");
        System.out.println("--------------------------------");
        System.out.println(objectMapper.writeValueAsString(root));

       /* Writer consoleWriter = new OutputStreamWriter(System.out);
        temp.process(root, consoleWriter);*/

        String fileName = sanitize(overviewRecord.getName());
        File outputFile = new File("./src/main/resources/output/" + fileName + ".html");
        Writer fileWriter = new FileWriter(outputFile);
        System.out.println("Output File : " + outputFile.getPath());

        try {
            temp.process(root, fileWriter);
        } finally {
            //consoleWriter.close();
            fileWriter.close();
        }
    }

    private String sanitize(String input) {
        return input.replaceAll("\\s+", "_");
    }

    private Double getPercentage(Product product, PercentageType percentageType) {

        Double percentage;
        switch (percentageType) {
            case PASS_PERCENT:
                double passValue = product.getPass() / product.getTotal();
                percentage = passValue * 100;
                break;
            case FAIL_PERCENT:
                double failValue = product.getFail() / product.getTotal();
                percentage = failValue * 100;
                break;
            default:
                percentage = 0D;
        }

        return percentage;
    }

}
