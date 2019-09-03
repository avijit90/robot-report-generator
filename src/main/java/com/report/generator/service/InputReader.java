package com.report.generator.service;

import com.report.generator.constants.ExecutionStatus;

public interface InputReader<T> {

    ExecutionStatus readInput(String filePath);
}
