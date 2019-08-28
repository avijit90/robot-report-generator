package com.report.generator.model.robot;

import javax.xml.bind.annotation.XmlElement;
import java.util.List;

public class Stats {

    @XmlElement(name = "stat")
    protected List<Stat> stat;

    public List<Stat> getStat() {
        return stat;
    }
}
