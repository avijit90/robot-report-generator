package com.report.generator.constants;

import static java.lang.Math.random;
import static java.util.Arrays.stream;

public enum ProgressBarStyle {

    YELLOW("#fed713"),
    BLUE("#198ae3"),
    PURPLE("#b66dff"),
    GREEN("#1bcfb4"),
    BLUE_DARK("#3e4b5b");

    private String styleClassName;

    ProgressBarStyle(String styleClassName) {
        this.styleClassName = styleClassName;
    }

    public String getStyleClassName() {
        return styleClassName;
    }

    public static ProgressBarStyle getRandomStyle() {
        ProgressBarStyle[] values = ProgressBarStyle.values();
        return stream(values).skip((int) (values.length * random())).findAny().get();
    }
}
