package com.report.generator.service;

import org.apache.commons.io.FileUtils;

import java.io.File;

import static java.text.MessageFormat.format;
import static org.apache.commons.lang3.ArrayUtils.getLength;
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
            inputDir = args[0];

            if (getLength(args) > 1) {
                outputDir = args[1];
                File output = FileUtils.getFile(outputDir);
                if (!output.isDirectory() && !output.canWrite()) {
                    System.out.println(format("Either the output directory is not present or write " +
                            "permission is not given for the directory={0}", output));
                }
            }
        }

        if (isEmpty(inputDir))
            inputDir = fileService.getInputDirectory();

        if (isEmpty(outputDir))
            outputDir = fileService.getOutputDirectory();
    }

    public String getInputDir() {
        return inputDir;
    }

    public String getOutputDir() {
        return outputDir;
    }
}
