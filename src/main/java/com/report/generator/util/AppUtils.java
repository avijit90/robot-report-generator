package com.report.generator.util;

import com.report.generator.constants.PercentageType;
import com.report.generator.model.Product;

public class AppUtils {

    public static Double calculatePercentage(Product product, PercentageType percentageType) {

        Double percentage;

        if(product.getPass() == null || product.getPass() == 0)
            return 0D;

        if(product.getFail() == null || product.getFail() == 0)
            return 0D;

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

    public static void printEndBanner() {
        System.out.println("==================================>> END <<==================================");
    }

    public static void printStartBanner() {
        System.out.println("==================================>> START <<==================================");

        System.out.println(" _____      _____    _______     _____   __________ ");
        System.out.println("|  __ \\    /  _  \\  |   __  \\   /  _  \\ |___    ___|");
        System.out.println("| |__| |  |  / \\  | |  |__|  | |  / \\  |    |  |");
        System.out.println("|  __  |  |  | |  | |   __   | |  | |  |    |  |");
        System.out.println("| |  \\ \\  |  |_|  | |  |__|  | |  |_|  |    |  |");
        System.out.println("|_|   \\_\\  \\_____/  |_______/   \\_____/     |__|");

        System.out.println(" _____     _______   _____     _____    _____    ________");
        System.out.println("|  __ \\   |  _____| |  __ \\   /  _  \\  |  __ \\  |__    __|");
        System.out.println("| |__| |  | |___    | |__| | |  / \\  | | |__| |    |  | ");
        System.out.println("|  __  |  |  ___|   |  __ /  |  | |  | |  __  |    |  |");
        System.out.println("| |  \\ \\  | |_____  | |      |  |_|  | | |  \\ \\    |  |");
        System.out.println("|_|   \\_\\ |_______| |_|       \\_____/  |_|   \\_\\   |__|");

        System.out.println("  _____    _______   __    ___  _______   _____     ______   _________   _____   _____   ");
        System.out.println(" /  _  \\  |  _____| |  \\   | | |  _____| |  __ \\   /  __  \\ |__    __|  /  _  \\ |  __ \\  ");
        System.out.println("|  / \\_|  | |___    |   \\  | | | |___    | |__| |  | |__| |    |  |    |  / \\  || |__| | ");
        System.out.println("| |  ___  |  ___|   | |\\ \\ | | |  ___|   |  __  |  |  __  |    |  |    |  | |  ||  __  | ");
        System.out.println("| | |_ _| | |_____  | | \\ \\| | | |_____  | |  \\ \\  | |  | |    |  |    |  |_|  || |  \\ \\ ");
        System.out.println("|  \\_| |  |_______| |_|  \\___| |_______| |_|   \\_\\ |_|  |_|    |__|     \\_____/ |_|   \\_\\  |\\");
        System.out.println(" \\_____|  =================================================================================|_\\");
    }
}
