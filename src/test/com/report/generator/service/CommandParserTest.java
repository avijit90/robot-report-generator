package com.report.generator.service;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.mockito.runners.MockitoJUnitRunner;

import static org.apache.commons.lang3.ArrayUtils.EMPTY_STRING_ARRAY;
import static org.junit.Assert.assertEquals;

@RunWith(MockitoJUnitRunner.class)
public class CommandParserTest {

    CommandParser unit;

    @Test
    public void givenNoInputArguments_ThenShouldHaveEmptyDirectories() {
        String[] args = EMPTY_STRING_ARRAY;
        unit = new CommandParser(args);

        assertEquals(null, unit.getInputDir());
        assertEquals(null, unit.getOutputDir());
    }

}
