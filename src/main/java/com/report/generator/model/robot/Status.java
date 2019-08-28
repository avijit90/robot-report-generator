package com.report.generator.model.robot;

import javax.xml.bind.annotation.XmlAttribute;
import javax.xml.bind.annotation.XmlValue;

public class Status {

    @XmlValue
    protected String value;
    @XmlAttribute(name = "status", required = true)
    protected String status;
    @XmlAttribute(name = "endtime")
    protected String endtime;
    @XmlAttribute(name = "starttime")
    protected String starttime;
    @XmlAttribute(name = "elapsedtime")
    protected String elapsedtime;
    @XmlAttribute(name = "critical")
    protected String critical;

    public String getValue() {
        return value;
    }

    public String getStatus() {
        return status;
    }

    public String getEndtime() {
        return endtime;
    }

    public String getStarttime() {
        return starttime;
    }

    public String getElapsedtime() {
        return elapsedtime;
    }

    public String getCritical() {
        return critical;
    }
}
