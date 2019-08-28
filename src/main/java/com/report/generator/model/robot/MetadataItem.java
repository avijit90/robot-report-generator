package com.report.generator.model.robot;

import javax.xml.bind.annotation.XmlAttribute;
import javax.xml.bind.annotation.XmlValue;

public class MetadataItem {

    @XmlValue
    protected String value;
    @XmlAttribute(name = "name", required = true)
    protected String name;

    public String getValue() {
        return value;
    }

    public String getName() {
        return name;
    }

}
