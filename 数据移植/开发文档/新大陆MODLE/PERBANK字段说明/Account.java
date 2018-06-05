/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package netbank.pers.account.model;

import java.io.Serializable;
import java.util.Date;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.SequenceGenerator;
import javax.persistence.Version;

/**
 *
 * @author ld
 */
@Entity(name = "T_ACCOUNT")
@SequenceGenerator(name = "S_T_ACCOUNT", allocationSize = 1, sequenceName = "S_T_ACCOUNT")
public class Account implements Serializable {

    /**
     *
     */
    private static final long serialVersionUID = 8318770332025881776L;
    /**
     * 已签约 有效
     */
    public static final String STATUS_VALID = "1";
    /**
     * 已解约 无效
     */
    public static final String STATUS_INVALID = "0";
    /**
     * 已挂失 无效
     */
    public static final String STATUS_SIGN_LOSS = "2";
    /**
     *  凭证 有效
     */
    public static final String VOUCHER_STATUS_VALID = "0";
    /**
     * 凭证无效
     */
    public static final String VOUCHER_STATUS_INVALID = "1";
    /**
     * 账户类型 - 卡
     */
    public static final String ACCT_TYPE_CARD = "0";
    /**
     * 账户类型 - 存折
     */
    public static final String ACCT_TYPE_PASSBOOK = "1";
    /**
     * 账户类型 - 活期
     */
    public static final String ACCT_TYPE_SAVINGS = "2";
    /**
     * 账户类型 - 其他
     */
    public static final String ACCT_TYPE_OTHER = "9";
    /**
     *  序列号
     */
    private Integer accountId;
    /**
     * 账户代号
     */
    private String acctNo;
    /**
     * 联网行编号
     */
    private String ubCode;
    /**
     * 客户代号
     */
    private String cid;
    /**
     * 状态
     */
    private String status;
    /**
     * 理财账号
     */
    private String finAcctNo;
    /**
     * 账户类型
     */
    private String acctType;
    /**
     * 持卡人姓名
     */
    private String ownerName;
    /**
     * 别名
     */
    private String acctAlias;
    /**
     * 证件类型
     */
    private String idType;
    /**
     * 证件号码
     */
    private String idNo;
    /**
     * 币种
     */
    private String ccy;
    /**
     * 开户分行
     */
    private String branch;
    /**
     * 开户网点
     */
    private String subBranch;
    /**
     * 卡启用日
     */
    private Date openDate;
    /**
     * 凭证号码
     */
    private String voucherNo;
    /**
     * 凭证状态
     */
    private String voucherStatus;
    /**
     * 理财卡开通日期
     */
    private Date fincDate;
    /**
     * 创建日期
     */
    private Date creDate;
    /**
     * 修改日期
     */
    private Date updDate;
    /**
     * 版本
     */
    private int version;
    /**
     * 卡有效期

     */
    private Date overDate;
    private String businessCode;
    /**
     * 核心客户号
     * add by jacksonhuang
     */
    private String kernelId;

    @Column(name = "OVER_DATE")
    public Date getOverDate() {
        return overDate;
    }

    public void setOverDate(Date overDate) {
        this.overDate = overDate;
    }

    @Column(name = "SUB_BRANCH")
    public String getSubBranch() {
        return subBranch;
    }

    public void setSubBranch(String subBranch) {
        this.subBranch = subBranch;
    }

    @Id
    @GeneratedValue(strategy = GenerationType.SEQUENCE, generator = "S_T_ACCOUNT")
    @Column(name = "ID_ACCOUNT", updatable = false)
    public Integer getAccountId() {
        return accountId;
    }

    public void setAccountId(Integer accountId) {
        this.accountId = accountId;
    }

    @Column(name = "ACCT_ALIAS")
    public String getAcctAlias() {
        return acctAlias;
    }

    public void setAcctAlias(String acctAlias) {
        this.acctAlias = acctAlias;
    }

    @Column(name = "ACCT_NO")
    public String getAcctNo() {
        return acctNo;
    }

    public void setAcctNo(String acctNo) {
        this.acctNo = acctNo;
    }

    @Column(name = "ACCT_TYPE")
    public String getAcctType() {
        return acctType;
    }

    public void setAcctType(String acctType) {
        this.acctType = acctType;
    }

    @Column(name = "BRANCH")
    public String getBranch() {
        return branch;
    }

    public void setBranch(String branch) {
        this.branch = branch;
    }

    @Column(name = "CCY")
    public String getCcy() {
        return ccy;
    }

    public void setCcy(String ccy) {
        this.ccy = ccy;
    }

    @Column(name = "CID")
    public String getCid() {
        return cid;
    }

    public void setCid(String cid) {
        this.cid = cid;
    }

    @Column(name = "CRE_DATE")
    public Date getCreDate() {
        return creDate;
    }

    public void setCreDate(Date creDate) {
        this.creDate = creDate;
    }

    @Column(name = "FIN_ACCT_NO")
    public String getFinAcctNo() {
        return finAcctNo;
    }

    public void setFinAcctNo(String finAcctNo) {
        this.finAcctNo = finAcctNo;
    }

    @Column(name = "FINC_DATE")
    public Date getFincDate() {
        return fincDate;
    }

    public void setFincDate(Date fincDate) {
        this.fincDate = fincDate;
    }

    @Column(name = "ID_NO")
    public String getIdNo() {
        return idNo;
    }

    public void setIdNo(String idNo) {
        this.idNo = idNo;
    }

    @Column(name = "ID_TYPE")
    public String getIdType() {
        return idType;
    }

    public void setIdType(String idType) {
        this.idType = idType;
    }

    @Column(name = "OPEN_DATE")
    public Date getOpenDate() {
        return openDate;
    }

    public void setOpenDate(Date openDate) {
        this.openDate = openDate;
    }

    @Column(name = "OWNER_NAME")
    public String getOwnerName() {
        return ownerName;
    }

    public void setOwnerName(String ownerName) {
        this.ownerName = ownerName;
    }

    @Column(name = "STATUS")
    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }

    @Column(name = "UB_CODE")
    public String getUbCode() {
        return ubCode;
    }

    public void setUbCode(String ubCode) {
        this.ubCode = ubCode;
    }

    @Column(name = "UPD_DATE")
    public Date getUpdDate() {
        return updDate;
    }

    public void setUpdDate(Date updDate) {
        this.updDate = updDate;
    }

    @Version
    @Column(name = "VERSION")
    public int getVersion() {
        return version;
    }

    public void setVersion(int version) {
        this.version = version;
    }

    @Column(name = "VOUCHER_NO")
    public String getVoucherNo() {
        return voucherNo;
    }

    public void setVoucherNo(String voucherNo) {
        this.voucherNo = voucherNo;
    }

    @Column(name = "VOUCHER_STATUS")
    public String getVoucherStatus() {
        return voucherStatus;
    }

    public void setVoucherStatus(String voucherStatus) {
        this.voucherStatus = voucherStatus;
    }

    @javax.persistence.Transient
    public String getBusinessCode() {
        return businessCode;
    }

    public void setBusinessCode(String businessCode) {
        this.businessCode = businessCode;
    }

    @javax.persistence.Transient
    public String getKernelId() {
        return kernelId;
    }

    public void setKernelId(String kernelId) {
        this.kernelId = kernelId;
    }
}
