package com.report.generator.service;

import com.report.generator.constants.ExecutionStatus;
import org.junit.After;
import org.junit.Before;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.mockito.runners.MockitoJUnitRunner;

import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;

import static com.report.generator.constants.ExecutionStatus.*;
import static org.junit.Assert.*;

@RunWith(MockitoJUnitRunner.class)
public class XmlInputReaderTest {

    private String errorFileDir = "errorFileDir";

    XmlInputReader unit = new XmlInputReader();

    @Test
    public void givenLocationWhereXmlDoesNotExist_ThenShouldReturnWithError() {

        String incorrectFilePath = "";
        ExecutionStatus executionStatus = unit.readInput(incorrectFilePath);

        assertNotNull(executionStatus);
        assertEquals(OUTPUT_XML_NOT_FOUND_AT_INPUT_DIR, executionStatus);
        assertNull(unit.getRootObject());
    }

    @Before
    public void createNonReadableFile() throws IOException {
        File dir = new File(errorFileDir);
        dir.mkdir();
        File outputFile = new File(errorFileDir + "/" + "output.xml");
        outputFile.createNewFile();
    }

    @Test
    public void givenFilePresentButNotReadable_ThenShouldReturnWithError() {
        ExecutionStatus executionStatus = unit.readInput(errorFileDir);

        assertNotNull(executionStatus);
        assertEquals(ERROR_READING_OUTPUT_XML, executionStatus);
        assertNull(unit.getRootObject());
    }

    @After
    public void deleteNonReadableFile() {
        File dir = new File(errorFileDir);
        File outputFile = new File(errorFileDir + "/" + "output.xml");
        outputFile.delete();
        dir.delete();
    }

    @Before
    public void createValidFile() throws IOException {
        File dir = new File("fileDir");
        dir.mkdir();

        PrintWriter writer = new PrintWriter("fileDir/output.xml", "UTF-8");
        writer.println("<?xml version=\"1.0\" encoding=\"UTF-8\"?>");
        writer.println("<robot generator=\"Robot 3.1.2 (Python 3.7.4 on win32)\" generated=\"20190828 16:33:05.550\" rpa=\"false\">");
        writer.println("</robot>");
        writer.close();
    }

    @Test
    public void givenValidFile_ThenShouldReadSuccessfully() {
        ExecutionStatus executionStatus = unit.readInput("fileDir");

        assertNotNull(executionStatus);
        assertEquals(SUCCESS, executionStatus);
        assertNotNull(unit.getRootObject());
    }

    @After
    public void deleteValidFile() {
        File dir = new File("fileDir");
        File outputFile = new File("fileDir/output.xml");
        outputFile.delete();
        dir.delete();
    }
}
