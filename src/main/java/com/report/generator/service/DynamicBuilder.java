package com.report.generator.service;

import com.fasterxml.jackson.databind.ObjectMapper;
import com.fasterxml.jackson.dataformat.xml.XmlMapper;
import com.report.generator.model.Product;
import com.report.generator.model.robot.Robot;
import org.w3c.dom.Document;

import javax.xml.parsers.DocumentBuilder;
import javax.xml.parsers.DocumentBuilderFactory;
import java.io.File;
import java.io.IOException;

import static org.apache.commons.io.FileUtils.getFile;

public class DynamicBuilder implements ProductBuilder {

    public static final String OUTPUT_XML = "./src/main/resources/output.xml";

    @Override
    public Product buildOverview(Product ftRecord, Product sysFeatures, Product termDeposit) {
        return null;
    }

    @Override
    public Product getTermDepositRecord() {
        return null;
    }

    @Override
    public Product getSysFeaturesRecord() {
        return null;
    }

    @Override
    public Product getFundTransferRecord() {
        return null;
    }

    private File readFileFromPath(String filePath) {
        return getFile(filePath);
    }

    public Robot loadObjectIntoMemory() {
        File file = readFileFromPath(OUTPUT_XML);

        try {
//            ObjectMapper xmlMapper = new XmlMapper();
//            Robot robot = xmlMapper.readValue(file, Robot.class);

            DocumentBuilderFactory dbFactory = DocumentBuilderFactory.newInstance();
            DocumentBuilder docBuilder = dbFactory.newDocumentBuilder();
            Document xmlDom = docBuilder.parse(file);
            String xmlAsString = xmlDom.toString(); // this will not print what you want
            System.out.println("XML as String using DOM Parser : ");
            System.out.println(xmlAsString);

            //return robot;
            return null;
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }

    }
}
