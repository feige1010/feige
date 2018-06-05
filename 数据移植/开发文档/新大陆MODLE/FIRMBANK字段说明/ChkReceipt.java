/*
 * ChkReceipt.java
 *
 * 功能： 企业对账回单
 * 类名： ChkReceipt
 *
 *   ver     变更日期            修改人       修改说明
 * ──────────────────────────────────
 *   V1.0   2009-12-16    孙宇翔          初版
 *
 * Copyright (c) 2006, 2008 NewlandComputer All Rights Reserved.
 * LICENSE INFORMATION
*/
package netbank.firm.txnquery.checkbalance.model;

import javax.persistence.*;
import java.io.Serializable;
import java.math.BigDecimal;
import java.util.Date;

/**
 * 企业对账回单
 * @author syx <Moonish>
 * @version Ver 1.0 2009-12-16 初版
 * @since Ver 1.0
 */
@Entity
@Table(name = "T_CHECK_RECEIPT")
@SequenceGenerator(name="S_T_CHECK_RECEIPT", initialValue = 1, allocationSize = 1, sequenceName="S_T_CHECK_RECEIPT")
public class ChkReceipt implements Serializable {

    /** 内部编号 */
    @Id
    @GeneratedValue(strategy = GenerationType.SEQUENCE, generator = "S_T_CHECK_RECEIPT")
    @Column(name = "ID_CHK_RETURN", updatable = false)
    private Integer ID;
    
    /**
     * 联网行编号
     * @since Ver 1.0
     */
    @Column(name = "UB_CODE", updatable = false)
    private String ubCode;
    /**
     * 企业客户号
     * @since Ver 1.0
     */
    @Column(name = "NCID", updatable = false)
    private String ncid;
    /**
     * 操作员
     * @since Ver 1.0
     */
    @Column(name = "OID")
    private String oid;
    /**
     * 账户账号
     * @since Ver 1.0
     */
    @Column(name = "ACCT_NO")
    private String acctNo;
    /**
     * 账户名称
     * @since Ver 1.0
     */
    @Column(name = "ACCT_NAME")
    private String acctName;
    /**
     * 对账年月
     * @since Ver 1.0
     */
    @Column(name = "CHK_MONTH")
    private String chkMonth;
    /**
     * 币种
     * @since Ver 1.0
     */
    @Column(name = "CURRENCY")
    private String currency;
    /**
     * 银行余额
     * @since Ver 1.0
     */
    @Column(name = "BANK_BALANCE")
    private BigDecimal bankBalance;
    /**
     * 是否相符
     * @since Ver 1.0
     */
    @Column(name = "ACCORDANT")
    private Boolean accordant;
    /**
     * 我方单位余额
     * @since Ver 1.0
     */
    @Column(name = "CHK_BALANCE")
    private BigDecimal chkBalance;
    /**
     * 检查结果
     * @since Ver 1.0
     */
    @Column(name = "CHECK_RESULT")
    private String chkResult;
    /**
     * 不符原因
     * @since Ver 1.0
     */
    @Column(name = "CAUSE")
    private String cause;
    /**
     * 联系人
     * @since Ver 1.0
     */
    @Column(name = "LINKMAN")
    private String linkman;
    /**
     * 联系电话
     * @since Ver 1.0
     */
    @Column(name = "TEL")
    private String tel;
    /**
     * 对账日期
     * @since Ver 1.0
     */
    @Column(name = "CHK_DATE")
    private Date chkDate;
    /**
     * 企业调解金额
     * @since Ver 1.0
     */
    @Column(name = "CHK_ADJUST_AMT")
    private BigDecimal chkAdjustAmount = new BigDecimal("0");
    /**
     * 银行调解金额
     * @since Ver 1.0
     */
    @Column(name = "BK_ADJUST_AMT")
    private BigDecimal bankAdjustAmount = new BigDecimal("0");
    /**
     * 发送时间
     * @since Ver 1.0
     */
    @Column(name = "SEND_TIME")
    private Date sendDate;
    /**
     * 修改时间
     * @since Ver 1.0
     */
    @Column(name = "UPDATE_TIME")
    private Date updateDate;

    public String getUbCode() {
        return ubCode;
    }

    public void setUbCode(String ubCode) {
        this.ubCode = ubCode;
    }

    public String getNcid() {
        return ncid;
    }

    public void setNcid(String ncid) {
        this.ncid = ncid;
    }

    public String getOid() {
        return oid;
    }

    public void setOid(String oid) {
        this.oid = oid;
    }

    public String getAcctNo() {
        return acctNo;
    }

    public void setAcctNo(String acctNo) {
        this.acctNo = acctNo;
    }

    public String getAcctName() {
        return acctName;
    }

    public void setAcctName(String acctName) {
        this.acctName = acctName;
    }

    public String getChkMonth() {
        return chkMonth;
    }

    public void setChkMonth(String chkMonth) {
        this.chkMonth = chkMonth;
    }

    public String getCurrency() {
        return currency;
    }

    public void setCurrency(String currency) {
        this.currency = currency;
    }

    public BigDecimal getBankBalance() {
        return bankBalance;
    }

    public void setBankBalance(BigDecimal bankBalance) {
        this.bankBalance = bankBalance;
    }

    public Boolean getAccordant() {
        return accordant;
    }

    public void setAccordant(Boolean accordant) {
        this.accordant = accordant;
    }

    public BigDecimal getChkBalance() {
        return chkBalance;
    }

    public void setChkBalance(BigDecimal chkBalance) {
        this.chkBalance = chkBalance;
    }

    public String getChkResult() {
        return chkResult;
    }

    public void setChkResult(String chkResult) {
        this.chkResult = chkResult;
    }

    public String getCause() {
        return cause;
    }

    public void setCause(String cause) {
        this.cause = cause;
    }

    public String getLinkman() {
        return linkman;
    }

    public void setLinkman(String linkman) {
        this.linkman = linkman;
    }

    public String getTel() {
        return tel;
    }

    public void setTel(String tel) {
        this.tel = tel;
    }

    public Date getChkDate() {
        return chkDate;
    }

    public void setChkDate(Date chkDate) {
        this.chkDate = chkDate;
    }

    public BigDecimal getChkAdjustAmount() {
        return chkAdjustAmount;
    }

    public void setChkAdjustAmount(BigDecimal chkAdjustAmount) {
        this.chkAdjustAmount = chkAdjustAmount;
    }

    public BigDecimal getBankAdjustAmount() {
        return bankAdjustAmount;
    }

    public void setBankAdjustAmount(BigDecimal bankAdjustAmount) {
        this.bankAdjustAmount = bankAdjustAmount;
    }

    public Date getSendDate() {
        return sendDate;
    }

    public void setSendDate(Date sendDate) {
        this.sendDate = sendDate;
    }

    public Date getUpdateDate() {
        return updateDate;
    }

    public void setUpdateDate(Date updateDate) {
        this.updateDate = updateDate;
    }
}
