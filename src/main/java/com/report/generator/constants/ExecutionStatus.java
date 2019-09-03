package com.report.generator.constants;

public enum ExecutionStatus {

    SUCCESS(0),
    INCORRECT_OUTPUT_DIR(1001),
    UNRECOGNIZED_INPUT(1002),
    UNABLE_TO_DETERMINE_INPUT_DIR(1003),
    UNABLE_TO_DETERMINE_OUTPUT_DIR(1004);

    private int statusCode;

    ExecutionStatus(int statusCode) {
        this.statusCode = statusCode;
    }

    public int getStatusCode() {
        return statusCode;
    }
}
