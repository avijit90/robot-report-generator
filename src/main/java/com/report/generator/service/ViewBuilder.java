package com.report.generator.service;

import com.fasterxml.jackson.databind.ObjectMapper;
import com.google.common.collect.Sets;
import com.report.generator.constants.CoverageColor;
import com.report.generator.model.Product;
import freemarker.template.Template;
import freemarker.template.TemplateException;
import org.apache.commons.lang3.StringUtils;

import java.io.*;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.text.SimpleDateFormat;
import java.time.Instant;
import java.time.LocalDateTime;
import java.time.ZoneId;
import java.util.Date;
import java.util.List;
import java.util.Map;
import java.util.Set;

import static com.google.common.collect.Lists.newArrayList;
import static com.google.common.collect.Maps.newHashMap;
import static com.report.generator.constants.ApplicationConstants.*;
import static com.report.generator.util.AppUtils.sanitize;
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
        this.outputDirectory = StringUtils.isEmpty(outputDirectory) ? DEFAULT_OUTPUT_DIRECTORY : outputDirectory + "/";
    }

    public Map getRootWithStaticValues() {
        Map root = newHashMap();
        /*root.put("path_to_Report", reportFilePath);
        root.put("path_to_Output", outputFilePath);
        root.put("path_to_Log", logFilePath);*/
        return root;
    }

    public void createOutputFile(ObjectMapper objectMapper, Template template, Product overviewRecord, Map root) throws Exception {

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

        newArrayList(ADDONS_JS_FILE_PATH, BASE_JS_FILE_PATH)
                .stream().forEach(f -> {
            try {
                copyFileToDirectory(getFile(f), getFile(jsDirectory + "/"));
            } catch (IOException e) {
                e.printStackTrace();
            }
        });


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
            long date = oldOutputFile.lastModified();
            Instant instant = Instant.ofEpochMilli(date);
            LocalDateTime localDateTime = LocalDateTime.ofInstant(instant, ZoneId.systemDefault());
            Date dateFromOld = Date.from(instant);
            String dateTimeStamp = new SimpleDateFormat("yyyyMMddHHmm").format(dateFromOld);
            String newFileName = outputDirectory + fileName + UNDERSCORE + dateTimeStamp + HTML;
            oldOutputFile.renameTo(new File(newFileName));
            System.out.println("Old output File renamed to : " + newFileName);
        }
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

    public String getInputDirectory() {
        return inputDirectory;
    }

    public String getOutputDirectory() {
        return outputDirectory;
    }
}
