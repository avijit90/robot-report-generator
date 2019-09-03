package com.report.generator;

import com.fasterxml.jackson.databind.ObjectMapper;
import com.report.generator.constants.ExecutionStatus;
import com.report.generator.service.CommandParser;
import com.report.generator.service.FileService;
import com.report.generator.service.ViewBuilder;
import com.report.generator.service.XmlInputReader;

import static com.report.generator.constants.ExecutionStatus.SUCCESS;
import static com.report.generator.util.AppUtils.printEndBanner;
import static com.report.generator.util.AppUtils.printStartBanner;
import static java.lang.System.exit;

public class ReportGenerator {

    ObjectMapper objectMapper = null;
    ViewBuilder viewBuilder = null;
    CommandParser commandParser = null;
    FileService fileService = null;
    XmlInputReader inputReader = null;

    public static void main(String[] args) {
        printStartBanner();
        ReportGenerator reportGenerator = new ReportGenerator();
        reportGenerator.run(args);
        printEndBanner();
    }

    private void run(String[] args) {
        commandParser = new CommandParser(args);
        ExecutionStatus commandParserExecutionStatus = commandParser.processUserArgs();
        checkExecutionStatus(commandParserExecutionStatus);

        fileService = new FileService(commandParser);
        viewBuilder = new ViewBuilder(fileService);
        objectMapper = new ObjectMapper();
        inputReader = new XmlInputReader();

        ExecutionStatus inputReaderExecutionStatus = inputReader.readInput(fileService.getInputDir());
        checkExecutionStatus(inputReaderExecutionStatus);

        viewBuilder.buildView(inputReader.getRootObject());
    }

    private void checkExecutionStatus(ExecutionStatus executionStatus) {
        if (!SUCCESS.equals(executionStatus))
            exit(executionStatus.getStatusCode());
    }

}
