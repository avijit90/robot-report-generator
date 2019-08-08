package com.report.generator.service;

import freemarker.template.Configuration;
import freemarker.template.TemplateExceptionHandler;

import java.io.File;
import java.io.IOException;

public class ConfigurationService {

    private Configuration configuration;

    private Configuration createConfiguration() {

        try {
            Configuration cfg = new Configuration(Configuration.VERSION_2_3_27);
            cfg.setDirectoryForTemplateLoading(new File("./src/main/template"));
            cfg.setDefaultEncoding("UTF-8");
            cfg.setTemplateExceptionHandler(TemplateExceptionHandler.RETHROW_HANDLER);
            cfg.setLogTemplateExceptions(false);
            cfg.setWrapUncheckedExceptions(true);
            return cfg;
        } catch (IOException e) {
            e.printStackTrace();
            return null;
        }
    }

    public Configuration getConfiguration() {

        if (configuration == null)
            this.configuration = createConfiguration();

        return configuration;
    }
}
