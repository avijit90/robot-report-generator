package com.report.generator.constants;

import com.report.generator.model.template.TemplateSuite;

public enum PercentageType {
    PASS_PERCENT,
    FAIL_PERCENT;

    public static Double calculatePercentage(TemplateSuite templateSuite, PercentageType percentageType) {

        Double percentage;

        switch (percentageType) {
            case PASS_PERCENT:
                if (templateSuite.getPass() == null || templateSuite.getPass() == 0)
                    percentage = 0D;
                else {
                    double passValue = templateSuite.getPass() / templateSuite.getTotal();
                    percentage = passValue * 100;
                }
                break;
            case FAIL_PERCENT:
                if (templateSuite.getFail() == null || templateSuite.getFail() == 0)
                    percentage = 0D;
                else {
                    double failValue = templateSuite.getFail() / templateSuite.getTotal();
                    percentage = failValue * 100;
                }
                break;
            default:
                percentage = 0D;
        }

        return percentage;
    }
}
