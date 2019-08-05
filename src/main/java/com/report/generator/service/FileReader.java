package com.report.generator.service;

import java.io.File;

import static org.apache.commons.io.FileUtils.getFile;

public class FileReader {


    public File readFileFromPath(String filePath) {
        return getFile(filePath);
    }

}
