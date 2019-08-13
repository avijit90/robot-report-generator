package com.report.generator.model;

import javax.xml.bind.annotation.XmlElement;

public class Statistics {

    @XmlElement(name = "total")
    protected Stats total;
    @XmlElement(name = "tag")
    protected Stats tag;
    @XmlElement(name = "suite")
    protected Stats suite;

    public Stats getTotal() {
        return total;
    }

    public Stats getTag() {
        return tag;
    }

    public Stats getSuite() {
        return suite;
    }

}
