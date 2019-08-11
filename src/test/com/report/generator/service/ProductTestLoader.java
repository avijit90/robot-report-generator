package com.report.generator.service;

import com.report.generator.constants.StatusColor;
import com.report.generator.model.Product;

import java.util.ArrayList;
import java.util.List;

import static com.report.generator.constants.PercentageType.FAIL_PERCENT;
import static com.report.generator.constants.PercentageType.PASS_PERCENT;
import static com.report.generator.util.AppUtils.calculatePercentage;
import static com.report.generator.util.AppUtils.sanitize;

public class ProductTestLoader implements ProductBuilder {

    @Override
    public Product buildOverview(Product ftRecord, Product sysFeatures, Product termDeposit) {
        Product overviewRecord = new Product();
        overviewRecord.setName("Overview");
        overviewRecord.setPass(20D);
        overviewRecord.setFail(7D);
        overviewRecord.setTotal();
        overviewRecord.setFailPercent(calculatePercentage(overviewRecord, FAIL_PERCENT));
        overviewRecord.setPassPercent(calculatePercentage(overviewRecord, PASS_PERCENT));
        StatusColor status = StatusColor.getStatusFromPercentage(overviewRecord.getPassPercent());
        overviewRecord.setStatus(status.getColor());
        overviewRecord.setDetailView(sanitize(overviewRecord.getName()) + ".html");

        List<Product> subproductList = new ArrayList<>();
        subproductList.add(ftRecord);
        subproductList.add(termDeposit);
        overviewRecord.setSubProducts(subproductList);
        return overviewRecord;
    }

    @Override
    public Product getTermDepositRecord() {
        Product termDeposit = new Product();
        termDeposit.setName("Term Deposit");
        termDeposit.setStatus("red");
        termDeposit.setPass(4D);
        termDeposit.setFail(5D);
        termDeposit.setTotal();
        termDeposit.setFailPercent(calculatePercentage(termDeposit, FAIL_PERCENT));
        termDeposit.setPassPercent(calculatePercentage(termDeposit, PASS_PERCENT));
        termDeposit.setDetailView(sanitize(termDeposit.getName()) + ".html");

        Product fd = new Product();
        fd.setName("Fixed Deposit");
        fd.setStatus("red");
        fd.setPass(4D);
        fd.setFail(1D);
        fd.setTotal();
        fd.setFailPercent(calculatePercentage(fd, FAIL_PERCENT));
        fd.setPassPercent(calculatePercentage(fd, PASS_PERCENT));
        fd.setDetailView(sanitize(fd.getName()) + ".html");

        Product td = new Product();
        td.setName("TD Sub Product");
        td.setStatus("red");
        td.setPass(0D);
        td.setFail(4D);
        td.setTotal();
        td.setFailPercent(calculatePercentage(td, FAIL_PERCENT));
        td.setPassPercent(calculatePercentage(td, PASS_PERCENT));
        td.setDetailView(sanitize(td.getName()) + ".html");

        List<Product> subproducts = new ArrayList<>();
        subproducts.add(fd);
        subproducts.add(td);
        termDeposit.setSubProducts(subproducts);

        return termDeposit;
    }

    @Override
    public Product getSysFeaturesRecord() {
        Product sysFeatures = new Product();
        sysFeatures.setName("System Features");
        sysFeatures.setStatus("green");
        sysFeatures.setPass(10D);
        sysFeatures.setFail(2D);
        sysFeatures.setTotal();
        sysFeatures.setFailPercent(calculatePercentage(sysFeatures, FAIL_PERCENT));
        sysFeatures.setPassPercent(calculatePercentage(sysFeatures, PASS_PERCENT));
        sysFeatures.setDetailView(sanitize(sysFeatures.getName()) + ".html");
        return sysFeatures;
    }

    @Override
    public Product getFundTransferRecord() {
        Product ftRecord = new Product();
        ftRecord.setName("Fund Transfer");
        ftRecord.setStatus("green");
        ftRecord.setPass(6D);
        ftRecord.setFail(0D);
        ftRecord.setTotal();
        ftRecord.setFailPercent(calculatePercentage(ftRecord, FAIL_PERCENT));
        ftRecord.setPassPercent(calculatePercentage(ftRecord, PASS_PERCENT));
        ftRecord.setDetailView(sanitize(ftRecord.getName()) + ".html");

        Product mt103 = new Product();
        mt103.setName("MT103");
        mt103.setStatus("green");
        mt103.setPass(2D);
        mt103.setFail(0D);
        mt103.setTotal();
        mt103.setFailPercent(calculatePercentage(mt103, FAIL_PERCENT));
        mt103.setPassPercent(calculatePercentage(mt103, PASS_PERCENT));
        mt103.setDetailView(sanitize(mt103.getName()) + ".html");

        Product fast = new Product();
        fast.setName("FAST");
        fast.setStatus("green");
        fast.setPass(4D);
        fast.setFail(0D);
        fast.setTotal();
        fast.setFailPercent(calculatePercentage(fast, FAIL_PERCENT));
        fast.setPassPercent(calculatePercentage(fast, PASS_PERCENT));
        fast.setDetailView(sanitize(fast.getName()) + ".html");

        List<Product> subproducts = new ArrayList<>();
        subproducts.add(mt103);
        subproducts.add(fast);
        ftRecord.setSubProducts(subproducts);

        return ftRecord;
    }

}
