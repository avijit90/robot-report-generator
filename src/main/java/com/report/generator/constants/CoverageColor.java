package com.report.generator.constants;

import static java.lang.Math.random;
import static java.util.Arrays.stream;

public enum CoverageColor {
    VIOLET(" #633974 ", " #d7bde2"),
    GRAY("#212f3c", "#85929e"),
    BLUE(" #21618c", "#85c1e9"),
    GREEN(" #0e6655", "#73c6b6"),
    YELLOW("#9a7d0a", "#f4d03f"),
    ORANGE(" #873600", "#e59866"),
    SKY(" #2980B9", "#6DD5FA"),
    HARVEY("#1f4037","#99f2c8"),
    BLACK_RED("#333333","#dd1818"),
    BLUE_ORANGE("#40E0D0","#FF8C00"),
    RED(" #7b241c", " #d98880");

    private String firstColor;
    private String secondColor;

    CoverageColor(String firstColor, String secondColor) {
        this.firstColor = firstColor;
        this.secondColor = secondColor;
    }

    public static CoverageColor getRandomColor() {
        CoverageColor[] values = CoverageColor.values();
        return stream(values).skip((int) (values.length * random())).findAny().get();
    }

    public String getFirstColor() {
        return firstColor;
    }

    public String getSecondColor() {
        return secondColor;
    }
}
