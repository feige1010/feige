/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package netbank.firm.cash.payee.model;

import java.io.Serializable;
import java.util.Date;

import javax.persistence.*;

import org.hibernate.annotations.Type;

/**
 * 常用往来账
 * @author AsOne
 */
@Entity
@Table(name = "T_USUAL_PAYEE")
@DiscriminatorColumn(name = "PAYEE_TYPE",
discriminatorType = DiscriminatorType.INTEGER)
@SequenceGenerator(name="S_T_USUAL_PAYEE", initialValue = 1, allocationSize = 1, sequenceName="S_T_USUAL_PAYEE")
public abstract class Payee implements Serializable {
    /**
     * 内部编号
     */
    @Id
    @GeneratedValue(strategy = GenerationType.SEQUENCE, generator = "S_T_USUAL_PAYEE")
    @Column(name="ID_USUAL_PAYEE")
    private Integer id = -1;
    /**
     * 企业编号
     */
    @Column(name="NCID")
    private String NCID;
    /**
     * 联网行号
     */
    @Column(name="UB_CODE")
    private String ubCode;
    /**
     * 序列
     */
    @Column(name="SEQ")
    private Integer seq;
    /**
     * 更新日期
     */
    @Temporal(TemporalType.TIMESTAMP)
    @Column(name="UPDATE_TIME")
    private Date updateDate;
    /**
     * 创建日期
     */
    @Temporal(TemporalType.TIMESTAMP)
    @Column(name="CREATE_TIME")
    private Date createDate;
    /**
     * 是否同城
     */
    @Column(name="INTRA_CITY")
    @Type(type = "netbank.firm.base.TrueFalseType")
    private Boolean intraCity;
    /**
     * 是否他行
     */
    @Column(name="INTRA_BANK")
    @Type(type = "netbank.firm.base.TrueFalseType")
    private Boolean intraBank;
    /**
     * 联系人手机号码
     */
    @Column(name="CONTACT_MOBILE")
    private String contactMobile;
    /**
     * 收款行号
     */
    @Column(name="BANK_NUM")
    private String bankNum;
    /**
     * 联系人姓名
     */
    @Column(name="CONTACT_NAME")
    private String contactName;
    /**
     * 分类
     */
    @Column(name="CATALOG")
    private String catalog;
    /**
     * 汇入地点
     */
    @Column(name="EXCH_CITY")
    private String exchCity;
    /**
     * 账号
     */
    @Column(name="ACCT_ID")
    private String accountId;
    /**
     * 收款人别名
     */
    @Column(name="ALIAS_NAME")
    private String aliasName;
    /**
     * 联系人邮箱
     */
    @Column(name="CONTACT_EMAIL")
    private String contractEmail;
    /**
     * 收款人开户行名称
     */
    @Column(name="BANK_NAME")
    private String bankName;
    /**
     * 收款人单位名称
     */
    @Column(name="NAME")
    private String name;

    public String getNCID() {
        return NCID;
    }

    public void setNCID(String NCID) {
        this.NCID = NCID;
    }

    public String getAccountId() {
        return accountId;
    }

    public void setAccountId(String accountId) {
        this.accountId = accountId;
    }

    public String getAliasName() {
        return aliasName;
    }

    public void setAliasName(String aliasName) {
        this.aliasName = aliasName;
    }

    public String getBankName() {
        return bankName;
    }

    public void setBankName(String bankName) {
        this.bankName = bankName;
    }

    public String getBankNum() {
        return bankNum;
    }

    public void setBankNum(String bankNum) {
        this.bankNum = bankNum;
    }

    public String getCatalog() {
        return catalog;
    }

    public void setCatalog(String catalog) {
        this.catalog = catalog;
    }

    public String getContactMobile() {
        return contactMobile;
    }

    public void setContactMobile(String contactMobile) {
        this.contactMobile = contactMobile;
    }

    public String getContactName() {
        return contactName;
    }

    public void setContactName(String contactName) {
        this.contactName = contactName;
    }

    public String getContractEmail() {
        return contractEmail;
    }

    public void setContractEmail(String contractEmail) {
        this.contractEmail = contractEmail;
    }

    public Date getCreateDate() {
        return createDate;
    }

    public void setCreateDate(Date createDate) {
        this.createDate = createDate;
    }

    public String getExchCity() {
        return exchCity;
    }

    public void setExchCity(String exchCity) {
        this.exchCity = exchCity;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public Boolean getIntraBank() {
        return intraBank;
    }

    public void setIntraBank(Boolean intraBank) {
        this.intraBank = intraBank;
    }

    public Boolean getIntraCity() {
        return intraCity;
    }

    public void setIntraCity(Boolean intraCity) {
        this.intraCity = intraCity;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public Integer getSeq() {
        return seq;
    }

    public void setSeq(Integer seq) {
        this.seq = seq;
    }

    public String getUbCode() {
        return ubCode;
    }

    public void setUbCode(String ubCode) {
        this.ubCode = ubCode;
    }

    public Date getUpdateDate() {
        return updateDate;
    }

    public void setUpdateDate(Date updateDate) {
        this.updateDate = updateDate;
    }


}
