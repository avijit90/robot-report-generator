package com.report.generator.service;

import freemarker.template.Configuration;
import freemarker.template.TemplateExceptionHandler;

public class FreemarkerConfigService {

    private Configuration configuration;

    private Configuration createConfiguration() {
        Configuration cfg = new Configuration(Configuration.VERSION_2_3_27);
        cfg.setClassForTemplateLoading(this.getClass(), "\\template\\purple_admin\\");
        cfg.setDefaultEncoding("UTF-8");
        cfg.setTemplateExceptionHandler(TemplateExceptionHandler.RETHROW_HANDLER);
        cfg.setLogTemplateExceptions(false);
        cfg.setWrapUncheckedExceptions(true);
        return cfg;
    }

    public Configuration getFreemarkerConfiguration() {

        if (configuration == null)
            this.configuration = createConfiguration();

        return configuration;
    }
}
