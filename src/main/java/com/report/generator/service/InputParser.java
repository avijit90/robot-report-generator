package com.report.generator.service;

import org.apache.commons.io.FileUtils;

import java.io.File;

import static java.text.MessageFormat.format;
import static java.util.Arrays.stream;
import static org.apache.commons.lang3.ArrayUtils.isNotEmpty;
import static org.apache.commons.lang3.StringUtils.isEmpty;

public class InputParser {

    private String[] args;
    private String inputDir;
    private String outputDir;
    private FileService fileService;

    public InputParser(String[] args, FileService fileService) {
        this.args = args;
        this.fileService = fileService;
        processUserArgs();
    }

    public InputParser(String[] args) {
        this.args = args;
    }

    private void processUserArgs() {

        if (isNotEmpty(args)) {

            stream(args).forEach(arg -> {
                if (arg.startsWith("input=")) {
                    String[] inputArray = arg.split("input=");
                    inputDir = inputArray.length > 1 ? inputArray[1] : null;
                } else if (arg.startsWith("output=")) {
                    String[] outputArray = arg.split("output=");
                    outputDir = outputArray.length > 1 ? outputArray[1] : null;
                    File output = FileUtils.getFile(outputDir);
                    if (!output.isDirectory() && !output.canWrite()) {
                        System.out.println(format("Either the output directory is not present or write " +
                                "permission is not given for the directory={0}", output));
                    }
                }
            });

        }

        if (isEmpty(inputDir))
            inputDir = fileService.getDefaultInputDirectory();

        if (isEmpty(outputDir))
            outputDir = fileService.getDefaultOutputDirectory();
    }

    public String getInputDir() {
        return inputDir;
    }

    public String getOutputDir() {
        return outputDir;
    }
}
