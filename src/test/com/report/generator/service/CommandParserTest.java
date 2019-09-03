package com.report.generator.service;

import com.report.generator.constants.ExecutionStatus;
import org.junit.AfterClass;
import org.junit.BeforeClass;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.mockito.runners.MockitoJUnitRunner;

import java.io.IOException;
import java.nio.file.Path;
import java.nio.file.Paths;

import static com.report.generator.constants.ExecutionStatus.*;
import static java.nio.file.Files.createDirectory;
import static java.nio.file.Files.deleteIfExists;
import static org.apache.commons.lang3.ArrayUtils.EMPTY_STRING_ARRAY;
import static org.junit.Assert.assertEquals;

@RunWith(MockitoJUnitRunner.class)
public class CommandParserTest {

    public static final String INPUT = "input=";
    public static final String OUTPUT = "output=";
    private static final String TEMP_DIR_NAME = "garbage";
    static Path temp_dir = Paths.get(TEMP_DIR_NAME);
    CommandParser unit;

    @BeforeClass
    public static void createTempDir() {
        try {
            System.out.println("---- SETUP Test ------");
            createDirectory(temp_dir);
            System.out.println("Temp dir created.");
        } catch (IOException e) {
            System.out.println("Temp already present.");
        } finally {
            System.out.println("----------------------");
        }
    }

    @AfterClass
    public static void removeTempDir() {
        try {
            System.out.println("---- TEARDOWN Test ------");
            deleteIfExists(temp_dir);
            System.out.println("Temp dir deleted.");
        } catch (IOException e) {
            System.out.println("Unable to delete temp_dir=" + temp_dir.toUri());
        } finally {
            System.out.println("----------------------");
        }
    }

    @Test
    public void givenNoInputArguments_ThenShouldHaveEmptyDirectories() {
        String[] args = EMPTY_STRING_ARRAY;
        unit = new CommandParser(args);
        ExecutionStatus actualResponse = unit.processUserArgs();

        assertEquals(SUCCESS, actualResponse);
        assertEquals(null, unit.getInputDir());
        assertEquals(null, unit.getOutputDir());
    }

    @Test
    public void givenInputArg_ThenShouldSetInputDir() {
        String inputDirValue = "abc";
        String[] args = {INPUT + inputDirValue};
        unit = new CommandParser(args);
        ExecutionStatus actualResponse = unit.processUserArgs();

        assertEquals(SUCCESS, actualResponse);
        assertEquals(inputDirValue, unit.getInputDir());
        assertEquals(null, unit.getOutputDir());
    }

    @Test
    public void givenOutputArg_ThenShouldSetOutputDir() {
        String[] args = {OUTPUT + TEMP_DIR_NAME};
        unit = new CommandParser(args);
        ExecutionStatus actualResponse = unit.processUserArgs();

        assertEquals(SUCCESS, actualResponse);
        assertEquals(null, unit.getInputDir());
        assertEquals(TEMP_DIR_NAME, unit.getOutputDir());
    }

    @Test
    public void givenBothOutputAndInputArg_ThenShouldSetAllDirs() {
        String inputDirValue = "in";
        String[] args = {INPUT + inputDirValue, OUTPUT + TEMP_DIR_NAME};
        unit = new CommandParser(args);
        ExecutionStatus actualResponse = unit.processUserArgs();

        assertEquals(SUCCESS, actualResponse);
        assertEquals(inputDirValue, unit.getInputDir());
        assertEquals(TEMP_DIR_NAME, unit.getOutputDir());
    }

    @Test
    public void givenRandomInput_ThenShouldReturnWithUnrecognizedInputStatus() {
        String[] args = {"unrecognized=input"};
        unit = new CommandParser(args);
        ExecutionStatus actualResponse = unit.processUserArgs();

        assertEquals(UNRECOGNIZED_INPUT, actualResponse);
        assertEquals(null, unit.getInputDir());
        assertEquals(null, unit.getOutputDir());
    }

    @Test
    public void givenInvalidOutputDirValue_ThenShouldFailExecution() {
        String invalidOutputArg = "hello";
        String inputDirValue = "in";
        String[] args = {INPUT + inputDirValue, OUTPUT + invalidOutputArg};
        unit = new CommandParser(args);
        ExecutionStatus actualResponse = unit.processUserArgs();

        assertEquals(INCORRECT_OUTPUT_DIR, actualResponse);
        assertEquals(inputDirValue, unit.getInputDir());
        assertEquals(null, unit.getOutputDir());
    }


    @Test
    public void givenInvalidInputArg_ThenShouldFailExecution() {
        String[] args = {INPUT};
        unit = new CommandParser(args);
        ExecutionStatus actualResponse = unit.processUserArgs();

        assertEquals(UNABLE_TO_DETERMINE_INPUT_DIR, actualResponse);
        assertEquals(null, unit.getInputDir());
        assertEquals(null, unit.getOutputDir());
    }

    @Test
    public void givenInvalidOutputArg_ThenShouldFailExecution() {
        String[] args = {OUTPUT};
        unit = new CommandParser(args);
        ExecutionStatus actualResponse = unit.processUserArgs();

        assertEquals(UNABLE_TO_DETERMINE_OUTPUT_DIR, actualResponse);
        assertEquals(null, unit.getInputDir());
        assertEquals(null, unit.getOutputDir());
    }

}
