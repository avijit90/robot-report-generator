package com.report.generator.model;

import javax.xml.bind.annotation.XmlElement;
import java.util.List;

public class Errors {

    @XmlElement(name = "msg")
    protected List<Msg> msg;

    public List<Msg> getMsg() {
        return msg;
    }
}
