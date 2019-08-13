package com.report.generator.model;

import java.util.List;

public class Product {

    public String detailView;
    public String name;
    public Double pass;
    public Double fail;
    public Double passPercent;
    public Double failPercent;
    public Double total;
    public String status;
    public String progressBarStyle;
    public String firstCoverageColor;
    public String secondCoverageColor;
    public List<Product> subproducts;

    public void setDetailView(String detailView) {
        this.detailView = detailView;
    }

    public void setName(String name) {
        this.name = name;
    }

    public void setSubProducts(List<Product> subProducts) {
        this.subproducts = subProducts;
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

    public List<Product> getSubproducts() {
        return subproducts;
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

    public void setTotal() {
        this.total = pass + fail;
    }

    public void setStatus(String status) {
        this.status = status;
    }

    public void setTotal(Double total) {
        this.total = total;
    }

    public String getProgressBarStyle() {
        return progressBarStyle;
    }

    public void setProgressBarStyle(String progressBarStyle) {
        this.progressBarStyle = progressBarStyle;
    }

    public void setSubproducts(List<Product> subproducts) {
        this.subproducts = subproducts;
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
}
