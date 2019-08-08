package com.report.generator.service;

import com.fasterxml.jackson.databind.ObjectMapper;
import com.report.generator.model.Product;
import freemarker.template.Template;
import freemarker.template.TemplateException;

import java.io.*;
import java.text.SimpleDateFormat;
import java.time.Instant;
import java.time.LocalDateTime;
import java.time.ZoneId;
import java.util.Date;
import java.util.Map;

import static com.report.generator.util.AppUtils.sanitize;
import static org.apache.commons.lang3.StringUtils.containsIgnoreCase;

public class ViewBuilder {

    public static final String HTML = ".html";
    public static final String UNDERSCORE = "_";
    public static final String OUTPUT_DIRECTORY = "./src/main/resources/output/";

    public void addStaticValuesToRoot(Map root) {
        root.put("path_to_Report", "./../report.html");
        root.put("path_to_Output", "./../output.xml");
        root.put("path_to_Log", "./../log.html");
    }

    public void createOutputFile(ObjectMapper objectMapper, Template template, Product overviewRecord, Map root) throws IOException, TemplateException {

        if (root.containsKey("product"))
            root.remove("product");
        root.put("product", overviewRecord);

        if (containsIgnoreCase(template.getName(), "sidebar")) {
            StringWriter stringWriter = new StringWriter();
            template.process(root, stringWriter);
            String sidebarOutput = stringWriter.toString();
            root.put("sidebar", sidebarOutput);
            return;
        }

        System.out.println("--------------------------------");
        System.out.println(objectMapper.writeValueAsString(root));

        String fileName = sanitize(overviewRecord.getName());
        File outputFile = new File(OUTPUT_DIRECTORY + fileName + ".html");

        checkAndBackupOldFile(fileName, outputFile);

        Writer fileWriter = new FileWriter(outputFile);
        System.out.println("Output File : " + outputFile.getPath());

        try {
            template.process(root, fileWriter);
        } finally {
            fileWriter.close();
        }
    }

    private String getTemplateOutput(Template template, Map root) throws TemplateException, IOException {
        StringWriter stringWriter = new StringWriter();
        template.process(root, stringWriter);
        String sidebarOutput = stringWriter.toString();
        return sidebarOutput;
    }

    private void writeToConsole(Template template, Map root) throws TemplateException, IOException {
        Writer consoleWriter = new OutputStreamWriter(System.out);
        template.process(root, consoleWriter);
        consoleWriter.close();
    }

    private void checkAndBackupOldFile(String fileName, File outputFile) {
        if (outputFile.exists()) {
            File oldOutputFile = new File(OUTPUT_DIRECTORY + fileName + ".html");
            long date = oldOutputFile.lastModified();
            Instant instant = Instant.ofEpochMilli(date);
            LocalDateTime localDateTime = LocalDateTime.ofInstant(instant, ZoneId.systemDefault());
            Date dateFromOld = Date.from(instant);
            String dateTimeStamp = new SimpleDateFormat("yyyyMMddHHmm").format(dateFromOld);
            String newFileName = OUTPUT_DIRECTORY + fileName + UNDERSCORE + dateTimeStamp + HTML;
            oldOutputFile.renameTo(new File(newFileName));
            System.out.println("Old output File renamed to : " + newFileName);
        }
    }

}
