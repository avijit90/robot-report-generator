package com.report.generator.constants;

import static java.lang.Math.random;
import static java.util.Arrays.stream;

public enum CoverageColor {

    COLOR1("#e53935"),
    COLOR14("#ff9800"),
    COLOR8("#009688"),
    COLOR5("#3f51b5"),
    COLOR17("#9e9e9e"),
    COLOR9("#4caf50"),
    COLOR10("#8bc34a"),
    COLOR2("#e91e63"),
    COLOR18("#607d8b"),
    COLOR3("#9c27b0"),
    COLOR11("#cddc39"),
    COLOR6("#2196f3"),
    COLOR15("#ff5722"),
    COLOR12("#ffeb3b"),
    COLOR13("#ffc107"),
    COLOR7("#00bcd4"),
    COLOR16("#795548"),
    COLOR4("#673ab7"),
    COLOR19("#000000");


    private String hexColor;

    CoverageColor(String hexColor) {
        this.hexColor = hexColor;
    }

    public static CoverageColor getRandomColor() {
        CoverageColor[] values = CoverageColor.values();
        return stream(values).skip((int) (values.length * random())).findAny().get();
    }

    public String getHexValue() {
        return hexColor;
    }

}
