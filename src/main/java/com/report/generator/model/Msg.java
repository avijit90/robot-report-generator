package com.report.generator.model;

import javax.xml.bind.annotation.XmlAttribute;
import javax.xml.bind.annotation.XmlValue;

public class Msg {

    @XmlValue
    protected String value;
    @XmlAttribute(name = "timestamp")
    protected String timestamp;
    @XmlAttribute(name = "level")
    protected String level;
    @XmlAttribute(name = "html")
    protected String html;

    public String getValue() {
        return value;
    }

    public String getTimestamp() {
        return timestamp;
    }

    public String getLevel() {
        return level;
    }

    public String getHtml() {
        return html;
    }
}
