package com.report.generator.util;

import com.report.generator.constants.PercentageType;
import com.report.generator.model.Product;

public class AppUtils {

    public static Double calculatePercentage(Product product, PercentageType percentageType) {

        Double percentage;
        switch (percentageType) {
            case PASS_PERCENT:
                double passValue = product.getPass() / product.getTotal();
                percentage = passValue * 100;
                break;
            case FAIL_PERCENT:
                double failValue = product.getFail() / product.getTotal();
                percentage = failValue * 100;
                break;
            default:
                percentage = 0D;
        }

        return percentage;
    }

    public static String sanitize(String input) {
        return input.replaceAll("\\s+", "_");
    }
}
