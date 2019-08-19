package com.report.generator.service;

import java.io.File;
import java.text.SimpleDateFormat;
import java.time.Instant;
import java.util.Date;

import static java.text.MessageFormat.format;
import static org.apache.commons.io.FileUtils.getFile;

public class FileService {


    public File readFileFromPath(String filePath) {
        return getFile(filePath);
    }

    public String getDefaultInputDirectory() {
        String executionDirectory = new File(".").getAbsoluteFile().getParent();
        File directory = new File(executionDirectory);
        if (!directory.exists() || !directory.canRead()) {
            System.out.println(format("Default input directory does not exist or read permission is missing for dir={0}", executionDirectory));
        } else {
            System.out.println(format("Input dir not specified, designating inputDir={0}", executionDirectory));
        }

        return executionDirectory;
    }

    public String getDefaultOutputDirectory() {
        String executionDirectory = new File(".").getAbsoluteFile().getParent();
        String output = "robot_report";
        String outputDir = executionDirectory + "/" + output;
        File directory = new File(outputDir);
        if (!directory.exists()) {
            directory.mkdir();
            System.out.println(format("Writing results to directory={0}", directory));
        } else {
            String renamedDir = output + "_old_" + getLastModifiedDate(directory);
            System.out.println(format("robot_report directory found in given location, renaming dir to name={0}", renamedDir));
            directory.renameTo(new File(renamedDir));
            System.out.println(format("Writing results to directory={0}", directory));
            new File(outputDir).mkdir();
        }

        return outputDir + "/";
    }

    private String getLastModifiedDate(File file) {
        long date = file.lastModified();
        Instant instant = Instant.ofEpochMilli(date);
        Date dateFromOld = Date.from(instant);
        return new SimpleDateFormat("yyyyMMddHHmm").format(dateFromOld);
    }

}
