package com.report.generator.model.robot;

import javax.xml.bind.annotation.XmlAttribute;
import javax.xml.bind.annotation.XmlElement;
import java.util.List;

public class Kw {

    @XmlElement(name = "tags")
    protected List<Tags> tags;
    @XmlElement(name = "doc")
    protected String doc;
    @XmlElement(name = "arguments")
    protected List<Arguments> arguments;
    @XmlAttribute(name = "name", required = true)
    protected String name;
    @XmlAttribute(name = "type")
    protected String type;
    @XmlAttribute(name = "library")
    protected String library;

    public List<Tags> getTags() {
        return tags;
    }

    public String getDoc() {
        return doc;
    }

    public List<Arguments> getArguments() {
        return arguments;
    }

    public String getName() {
        return name;
    }

    public String getType() {
        return type;
    }

    public String getLibrary() {
        return library;
    }
}
