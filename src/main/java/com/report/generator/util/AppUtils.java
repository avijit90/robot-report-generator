package com.report.generator.util;

import com.report.generator.constants.CoverageColor;
import com.report.generator.model.Product;

import java.util.List;
import java.util.Set;

import static com.google.common.collect.Sets.newHashSet;
import static java.text.MessageFormat.format;

public class AppUtils {

    public static String sanitize(String input) {
        return input.replaceAll("\\s+", "_");
    }

    public static void populateColors(List<Product> products) {

        Set<CoverageColor> coverageColors = newHashSet();

        if (products.size() > CoverageColor.values().length) {
            System.out.println("ERROR : Cannot find coverage colors !!!");
            System.out.println(format("products.size={0} and CoverageColor.values.length={1}", products.size(), CoverageColor.values().length));
            System.exit(500);
        }

        while (coverageColors.size() != products.size())
            coverageColors.add(CoverageColor.getRandomColor());

        products.stream().forEach(p -> {
            CoverageColor selectedColor = coverageColors.iterator().next();
            p.setFirstCoverageColor(selectedColor.getFirstColor());
            p.setSecondCoverageColor(selectedColor.getSecondColor());
            coverageColors.remove(selectedColor);
        });
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
