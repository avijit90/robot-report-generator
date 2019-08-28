package com.report.generator.model.robot;

public class SearchResult {

    private String text;
    private String url;

    public SearchResult() {
    }

    public SearchResult(String text, String url) {
        this.text = text;
        this.url = url;
    }

    public String getText() {
        return text;
    }

    public void setText(String text) {
        this.text = text;
    }

    public String getUrl() {
        return url;
    }

    public void setUrl(String url) {
        this.url = url;
    }
}
