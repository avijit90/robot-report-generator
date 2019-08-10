package com.report.generator.model;

import javax.xml.bind.annotation.XmlElement;

public class Statistics {

    @XmlElement(required = true)
    protected Stats total;
    @XmlElement(required = true)
    protected Stats tag;
    @XmlElement(required = true)
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
