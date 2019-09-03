package com.report.generator.constants;

public enum ExecutionStatus {

    SUCCESS(0),
    INCORRECT_OUTPUT_DIR(1000),
    UNRECOGNIZED_INPUT(1001),
    UNABLE_TO_DETERMINE_INPUT_DIR(1002),
    UNABLE_TO_DETERMINE_OUTPUT_DIR(1003),
    OUTPUT_XML_NOT_FOUND_AT_INPUT_DIR(2000),
    READ_PERMISSION_MISSING_FOR_OUTPUT_XML(2001),
    ERROR_READING_OUTPUT_XML(2002);

    private int statusCode;

    ExecutionStatus(int statusCode) {
        this.statusCode = statusCode;
    }

    public int getStatusCode() {
        return statusCode;
    }
}
