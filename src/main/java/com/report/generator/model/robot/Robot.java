package com.report.generator.model.robot;

import javax.xml.bind.annotation.XmlAttribute;
import javax.xml.bind.annotation.XmlElement;
import javax.xml.bind.annotation.XmlRootElement;

@XmlRootElement(name = "robot")
public class Robot {

    @XmlElement(required = true)
    protected Suite suite;
    @XmlElement(name = "statistics")
    protected Statistics statistics;
    @XmlElement(name = "errors")
    protected Errors errors;
    @XmlAttribute(name = "generator")
    protected String generator;
    @XmlAttribute(name = "generated")
    protected String generated;
    @XmlAttribute(name = "rpa")
    protected Boolean rpa;

    public Suite getSuite() {
        return suite;
    }

    public Statistics getStatistics() {
        return statistics;
    }

    public Errors getErrors() {
        return errors;
    }

    public String getGenerator() {
        return generator;
    }

    public String getGenerated() {
        return generated;
    }

    public Boolean getRpa() {
        return rpa;
    }
}
