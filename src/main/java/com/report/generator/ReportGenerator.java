package com.report.generator;

//import com.report.generator.service.FileReader;

import java.io.BufferedReader;
import java.io.File;
import java.io.FileReader;

public class ReportGenerator {

    //public FileReader fileReader;

    public static void main(String[] args) {
        ReportGenerator reportGenerator = new ReportGenerator();
        reportGenerator.run();
    }

    private void run() {

        //fileReader = new FileReader();
        System.out.println(new File("").getAbsolutePath());
        //File file = FileUtils.getFile("./src/main/resources/output.xml");
        //System.out.println(file.p);


        try (BufferedReader br = new BufferedReader(new FileReader("./src/main/resources/output.xml"))) {
            String line = null;
            while ((line = br.readLine()) != null) {
                System.out.println(line);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }

    }

}
