package com.report.generator.model.template;

import java.util.ArrayList;
import java.util.List;

public class TemplateSuite {

    private String id;
    public String name;
    public Double pass;
    public Double fail;
    public Double total;
    public Double passPercent;
    public Double failPercent;
    public String detailView;
    public String status;
    public String firstCoverageColor;
    public String secondCoverageColor;
    public List<TemplateSuite> subTemplateSuites;

    public TemplateSuite(String id) {
        this.id = id;
    }

    public TemplateSuite() {}

    public void setDetailView(String detailView) {
        this.detailView = detailView;
    }

    public void setName(String name) {
        this.name = name;
    }

    public void setSubProducts(List<TemplateSuite> childTemplateSuites) {
        this.subTemplateSuites = childTemplateSuites;
    }

    public String getDetailView() {
        return detailView;
    }

    public String getName() {
        return name;
    }

    public String getStatus() {
        return status;
    }

    public List<TemplateSuite> getSubTemplateSuites() {
        return subTemplateSuites;
    }

    public void addSubProduct(TemplateSuite childTemplateSuite) {
        if (subTemplateSuites == null)
            subTemplateSuites = new ArrayList<>();

        subTemplateSuites.add(childTemplateSuite);
    }

    public Double getPass() {
        return pass;
    }

    public void setPass(Double pass) {
        this.pass = pass;
    }

    public Double getFail() {
        return fail;
    }

    public void setFail(Double fail) {
        this.fail = fail;
    }

    public Double getPassPercent() {
        return passPercent;
    }

    public void setPassPercent(Double passPercent) {
        this.passPercent = passPercent;
    }

    public Double getFailPercent() {
        return failPercent;
    }

    public void setFailPercent(Double failPercent) {
        this.failPercent = failPercent;
    }

    public Double getTotal() {
        return total;
    }

    public void buildTotal() {
        this.total = pass + fail;
    }

    public void setStatus(String status) {
        this.status = status;
    }

    public void setTotal(Double total) {
        this.total = total;
    }

    public void setSubTemplateSuites(List<TemplateSuite> subTemplateSuites) {
        this.subTemplateSuites = subTemplateSuites;
    }

    public String getFirstCoverageColor() {
        return firstCoverageColor;
    }

    public void setFirstCoverageColor(String firstCoverageColor) {
        this.firstCoverageColor = firstCoverageColor;
    }

    public String getSecondCoverageColor() {
        return secondCoverageColor;
    }

    public void setSecondCoverageColor(String secondCoverageColor) {
        this.secondCoverageColor = secondCoverageColor;
    }

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }
}
