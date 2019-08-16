package com.report.generator.service;

import com.fasterxml.jackson.databind.ObjectMapper;
import com.google.common.collect.Sets;
import com.report.generator.constants.CoverageColor;
import com.report.generator.model.Product;
import freemarker.template.Template;
import freemarker.template.TemplateException;

import java.io.*;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.text.SimpleDateFormat;
import java.time.Instant;
import java.util.Date;
import java.util.List;
import java.util.Map;
import java.util.Set;

import static com.google.common.collect.Lists.newArrayList;
import static com.report.generator.constants.ApplicationConstants.*;
import static com.report.generator.util.AppUtils.sanitize;
import static java.nio.file.StandardCopyOption.REPLACE_EXISTING;
import static java.text.MessageFormat.format;
import static org.apache.commons.io.FileUtils.copyFileToDirectory;
import static org.apache.commons.io.FileUtils.getFile;
import static org.apache.commons.lang3.StringUtils.containsIgnoreCase;

public class ViewBuilder {

    private String inputDirectory;
    private String outputDirectory;
    private String reportFilePath;
    private String outputFilePath;
    private String logFilePath;

    public ViewBuilder(String inputDirectory, String outputDirectory) {
        this.inputDirectory = inputDirectory;
        this.reportFilePath = inputDirectory + "/" + REPORT_HTML;
        this.outputFilePath = inputDirectory + "/" + OUTPUT_XML;
        this.logFilePath = inputDirectory + "/" + LOG_HTML;
        this.outputDirectory = outputDirectory;
    }

    public void createOutputFile(ObjectMapper objectMapper, Template template, Product overviewRecord, Map root) throws Exception {

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
        File outputFile = new File(outputDirectory + fileName + ".html");

        checkAndBackupOldFile(fileName, outputFile);

        Writer fileWriter = new FileWriter(outputFile);
        System.out.println("Output File : " + outputFile.getPath());

        createDependentJSFiles();
        copyRobotFiles();

        try {
            template.process(root, fileWriter);
        } finally {
            fileWriter.close();
        }
    }

    private void createDependentJSFiles() throws IOException {

        String jsDirectory = outputDirectory + "/dependencies";
        Path jsPath = Paths.get(jsDirectory);
        Files.createDirectories(jsPath);

        InputStream resourceAsStream = this.getClass().getClassLoader().getResourceAsStream(ADDONS_JS);
        Files.copy(resourceAsStream, Paths.get(jsDirectory + "/" + ADDONS_JS), REPLACE_EXISTING);

        InputStream abc = this.getClass().getClassLoader().getResourceAsStream(BASE_JS);
        Files.copy(abc, Paths.get(jsDirectory + "/" + BASE_JS), REPLACE_EXISTING);

    }

    private void copyRobotFiles() throws IOException {

        String robotFilesDirectory = outputDirectory + "/robotFiles";
        Path robotFilesPath = Paths.get(robotFilesDirectory);
        Files.createDirectories(robotFilesPath);

        newArrayList(reportFilePath, logFilePath, outputFilePath)
                .stream().forEach(f -> {
            try {
                copyFileToDirectory(getFile(f), getFile(robotFilesPath + "/"));
            } catch (IOException e) {
                e.printStackTrace();
            }
        });

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
            File oldOutputFile = new File(outputDirectory + fileName + ".html");
            String dateTimeStamp = getLastModifiedDate(oldOutputFile);
            String newFileName = outputDirectory + fileName + UNDERSCORE + dateTimeStamp + HTML_FILE_EXTENSION;
            oldOutputFile.renameTo(new File(newFileName));
            System.out.println("Old output File renamed to : " + newFileName);
        }
    }

    private String getLastModifiedDate(File file) {
        long date = file.lastModified();
        Instant instant = Instant.ofEpochMilli(date);
        Date dateFromOld = Date.from(instant);
        return new SimpleDateFormat("yyyyMMddHHmm").format(dateFromOld);
    }

    public void populateColors(List<Product> products) {

        Set<CoverageColor> coverageColors = Sets.newHashSet();

        if (products.size() > CoverageColor.values().length) {
            System.out.println("ERROR : Cannot find coverage colors !!!");
            System.out.println(format("products.size={0} and CoverageColor.values.length={1}", products.size(), CoverageColor.values().length));
            System.exit(500);
        }

        while (coverageColors.size() != products.size())
            coverageColors.add(CoverageColor.getRandomColor());

        products.stream().forEach(p -> {
            CoverageColor selectedColor = coverageColors.iterator().next();
            p.setFirstCoverageColor(selectedColor.getFirstColor());
            p.setSecondCoverageColor(selectedColor.getSecondColor());
            coverageColors.remove(selectedColor);
        });
    }

}
