package com.report.generator.constants;

public enum StatusColor {
    ORANGE("orange"),
    RED("red"),
    GREEN("green");

    private String color;

    StatusColor(String color) {
        this.color = color;
    }

    public String getColor() {
        return color;
    }

    public static StatusColor getStatusFromPercentage(Double percentage) {
        if (percentage >= 0 && percentage <= 50)
            return RED;
        else if (percentage > 50 && percentage <= 70)
            return ORANGE;
        else if (percentage > 70)
            return GREEN;

        return null;
    }
}
