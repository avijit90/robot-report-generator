package com.report.generator.service;

import com.google.common.collect.Sets;
import com.report.generator.constants.CoverageColor;
import com.report.generator.model.Product;
import freemarker.template.Template;

import java.io.*;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
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

    private String outputDirectory;
    private String reportFilePath;
    private String outputFilePath;
    private String logFilePath;

    public ViewBuilder(String inputDirectory, String outputDirectory) {
        this.reportFilePath = inputDirectory + "/" + REPORT_HTML;
        this.outputFilePath = inputDirectory + "/" + OUTPUT_XML;
        this.logFilePath = inputDirectory + "/" + LOG_HTML;
        this.outputDirectory = outputDirectory;
    }

    public void createOutputFile(Template template, Product overviewRecord, Map root) throws Exception {

        root.put("product", overviewRecord);

        if (containsIgnoreCase(template.getName(), "sidebar")) {
            StringWriter stringWriter = new StringWriter();
            template.process(root, stringWriter);
            String sidebarOutput = stringWriter.toString();
            root.put("sidebar", sidebarOutput);
            return;
        }

        String fileName = sanitize(overviewRecord.getName());
        File outputFile = new File(outputDirectory + fileName + ".html");

        Writer fileWriter = new FileWriter(outputFile);
        System.out.println(format("Created file : {0}", outputFile.getPath()));

        try {
            template.process(root, fileWriter);
        } finally {
            fileWriter.close();
        }
    }

    public void createDependentFiles() {

        String jsDirectory = outputDirectory + "/dependencies";
        Path jsPath = Paths.get(jsDirectory);

        try {
            Files.createDirectories(jsPath);

            InputStream cssFileContentStream = this.getClass().getClassLoader().getResourceAsStream(STYLE_SHEET_JS);
            Files.copy(cssFileContentStream, Paths.get(jsDirectory + "/" + APP_CSS), REPLACE_EXISTING);

            InputStream addonsFileContentStream = this.getClass().getClassLoader().getResourceAsStream(ADDONS_JS);
            Files.copy(addonsFileContentStream, Paths.get(jsDirectory + "/" + ADDONS_JS), REPLACE_EXISTING);

            InputStream baseFileContentStream = this.getClass().getClassLoader().getResourceAsStream(BASE_JS);
            Files.copy(baseFileContentStream, Paths.get(jsDirectory + "/" + BASE_JS), REPLACE_EXISTING);
        } catch (Exception e) {
            e.printStackTrace();
            System.exit(500);
        }

    }

    public void copyRobotFiles() {

        String robotFilesDirectory = outputDirectory + "/robotFiles";
        Path robotFilesPath = Paths.get(robotFilesDirectory);
        try {
            Files.createDirectories(robotFilesPath);
        } catch (IOException e) {
            e.printStackTrace();
            System.exit(500);
        }

        newArrayList(reportFilePath, logFilePath, outputFilePath)
                .stream().forEach(f -> {
            try {
                copyFileToDirectory(getFile(f), getFile(robotFilesPath + "/"));
            } catch (IOException e) {
                e.printStackTrace();
                System.exit(500);
            }
        });

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
