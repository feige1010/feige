/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package netbank.pers.loans.model;

import java.math.BigDecimal;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Table;
import netbank.pers.trade.model.NetTranFlow;
import netbank.pers.trade.model.NetTransConstants;
import java.util.Date;
/**
 *
 * @author wangbo
 */
@Entity
@Table(name = "T_LOANS_REFUND_FLOW")
public class LoanRefundFlow extends NetTranFlow{
    private static final long serialVersionUID = 7272745571066076459L;


    public LoanRefundFlow() {
        super.setTradeType(NetTransConstants.LOANS_REFUND_TRADE);
    }

	/**
	 * 额期标志
	 * A：变额不变期
	 * T：变期不变额
	 */
	public static final String PRE_REPAY_DEAL = "A";

	/**
	 * 事件日期
	 */
        @Column(name = "T_EVENT_DATE")
	private Date eventDate;

	/**
	 * 事件标题
	 */
        @Column(name = "T_EVENT_TITLE")
	private String eventTitle;

	/**
	 * 交易描述
	 */
        @Column(name = "T_TRAN_DES")
	private String transactionDescription;

	/**
	 * 贷款号
	 */
        @Column(name = "T_LOAN_NO")
	private String loanNo;
	/**
	 * 贷款顺序号
	 * add by Bluefin
	 * 2010-11-30
	 */
        @Column(name = "T_LOAN_KEY")
	private String loanKey;

	/**
	 * 回收交易号
	 */
        @Column(name = "T_TRAN_REC_NO")
	private String transRecoveryNO;



	/**
	 * 还款类型
	 */
        @Column(name = "T_REPAYMENT_TYPE")
	private String repaymentType;

	/**
	 * 币种
	 */
        @Column(name = "T_CURRENCY")
	private String currency;

	/**
	 * 回收金额
	 */
        @Column(name = "T_RECOVERY_AMOUNT")
	private BigDecimal recoveryAmount;

	

	/****以下为贷款还款返回信息使用 alter by jacksonHuang******/

	/**
	 * 交易参考号
	 */
        @Column(name = "T_REFERENCE")
	private String reference;

	/**
	 * 还款本金
	 */
        @Column(name = "T_PRE_PRI_AMT")
	private BigDecimal prePriAmt;

	/**
	 * 费用本金
	 */
        @Column(name = "T_PRE_FEE_AMT")
	private BigDecimal preFeeAmt;

	/**
	 * 利息金额
	 */
        @Column(name = "T_PRE_INT_AMT")
	private BigDecimal preIntAmt;

	/**
	 * 罚息金额
	 */
        @Column(name = "T_PRE_ODP_AMT")
	private BigDecimal preOdpAmt;

	/**
	 * 复利金额
	 */
        @Column(name = "T_PRE_ODI_AMT")
	private BigDecimal preOdiAmt;

    /**
     * @return the eventDate
     */
    public Date getEventDate() {
        return eventDate;
    }

    /**
     * @param eventDate the eventDate to set
     */
    public void setEventDate(Date eventDate) {
        this.eventDate = eventDate;
    }

    /**
     * @return the eventTitle
     */
    public String getEventTitle() {
        return eventTitle;
    }

    /**
     * @param eventTitle the eventTitle to set
     */
    public void setEventTitle(String eventTitle) {
        this.eventTitle = eventTitle;
    }

    /**
     * @return the transactionDescription
     */
    public String getTransactionDescription() {
        return transactionDescription;
    }

    /**
     * @param transactionDescription the transactionDescription to set
     */
    public void setTransactionDescription(String transactionDescription) {
        this.transactionDescription = transactionDescription;
    }

    /**
     * @return the loanNo
     */
    public String getLoanNo() {
        return loanNo;
    }

    /**
     * @param loanNo the loanNo to set
     */
    public void setLoanNo(String loanNo) {
        this.loanNo = loanNo;
    }

    /**
     * @return the loanKey
     */
    public String getLoanKey() {
        return loanKey;
    }

    /**
     * @param loanKey the loanKey to set
     */
    public void setLoanKey(String loanKey) {
        this.loanKey = loanKey;
    }

    /**
     * @return the transRecoveryNO
     */
    public String getTransRecoveryNO() {
        return transRecoveryNO;
    }

    /**
     * @param transRecoveryNO the transRecoveryNO to set
     */
    public void setTransRecoveryNO(String transRecoveryNO) {
        this.transRecoveryNO = transRecoveryNO;
    }

 
    /**
     * @return the repaymentType
     */
    public String getRepaymentType() {
        return repaymentType;
    }

    /**
     * @param repaymentType the repaymentType to set
     */
    public void setRepaymentType(String repaymentType) {
        this.repaymentType = repaymentType;
    }

    /**
     * @return the currency
     */
    public String getCurrency() {
        return currency;
    }

    /**
     * @param currency the currency to set
     */
    public void setCurrency(String currency) {
        this.currency = currency;
    }

    /**
     * @return the recoveryAmount
     */
    public BigDecimal getRecoveryAmount() {
        return recoveryAmount;
    }

    /**
     * @param recoveryAmount the recoveryAmount to set
     */
    public void setRecoveryAmount(BigDecimal recoveryAmount) {
        this.recoveryAmount = recoveryAmount;
    }


    /**
     * @return the reference
     */
    public String getReference() {
        return reference;
    }

    /**
     * @param reference the reference to set
     */
    public void setReference(String reference) {
        this.reference = reference;
    }

    /**
     * @return the prePriAmt
     */
    public BigDecimal getPrePriAmt() {
        return prePriAmt;
    }

    /**
     * @param prePriAmt the prePriAmt to set
     */
    public void setPrePriAmt(BigDecimal prePriAmt) {
        this.prePriAmt = prePriAmt;
    }

    /**
     * @return the preFeeAmt
     */
    public BigDecimal getPreFeeAmt() {
        return preFeeAmt;
    }

    /**
     * @param preFeeAmt the preFeeAmt to set
     */
    public void setPreFeeAmt(BigDecimal preFeeAmt) {
        this.preFeeAmt = preFeeAmt;
    }

    /**
     * @return the preIntAmt
     */
    public BigDecimal getPreIntAmt() {
        return preIntAmt;
    }

    /**
     * @param preIntAmt the preIntAmt to set
     */
    public void setPreIntAmt(BigDecimal preIntAmt) {
        this.preIntAmt = preIntAmt;
    }

    /**
     * @return the preOdpAmt
     */
    public BigDecimal getPreOdpAmt() {
        return preOdpAmt;
    }

    /**
     * @param preOdpAmt the preOdpAmt to set
     */
    public void setPreOdpAmt(BigDecimal preOdpAmt) {
        this.preOdpAmt = preOdpAmt;
    }

    /**
     * @return the preOdiAmt
     */
    public BigDecimal getPreOdiAmt() {
        return preOdiAmt;
    }

    /**
     * @param preOdiAmt the preOdiAmt to set
     */
    public void setPreOdiAmt(BigDecimal preOdiAmt) {
        this.preOdiAmt = preOdiAmt;
    }

    

}
