package com.report.generator.model.robot;

import javax.xml.bind.annotation.XmlAttribute;
import javax.xml.bind.annotation.XmlElement;
import java.util.List;

public class Suite {

    @XmlElement(name = "kw")
    protected List<Kw> kw;
    @XmlElement(name = "suite")
    protected List<Suite> suite;
    @XmlElement(name = "test")
    protected List<Test> test;
    @XmlElement(name = "doc")
    protected String doc;
    @XmlElement(name = "metadata")
    protected Metadata metadata;
    @XmlElement(name = "status")
    protected Status status;
    @XmlAttribute(name = "name", required = true)
    protected String name;
    @XmlAttribute(name = "source")
    protected String source;
    @XmlAttribute(name = "id")
    protected String id;

    public List<Kw> getKw() {
        return kw;
    }

    public List<Test> getTest() {
        return test;
    }

    public String getDoc() {
        return doc;
    }

    public Metadata getMetadata() {
        return metadata;
    }

    public Status getStatus() {
        return status;
    }

    public String getName() {
        return name;
    }

    public String getSource() {
        return source;
    }

    public String getId() {
        return id;
    }

    public List<Suite> getSuite() {
        return suite;
    }
}
