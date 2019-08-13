package com.report.generator.constants;

import static java.lang.Math.random;
import static java.util.Arrays.stream;

public enum ProgressBarStyle {

    WARNING("bg-warning"),
    INFO("bg-info"),
    PRIMARY("bg-primary"),
    DARK("bg-dark");

    private String styleClassName;

    ProgressBarStyle(String styleClassName) {
        this.styleClassName = styleClassName;
    }

    public String getStyleClassName() {
        return styleClassName;
    }

    public static String getRandomStyle() {
        ProgressBarStyle[] values = ProgressBarStyle.values();
        return stream(values).skip((int) (values.length * random())).findAny().get().getStyleClassName();
    }
}
