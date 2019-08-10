package com.report.generator.model;

import javax.xml.bind.annotation.XmlAttribute;
import javax.xml.bind.annotation.XmlElement;
import java.util.List;

public class Test {

    @XmlElement(name = "kw")
    protected List<Kw> kw;
    @XmlElement(name = "msg")
    protected List<Msg> msg;
    @XmlElement(name = "doc")
    protected List<String> doc;
    @XmlAttribute(name = "name", required = true)
    protected String name;
    @XmlAttribute(name = "id")
    protected String id;
    @XmlElement(name = "tags")
    protected Tags tags;
    @XmlElement(name = "timeout")
    protected Timeout timeout;
    @XmlElement(name = "status")
    protected Status status;
    @XmlAttribute(name = "library")
    protected String library;

    public List<Kw> getKw() {
        return kw;
    }

    public List<Msg> getMsg() {
        return msg;
    }

    public List<String> getDoc() {
        return doc;
    }

    public String getName() {
        return name;
    }

    public String getId() {
        return id;
    }

    public Tags getTags() {
        return tags;
    }

    public Timeout getTimeout() {
        return timeout;
    }

    public Status getStatus() {
        return status;
    }

    public String getLibrary() {
        return library;
    }
}
