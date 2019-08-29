package com.report.generator.service;

import com.report.generator.model.robot.Robot;

import javax.xml.bind.JAXBContext;
import javax.xml.bind.Unmarshaller;
import java.io.File;

import static com.report.generator.constants.ApplicationConstants.OUTPUT_XML;
import static java.text.MessageFormat.format;
import static org.apache.commons.io.FileUtils.getFile;

public class XmlInputReader implements InputReader<Robot> {

    public Robot readInput(String filePath) {

        Robot robotObject = null;
        String outputXmlPath = filePath + "/" + OUTPUT_XML;

        File xmlFile = getFile(outputXmlPath);
        if (!xmlFile.exists()) {
            System.out.println(format("ERROR: The input file is not present at location={0}", outputXmlPath));
            System.out.println(outputXmlPath);
            System.exit(500);
        } else if (!xmlFile.canRead()) {
            System.out.println(format("ERROR: Read permission missing for file={0}", outputXmlPath));
            System.out.println(outputXmlPath);
            System.exit(500);
        }

        System.out.println(format("Processing output xml file at location={0}", outputXmlPath));

        try {
            JAXBContext jaxbContext = JAXBContext.newInstance(Robot.class);
            Unmarshaller unmarshaller = jaxbContext.createUnmarshaller();
            robotObject = (Robot) unmarshaller.unmarshal(xmlFile);
            System.out.println("Robot object loaded into memory successfully !");
        } catch (Exception e) {
            System.out.println("ERROR: Unable to read the robot output.xml file.");
            e.printStackTrace();
            System.exit(500);
        }

        return robotObject;
    }
}
