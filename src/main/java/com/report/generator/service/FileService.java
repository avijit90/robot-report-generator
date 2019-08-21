package com.report.generator.service;

import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.text.SimpleDateFormat;
import java.time.Instant;
import java.util.Date;

import static com.google.common.collect.Lists.newArrayList;
import static com.report.generator.constants.ApplicationConstants.*;
import static java.nio.file.StandardCopyOption.REPLACE_EXISTING;
import static java.text.MessageFormat.format;
import static org.apache.commons.io.FileUtils.copyFileToDirectory;
import static org.apache.commons.io.FileUtils.getFile;
import static org.apache.commons.lang3.StringUtils.isEmpty;

public class FileService {

    private String inputDir;
    private String outputDir;
    private String reportFilePath;
    private String outputFilePath;
    private String logFilePath;

    public FileService(InputParser inputParser) {
        processInputParser(inputParser);
        populateRobotFilesPath();
    }

    private void processInputParser(InputParser inputParser) {
        inputDir = isEmpty(inputParser.getInputDir()) ? getDefaultInputDirectory() : inputParser.getInputDir();
        outputDir = isEmpty(inputParser.getOutputDir()) ? getDefaultOutputDirectory() : inputParser.getOutputDir();
    }

    private void populateRobotFilesPath() {
        reportFilePath = inputDir + "/" + REPORT_HTML;
        outputFilePath = inputDir + "/" + OUTPUT_XML;
        logFilePath = inputDir + "/" + LOG_HTML;
    }

    private String getDefaultInputDirectory() {
        String executionDirectory = new File(".").getAbsoluteFile().getParent();
        File directory = new File(executionDirectory);
        if (!directory.exists() || !directory.canRead()) {
            System.out.println(format("Default input directory does not exist or read permission is missing for dir={0}", executionDirectory));
        } else {
            System.out.println(format("Input dir not specified, designating inputDir={0}", executionDirectory));
        }

        return executionDirectory;
    }

    private String getDefaultOutputDirectory() {
        String executionDirectory = new File(".").getAbsoluteFile().getParent();
        String output = "robot_report";
        String outputDir = executionDirectory + "/" + output;
        File directory = new File(outputDir);
        if (!directory.exists()) {
            directory.mkdir();
            System.out.println(format("Writing results to directory={0}", directory));
        } else {
            String renamedDir = output + "_old_" + getLastModifiedDate(directory);
            System.out.println(format("robot_report directory found in given location, renaming dir to name={0}", renamedDir));
            directory.renameTo(new File(renamedDir));
            System.out.println(format("Writing results to directory={0}", directory));
            new File(outputDir).mkdir();
        }

        return outputDir + "/";
    }

    private String getLastModifiedDate(File file) {
        long date = file.lastModified();
        Instant instant = Instant.ofEpochMilli(date);
        Date dateFromOld = Date.from(instant);
        return new SimpleDateFormat("yyyyMMddHHmm").format(dateFromOld);
    }

    public void createDependentFiles() {

        String jsDirectory = outputDir + "/dependencies";
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

        String robotFilesDirectory = outputDir + "/robotFiles";
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


    public String getInputDir() {
        return inputDir;
    }

    public String getOutputDir() {
        return outputDir;
    }
}
