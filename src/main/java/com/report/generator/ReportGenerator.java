package com.report.generator;

import com.fasterxml.jackson.databind.ObjectMapper;
import com.report.generator.model.robot.Robot;
import com.report.generator.service.*;

import static com.report.generator.util.AppUtils.printEndBanner;
import static com.report.generator.util.AppUtils.printStartBanner;

public class ReportGenerator {

    ObjectMapper objectMapper = null;
    ViewBuilder viewBuilder = null;
    CommandParser commandParser = null;
    FileService fileService = null;
    InputReader<Robot> inputReader = null;

    public static void main(String[] args) {
        printStartBanner();
        ReportGenerator reportGenerator = new ReportGenerator();
        reportGenerator.run(args);
        printEndBanner();
    }

    private void run(String[] args) {
        commandParser = new CommandParser(args);
        fileService = new FileService(commandParser);
        viewBuilder = new ViewBuilder(fileService);
        objectMapper = new ObjectMapper();
        inputReader = new XmlInputReader();
        Robot robotRoot = inputReader.readInput(fileService.getInputDir());
        viewBuilder.buildView(robotRoot);
    }

}
