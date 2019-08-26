package com.report.generator.constants;

import com.report.generator.model.Product;

public enum PercentageType {
    PASS_PERCENT,
    FAIL_PERCENT;

    public static Double calculatePercentage(Product product, PercentageType percentageType) {

        Double percentage;

        switch (percentageType) {
            case PASS_PERCENT:
                if (product.getPass() == null || product.getPass() == 0)
                    percentage = 0D;
                else {
                    double passValue = product.getPass() / product.getTotal();
                    percentage = passValue * 100;
                }
                break;
            case FAIL_PERCENT:
                if (product.getFail() == null || product.getFail() == 0)
                    percentage = 0D;
                else {
                    double failValue = product.getFail() / product.getTotal();
                    percentage = failValue * 100;
                }
                break;
            default:
                percentage = 0D;
        }

        return percentage;
    }
}
