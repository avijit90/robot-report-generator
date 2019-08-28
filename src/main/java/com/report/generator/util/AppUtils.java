package com.report.generator.util;

import com.report.generator.constants.CoverageColor;
import com.report.generator.model.template.TemplateSuite;

import java.util.List;
import java.util.Set;

import static com.google.common.collect.Lists.newArrayList;
import static com.google.common.collect.Sets.newHashSet;

public class AppUtils {

    public static String sanitize(String input) {
        return input.replaceAll("\\s+", "_");
    }

    public static void populateColors(List<TemplateSuite> templateSuites) {

        Set<Set<CoverageColor>> colorCombinations = newHashSet();

        templateSuites.stream().forEach(p -> {
            Set<CoverageColor> currentColorCombo = generateColorCombo();
            while (colorCombinations.contains(currentColorCombo))
                currentColorCombo = generateColorCombo();

            List<CoverageColor> colorList = newArrayList(currentColorCombo);
            p.setFirstCoverageColor(colorList.get(0).getHexValue());
            p.setSecondCoverageColor(colorList.get(1).getHexValue());
            colorCombinations.add(currentColorCombo);
        });
    }

    private static Set<CoverageColor> generateColorCombo() {
        CoverageColor firstColor = CoverageColor.getRandomColor();
        CoverageColor secondColor = CoverageColor.getRandomColor();

        // Get two distinct colors
        if (firstColor == secondColor) {
            while (firstColor == secondColor) {
                secondColor = CoverageColor.getRandomColor();
            }
        }
        return newHashSet(firstColor, secondColor);
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
