package com.report.generator.model;

import javax.xml.bind.annotation.XmlAttribute;
import javax.xml.bind.annotation.XmlValue;

public class Timeout {

    @XmlValue
    protected String value;
    @XmlAttribute(name = "valueAttribute")
    protected String valueAttribute;

    public String getValue() {
        return value;
    }

    public String getValueAttribute() {
        return valueAttribute;
    }
}
