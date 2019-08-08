package com.report.generator.service;

import com.report.generator.model.Product;

public interface ProductBuilder {

    public Product buildOverview(Product ftRecord, Product sysFeatures, Product termDeposit);

    public Product getTermDepositRecord();

    public Product getSysFeaturesRecord();

    public Product getFundTransferRecord();
}
