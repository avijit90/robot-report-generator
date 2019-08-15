package com.report.generator.service;

import com.report.generator.model.Product;
import com.report.generator.model.Robot;
import org.apache.commons.lang3.StringUtils;

import javax.xml.bind.JAXBContext;
import javax.xml.bind.Unmarshaller;
import java.io.File;
import java.text.MessageFormat;

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

    public Robot loadObjectIntoMemory(String filePath) {

        if(StringUtils.isEmpty(filePath)){
            System.out.println(format("output xml not specified, picking up default value={0}", OUTPUT_XML));
            filePath = OUTPUT_XML;
        } else {
            System.out.println(format("Processing user specified output xml={0}", filePath));
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
