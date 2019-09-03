package com.report.generator.service;

import com.report.generator.constants.ExecutionStatus;
import com.report.generator.model.robot.Robot;

import javax.xml.bind.JAXBContext;
import javax.xml.bind.Unmarshaller;
import java.io.File;

import static com.report.generator.constants.ApplicationConstants.OUTPUT_XML;
import static com.report.generator.constants.ExecutionStatus.*;
import static java.text.MessageFormat.format;
import static org.apache.commons.io.FileUtils.getFile;

public class XmlInputReader implements InputReader<Robot> {

    private Robot rootObject;

    public ExecutionStatus readInput(String filePath) {

        String outputXmlPath = filePath + "/" + OUTPUT_XML;

        File xmlFile = getFile(outputXmlPath);
        if (!xmlFile.exists()) {
            System.out.println(format("ERROR: The input file is not present at location={0}", outputXmlPath));
            System.out.println(outputXmlPath);
            return OUTPUT_XML_NOT_FOUND_AT_INPUT_DIR;
        } else if (!xmlFile.canRead()) {
            System.out.println(format("ERROR: Read permission missing for file={0}", outputXmlPath));
            System.out.println(outputXmlPath);
            return READ_PERMISSION_MISSING_FOR_OUTPUT_XML;
        }

        System.out.println(format("Processing output xml file at location={0}", outputXmlPath));

        try {
            JAXBContext jaxbContext = JAXBContext.newInstance(Robot.class);
            Unmarshaller unmarshaller = jaxbContext.createUnmarshaller();
            rootObject = (Robot) unmarshaller.unmarshal(xmlFile);
            System.out.println("Robot object loaded into memory successfully !");
        } catch (Exception e) {
            System.out.println("ERROR: Unable to read the robot output.xml file.");
            e.printStackTrace();
            return ERROR_READING_OUTPUT_XML;
        }

        return SUCCESS;
    }

    public Robot getRootObject() {
        return rootObject;
    }
    
}
