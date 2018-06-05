/*
 * LoanRepay.java
 *
 * 功能： 
 * 类名： LoanRepay
 *
 *   ver     变更日期    修改人    修改说明
 * ──────────────────────────────────
 *   V1.0    11-2-22      孙宇翔       初版
 *
 * Copyright (c) 2006, 2008 NewlandComputer All Rights Reserved.
 * LICENSE INFORMATION
 */
package netbank.firm.cash.loans.model;

import netbank.firm.base.constant.BizCode;
import netbank.firm.cash.core.AbstractPayment;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Table;
import java.io.Serializable;
import java.math.BigDecimal;
import java.util.Date;

/**
 * @author syx <Moonish>
 * @version Ver 1.0 11-2-22 初版
 * @since Ver 1.0
 */
@Entity
@Table(name="T_LOAN_REPAY")
public class LoanRepay extends AbstractPayment implements Serializable {
    @Override
    public String getBizCode() {
        return BizCode.LOAN_REPAY;
    }

    @Override
    public String getFromAcctId() {
        return acctNo;
    }

    @Override
    public Date getExpectDate() {
        return null;
    }

    @Override
    public BigDecimal getAmount() {
        return repayAmount;
    }

    /**
     * 账号
     */
    @Column(name="ACCT_NO", updatable=false)
    private String acctNo;
    /**
     * 币种
     */
    @Column(name="CCY", updatable=false)
    private String ccy;
    @Column(name="LOAN_KEY", updatable=false)
    private String loanKey;
    /**
     * 贷款编号
     */
    @Column(name="LOAN_NO", updatable=false)
    private String loanNo;
    @Column(name="REPAY_TYPE", updatable=false)
    /**
     * 还款类型
     */
    private String repayType;
    @Column(name="PRE_AMOUNT", updatable=false)
    /**
     * 提前还款金额
     */
    private BigDecimal preAmount;
    @Column(name="REPAY_AMOUNT", updatable=false)
    /**
     * 还款金额
     */
    private BigDecimal repayAmount;
    /**
     * 提前还款类型
     */
    @Column(name="PRE_FLAG", updatable=false)
    private String preFlag;
    /**
     * 回收类型
     */
    @Column(name="REPAY_FLAG", updatable=false)
    private String repayFlag;

    public String getAcctNo() {
        return acctNo;
    }

    public void setAcctNo(String acctNo) {
        this.acctNo = acctNo;
    }

    public String getCcy() {
        return ccy;
    }

    public void setCcy(String ccy) {
        this.ccy = ccy;
    }

    public String getLoanKey() {
        return loanKey;
    }

    public void setLoanKey(String loanKey) {
        this.loanKey = loanKey;
    }

    public String getLoanNo() {
        return loanNo;
    }

    public void setLoanNo(String loanNo) {
        this.loanNo = loanNo;
    }

    public String getRepayType() {
        return repayType;
    }

    public void setRepayType(String repayType) {
        this.repayType = repayType;
    }

    public BigDecimal getPreAmount() {
        return preAmount;
    }

    public void setPreAmount(BigDecimal preAmount) {
        this.preAmount = preAmount;
    }

    public BigDecimal getRepayAmount() {
        return repayAmount;
    }

    public void setRepayAmount(BigDecimal repayAmount) {
        this.repayAmount = repayAmount;
    }

    public String getPreFlag() {
        return preFlag;
    }

    public void setPreFlag(String preFlag) {
        this.preFlag = preFlag;
    }

    public String getRepayFlag() {
        return repayFlag;
    }

    public void setRepayFlag(String repayFlag) {
        this.repayFlag = repayFlag;
    }
}
