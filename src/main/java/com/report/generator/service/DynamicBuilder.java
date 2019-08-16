package com.report.generator.service;

import com.report.generator.model.Product;
import com.report.generator.model.Robot;
import org.apache.commons.io.FileUtils;

import javax.xml.bind.JAXBContext;
import javax.xml.bind.Unmarshaller;
import java.io.File;

import static com.report.generator.constants.ApplicationConstants.OUTPUT_XML;
import static java.text.MessageFormat.format;
import static org.apache.commons.io.FileUtils.getFile;

public class DynamicBuilder implements ProductBuilder {

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

    public Robot readRobotInput(String filePath) {

        filePath = filePath + "/" + OUTPUT_XML;

        File xmlFile = FileUtils.getFile(filePath);
        if (!xmlFile.exists() || !xmlFile.canRead()) {
            System.out.println("Either the input file is not present or read-file permission is not given for file :");
            System.out.println(filePath);
        } else {
            System.out.println(format("Processing output xml file at location={0}", filePath));
        }

        File file = readFileFromPath(filePath);

        try {
            JAXBContext jaxbContext = JAXBContext.newInstance(Robot.class);
            Unmarshaller unmarshaller = jaxbContext.createUnmarshaller();
            return (Robot) unmarshaller.unmarshal(file);
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }

    }
}
