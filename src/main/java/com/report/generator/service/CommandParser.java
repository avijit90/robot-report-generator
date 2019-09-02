package com.report.generator.service;

import com.report.generator.constants.ExecutionStatus;
import org.apache.commons.collections4.CollectionUtils;
import org.apache.commons.io.FileUtils;

import java.io.File;
import java.util.List;
import java.util.Optional;

import static com.report.generator.constants.ExecutionStatus.*;
import static java.text.MessageFormat.format;
import static java.util.Arrays.stream;
import static java.util.stream.Collectors.toList;
import static org.apache.commons.lang3.ArrayUtils.isNotEmpty;

public class CommandParser {

    private String[] args;
    private String inputDir;
    private String outputDir;

    public CommandParser(String[] args) {
        this.args = args;
    }

    public ExecutionStatus processUserArgs() {

        if (isNotEmpty(args)) {


            Optional<String> inputArg = stream(args)
                    .filter(arg -> arg.startsWith("input=")).findFirst();
            if (inputArg.isPresent()) {
                String[] inputArray = inputArg.get().split("input=");
                inputDir = inputArray.length > 1 ? inputArray[1] : null;
            }

            Optional<String> outputArg = stream(args)
                    .filter(arg -> arg.startsWith("output=")).findFirst();
            if (outputArg.isPresent()) {
                String[] outputArray = outputArg.get().split("output=");
                outputDir = outputArray.length > 1 ? outputArray[1] : null;
                File output = FileUtils.getFile(outputDir);
                if (!output.isDirectory() && !output.canWrite()) {
                    System.out.println(format("Either the output directory is not present or write " +
                            "permission is not given for the directory={0}", output));
                    return INCORRECT_OUTPUT_DIR;
                }
            }

            List<String> unrecognizedInputs = stream(args)
                    .filter(arg -> !(arg.startsWith("input=") || arg.startsWith("output=")))
                    .collect(toList());
            if (CollectionUtils.isNotEmpty(unrecognizedInputs)) {
                unrecognizedInputs.stream().forEach(input ->
                        System.out.println(format("ERROR: entered program argument={0} do not match the expected " +
                                "arguments.", input)));
                System.out.println("ERROR: Please check your input, input arguments can either be in the " +
                        "form input=<path_to_output_xml_dir> or output=<path_to_output_dir>");
                return UNRECOGNIZED_INPUT;
            }

        } else {
            System.out.println("Additional input params not specified, falling back to default " +
                    "inputDir & outputDir values");
        }

        return SUCCESS;
    }

    public String getInputDir() {
        return inputDir;
    }

    public String getOutputDir() {
        return outputDir;
    }
}
