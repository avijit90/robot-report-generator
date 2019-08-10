package com.report.generator.service;

import com.report.generator.model.Product;
import com.report.generator.model.Robot;

import javax.xml.bind.JAXBContext;
import javax.xml.bind.Unmarshaller;
import java.io.File;

import static com.report.generator.constants.ApplicationConstants.OUTPUT_XML;
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

    public Robot loadObjectIntoMemory() {

        File file = readFileFromPath(OUTPUT_XML);

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
