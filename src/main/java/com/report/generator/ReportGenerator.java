package com.report.generator;

import com.fasterxml.jackson.databind.ObjectMapper;
import com.report.generator.model.Product;
import com.report.generator.service.ConfigurationService;
import com.report.generator.service.DynamicBuilder;
import com.report.generator.service.ProductStaticBuilder;
import com.report.generator.service.ViewBuilder;
import freemarker.template.Configuration;
import freemarker.template.Template;
import freemarker.template.TemplateException;
import org.apache.commons.io.FileUtils;
import org.xhtmlrenderer.pdf.ITextRenderer;

import java.io.FileOutputStream;
import java.io.IOException;
import java.io.OutputStream;
import java.util.HashMap;
import java.util.Map;

import static com.report.generator.service.ViewBuilder.OUTPUT_DIRECTORY;

public class ReportGenerator {

    public static void main(String[] args) throws Exception {
        ReportGenerator reportGenerator = new ReportGenerator();
        reportGenerator.run();
    }

    private void run() throws Exception {
        final ObjectMapper objectMapper = new ObjectMapper();
        final ViewBuilder viewBuilder = new ViewBuilder();
        final ConfigurationService configurationService = new ConfigurationService();
        final ProductStaticBuilder productStaticBuilder = new ProductStaticBuilder();
        DynamicBuilder dynamicBuilder = new DynamicBuilder();
        Map root = new HashMap();

        //dynamicBuilder.loadObjectIntoMemory();

        Configuration config = configurationService.getConfiguration();
        Template sidebarTemplate = config.getTemplate("sidebar.ftl");
        Template outputTemplate = config.getTemplate("output.ftl");

        Product ftRecord = productStaticBuilder.getFundTransferRecord();
        //Product sysFeatures = productStaticBuilder.getSysFeaturesRecord();
        Product termDeposit = productStaticBuilder.getTermDepositRecord();
        Product overviewRecord = productStaticBuilder.buildOverview(ftRecord, null, termDeposit);

        viewBuilder.addStaticValuesToRoot(root);

        viewBuilder.createOutputFile(objectMapper, sidebarTemplate, overviewRecord, root);
        viewBuilder.createOutputFile(objectMapper, outputTemplate, overviewRecord, root);
        viewBuilder.createOutputFile(objectMapper, outputTemplate, ftRecord, root);
        viewBuilder.createOutputFile(objectMapper, outputTemplate, termDeposit, root);

        /*OutputStream outputStream = new FileOutputStream(OUTPUT_DIRECTORY +"message.pdf");
        ITextRenderer renderer = new ITextRenderer();
        String overview = "abc";
        renderer.setDocumentFromString(overview);
        renderer.layout();
        renderer.createPDF(outputStream);
        outputStream.close();*/

        /*createOutputFile(objectMapper, outputTemplate, sysFeatures);*/

        System.out.println("--------------------------------");

    }

}
