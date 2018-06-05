/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package netbank.pers.loans.model;

/**
 *
 * @author wangbo
 */
import java.math.BigDecimal;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Table;
import netbank.pers.trade.model.NetTranFlow;
import netbank.pers.trade.model.NetTransConstants;
import java.util.Date;
/**
 * 网上贷款流水表
 * @author wangbo
 * @version 1.0
 * @since 2009-9-14
 */
@Entity
@Table(name = "T_LOANS_FLOW")
public class LoansFlow extends NetTranFlow {

    private static final long serialVersionUID = 7272745571066076459L;


    public LoansFlow() {
        super.setTradeType(NetTransConstants.TRANS_TRADE);
    }
/**
     *  发放号
     */
    @Column(name = "T_DUE_ID")
    private String duebillIssueId;

	/**
     *  发放顺序号
     */
    @Column(name = "T_DUE_SX_ID")
	private String duebillIssuingextId;

	/**
     *  币种
     */
    @Column(name = "T_CURRENCY")
    private String currency;

    /**
     *  发放金额
     */
    @Column(name = "T_AMOUNT")
    private BigDecimal issuedAmount;

    /**
     *  当前金额
     */
    @Column(name = "T_BALANCE")
    private BigDecimal currentBalance;

    /**
     *  发放日
     */
    @Column(name = "T_EXTENDS_DATE")
    private Date extendsDate;

    /**
     *  到期日
     */
    @Column(name = "T_DUE_DATE")
	private Date dueDate;

	/**
     *  利率
     */
    @Column(name = "T_RATE")
	private BigDecimal interestRates;


    /**
     *  累计费用
     */
    @Column(name = "T_COST")
    private BigDecimal acumulativeCost;

    /**
     *  借据状态描述
     */
    @Column(name = "T_STATES")
    private String duebillStatesDetail;

    /**
     *  通知单号
     */
//    @Column(name = "T_NOTICE_NUM")
//    private String noticeNumber;

    /**
     * 贷款号
     */
    @Column(name = "T_LOAN_NO")
    private String loanNO;
    /**
     * 贷款顺序号
     */
    @Column(name = "T_LOAN_KEY")
    private String loanKey;

    /**
     * 交易参考号
     */
    @Column(name = "T_REF_NO")
    private String referenceNO;

    /**
     * 业务编号
     */
    @Column(name = "T_TRAN_NO")
    private String tranNO;

    /**
     * 结算金额
     */
    @Column(name = "T_AMI")
    private BigDecimal settleAMT;

    /**
     * @return the duebillIssueId
     */
    public String getDuebillIssueId() {
        return duebillIssueId;
    }

    /**
     * @param duebillIssueId the duebillIssueId to set
     */
    public void setDuebillIssueId(String duebillIssueId) {
        this.duebillIssueId = duebillIssueId;
    }

    /**
     * @return the duebillIssuingextId
     */
    public String getDuebillIssuingextId() {
        return duebillIssuingextId;
    }

    /**
     * @param duebillIssuingextId the duebillIssuingextId to set
     */
    public void setDuebillIssuingextId(String duebillIssuingextId) {
        this.duebillIssuingextId = duebillIssuingextId;
    }

    /**
     * @return the issuedAmount
     */
    public BigDecimal getIssuedAmount() {
        return issuedAmount;
    }

    /**
     * @param issuedAmount the issuedAmount to set
     */
    public void setIssuedAmount(BigDecimal issuedAmount) {
        this.issuedAmount = issuedAmount;
    }

    /**
     * @return the currentBalance
     */
    public BigDecimal getCurrentBalance() {
        return currentBalance;
    }

    /**
     * @param currentBalance the currentBalance to set
     */
    public void setCurrentBalance(BigDecimal currentBalance) {
        this.currentBalance = currentBalance;
    }

    /**
     * @return the extendsDate
     */
    public Date getExtendsDate() {
        return extendsDate;
    }

    /**
     * @param extendsDate the extendsDate to set
     */
    public void setExtendsDate(Date extendsDate) {
        this.extendsDate = extendsDate;
    }

    /**
     * @return the dueDate
     */
    public Date getDueDate() {
        return dueDate;
    }

    /**
     * @param dueDate the dueDate to set
     */
    public void setDueDate(Date dueDate) {
        this.dueDate = dueDate;
    }

    /**
     * @return the interestRates
     */
    public BigDecimal getInterestRates() {
        return interestRates;
    }

    /**
     * @param interestRates the interestRates to set
     */
    public void setInterestRates(BigDecimal interestRates) {
        this.interestRates = interestRates;
    }

 

   

    /**
     * @return the acumulativeCost
     */
    public BigDecimal getAcumulativeCost() {
        return acumulativeCost;
    }

    /**
     * @param acumulativeCost the acumulativeCost to set
     */
    public void setAcumulativeCost(BigDecimal acumulativeCost) {
        this.acumulativeCost = acumulativeCost;
    }

    /**
     * @return the duebillStatesDetail
     */
    public String getDuebillStatesDetail() {
        return duebillStatesDetail;
    }

    /**
     * @param duebillStatesDetail the duebillStatesDetail to set
     */
    public void setDuebillStatesDetail(String duebillStatesDetail) {
        this.duebillStatesDetail = duebillStatesDetail;
    }

//    /**
//     * @return the noticeNumber
//     */
//    public String getNoticeNumber() {
//        return noticeNumber;
//    }
//
//    /**
//     * @param noticeNumber the noticeNumber to set
//     */
//    public void setNoticeNumber(String noticeNumber) {
//        this.noticeNumber = noticeNumber;
//    }

    /**
     * @return the loanNO
     */
    public String getLoanNO() {
        return loanNO;
    }

    /**
     * @param loanNO the loanNO to set
     */
    public void setLoanNO(String loanNO) {
        this.loanNO = loanNO;
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
     * @return the referenceNO
     */
    public String getReferenceNO() {
        return referenceNO;
    }

    /**
     * @param referenceNO the referenceNO to set
     */
    public void setReferenceNO(String referenceNO) {
        this.referenceNO = referenceNO;
    }

    /**
     * @return the tranNO
     */
    public String getTranNO() {
        return tranNO;
    }

    /**
     * @param tranNO the tranNO to set
     */
    public void setTranNO(String tranNO) {
        this.tranNO = tranNO;
    }

    /**
     * @return the settleAMT
     */
    public BigDecimal getSettleAMT() {
        return settleAMT;
    }

    /**
     * @param settleAMT the settleAMT to set
     */
    public void setSettleAMT(BigDecimal settleAMT) {
        this.settleAMT = settleAMT;
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
}

