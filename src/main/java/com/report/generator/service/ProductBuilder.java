package com.report.generator.service;

import com.report.generator.model.Product;

public interface ProductBuilder {

    Product buildOverview(Product ftRecord, Product sysFeatures, Product termDeposit);

    Product getTermDepositRecord();

    Product getSysFeaturesRecord();

    Product getFundTransferRecord();
}
