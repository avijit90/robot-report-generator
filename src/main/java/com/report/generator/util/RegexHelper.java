package com.report.generator.util;

import java.util.ArrayList;
import java.util.List;
import java.util.regex.Pattern;
import java.util.stream.IntStream;

public class RegexHelper {

    public static final String REGEX = "s\\d+";

    public static String getRegexToMatch(String regex, int count, boolean decreaseCount) {
        List<String> regexList = new ArrayList<>();
        IntStream.range(0, decreaseCount ? count - 1 : count).forEach(i -> regexList.add(i, regex));
        String stringToMatch = String.join("-", regexList);
        return stringToMatch;
    }

    public static long getOccurrenceOfPatternForString(String stringToCheck, String patternString) {
        final Pattern pattern = Pattern.compile(patternString);
        return pattern.splitAsStream(stringToCheck).count();
    }
}
