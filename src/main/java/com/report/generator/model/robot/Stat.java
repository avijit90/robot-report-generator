package com.report.generator.model.robot;

import javax.xml.bind.annotation.XmlAttribute;
import javax.xml.bind.annotation.XmlValue;
import java.math.BigInteger;

public class Stat {

    @XmlValue
    protected String value;
    @XmlAttribute(name = "fail")
    protected BigInteger fail;
    @XmlAttribute(name = "critical")
    protected String critical;
    @XmlAttribute(name = "pass")
    protected BigInteger pass;
    @XmlAttribute(name = "info")
    protected String info;
    @XmlAttribute(name = "links")
    protected String links;
    @XmlAttribute(name = "doc")
    protected String doc;
    @XmlAttribute(name = "combined")
    protected String combined;
    @XmlAttribute(name = "id")
    protected String id;
    @XmlAttribute(name = "name")
    protected String name;

    public String getValue() {
        return value;
    }

    public BigInteger getFail() {
        return fail;
    }

    public String getCritical() {
        return critical;
    }

    public BigInteger getPass() {
        return pass;
    }

    public String getInfo() {
        return info;
    }

    public String getLinks() {
        return links;
    }

    public String getDoc() {
        return doc;
    }

    public String getCombined() {
        return combined;
    }

    public String getId() {
        return id;
    }

    public String getName() {
        return name;
    }
}
