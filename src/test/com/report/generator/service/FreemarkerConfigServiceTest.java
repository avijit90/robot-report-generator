package com.report.generator.service;

import freemarker.template.Configuration;
import freemarker.template.TemplateExceptionHandler;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.mockito.runners.MockitoJUnitRunner;

import static freemarker.template.Configuration.VERSION_2_3_27;
import static org.junit.Assert.assertEquals;
import static org.junit.Assert.assertNotNull;
import static org.mockito.Mockito.mock;

@RunWith(MockitoJUnitRunner.class)
public class FreemarkerConfigServiceTest {

    FreemarkerConfigService unit;

    @Test
    public void givenConfigurationAlreadyPresent_ThenShouldReturnExisting() {
        Configuration configuration = mock(Configuration.class);

        unit = new FreemarkerConfigService(configuration);

        assertEquals(configuration, unit.getFreemarkerConfiguration());
    }

    @Test
    public void givenNewInstanceOfConfigService_ThenShouldPopulateConfiguration() {
        unit = new FreemarkerConfigService();

        Configuration actualConfig = unit.getFreemarkerConfiguration();

        assertNotNull(actualConfig);
        assertEquals(VERSION_2_3_27, actualConfig.getIncompatibleImprovements());
        assertEquals("UTF-8", actualConfig.getDefaultEncoding());
        assertEquals(true, actualConfig.isDefaultEncodingExplicitlySet());
        assertEquals(TemplateExceptionHandler.RETHROW_HANDLER, actualConfig.getTemplateExceptionHandler());
        assertEquals(false, actualConfig.getLogTemplateExceptions());
        assertEquals(true, actualConfig.getWrapUncheckedExceptions());
    }


}
