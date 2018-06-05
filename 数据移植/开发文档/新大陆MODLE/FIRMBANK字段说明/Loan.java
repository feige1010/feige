/*
 * loan.java
 *
 * 功能： 
 * 类名： loan
 *
 *   ver     变更日期    修改人    修改说明
 * ──────────────────────────────────
 *   V1.0    2010-12-7    孙宇翔       初版
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
 * @version Ver 1.0 2010-12-7 初版
 * @since Ver 1.0
 */
@Entity
@Table(name="T_LOAN")
public class Loan extends AbstractPayment implements Serializable {
    @Override
    public String getBizCode() {
        return BizCode.LOAN;
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
        return amount;
    }


    @javax.persistence.Transient
    private Date expectDate;

    @Column(name="ACCT_NO", updatable=false)
    private String acctNo;
    @Column(name="LOAN_DATE", updatable=false)
    private Date loanDate;
    @Column(name="END_DATE", updatable=false)
    private Date endDate;
    @Column(name="CCY", updatable=false)
    private String ccy;
    @Column(name="PURPOSE", updatable=false)
    private String purpose;
    @Column(name="LOAN_KEY", updatable=false)
    private String loanKey;
    @Column(name="REPAY_MODE", updatable=false)
    private String repayMode;
    @Column(name="LOAN_NO", updatable=false)
    private String loanNo;
    @Column(name="AMOUNT", updatable=false)
    private BigDecimal amount;

    public String getAcctNo() {
        return acctNo;
    }

    public void setAcctNo(String acctNo) {
        this.acctNo = acctNo;
    }

    public Date getLoanDate() {
        return loanDate;
    }

    public void setLoanDate(Date loanDate) {
        this.loanDate = loanDate;
    }

    public Date getEndDate() {
        return endDate;
    }

    public void setEndDate(Date endDate) {
        this.endDate = endDate;
    }

    public String getCcy() {
        return ccy;
    }

    public void setCcy(String ccy) {
        this.ccy = ccy;
    }

    public String getPurpose() {
        return purpose;
    }

    public void setPurpose(String purpose) {
        this.purpose = purpose;
    }

    public String getLoanKey() {
        return loanKey;
    }

    public void setLoanKey(String loanKey) {
        this.loanKey = loanKey;
    }

    public String getRepayMode() {
        return repayMode;
    }

    public void setRepayMode(String repayMode) {
        this.repayMode = repayMode;
    }

    public String getLoanNo() {
        return loanNo;
    }

    public void setLoanNo(String loanNo) {
        this.loanNo = loanNo;
    }

    public void setAmount(BigDecimal amount) {
        this.amount = amount;
    }

    public void setExpectDate(Date expectDate) {
        this.expectDate = expectDate;
    }
}
