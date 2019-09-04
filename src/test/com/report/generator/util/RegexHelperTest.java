package com.report.generator.util;

import org.junit.Assert;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.mockito.runners.MockitoJUnitRunner;

import static java.text.MessageFormat.format;

@RunWith(MockitoJUnitRunner.class)
public class RegexHelperTest {

    @Test
    public void givenPattern_ThenShouldReturnCountOfOccurrence() {

        String pattern = "abc";
        String stringToCheck = "{0} Hello {1} World {2}";

        long occurrenceOfPatternForString = RegexHelper.getOccurrenceOfPatternForString(format(stringToCheck, pattern, pattern, pattern), pattern);

        Assert.assertEquals(3, occurrenceOfPatternForString);

    }
}
