package com.report.generator.constants;

public enum ExecutionStatus {

    SUCCESS(0),
    INCORRECT_OUTPUT_DIR(1001),
    UNRECOGNIZED_INPUT(1002);

    private int statusCode;

    ExecutionStatus(int statusCode) {
        this.statusCode = statusCode;
    }

    public int getStatusCode() {
        return statusCode;
    }
}
