package com.report.generator.service;

import com.report.generator.model.template.TemplateSuite;
import freemarker.template.Template;

import java.io.File;
import java.io.FileWriter;
import java.io.StringWriter;
import java.io.Writer;
import java.util.Map;

import static com.report.generator.util.AppUtils.sanitize;
import static java.text.MessageFormat.format;
import static org.apache.commons.lang3.StringUtils.containsIgnoreCase;

public class ViewBuilder {

    private FileService fileService;

    public ViewBuilder(FileService fileService) {
        this.fileService = fileService;
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

}
