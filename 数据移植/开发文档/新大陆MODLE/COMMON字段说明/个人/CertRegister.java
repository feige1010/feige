/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package netbank.common.cert.model;

import java.io.Serializable;
import java.math.BigDecimal;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToMany;
import javax.persistence.SequenceGenerator;
import javax.persistence.Table;

/*
 * CertInfo.java
 *
 * 功能： 证书信息实体
 * 类名： CertInfo
 *
 *   ver     变更日期    修改人    修改说明
 * ──────────────────────────────────
 *   V1.00   无          lotin       初版
 *
 * Copyright (c) 2006, 2008 NewlandComputer All Rights Reserved.
 * LICENSE INFORMATION
 */
@Entity
@Table(name = "T_CERT")
@SequenceGenerator(name = "S_T_CERT",allocationSize=1,sequenceName = "S_T_CERT")
public class CertRegister implements Serializable {
  private static final long serialVersionUID = 3009653608691179600L;
    /**
     * 享受证书保护
     */
	public static final int PROTECT_ENABLED = 0;
    /**
     * 不享受证书保护
     */
    public static final int PROTECT_DISABLED = -1;
    public static final int PROTECT_NEED_CONFIRM = -2;
    
	// 客户类型0－企业客户，1－个人客户
	public static final String CUST_FIRM = "0";
	public static final String CUST_PERSONAL = "1";

	// 证书介质2－预置证书
	public static final String MEDIA_PRE = "2";
	// 证书状态
	public static final String STATUS_ACTIVE = "1"; // 有效
	public static final String STATUS_WEB_APPLY = "2"; // 网上申请状态
	public static final String STATUS_ARCHIVE = "0"; // 无效
	// 目前用到:0－个人用户证书/3－企业用户证书/5-商户证书
	public static final String TYPE_PERSONAL = "0";
	public static final String TYPE_FIRM = "3";
	public static final String TYPE_MERCHANT = "5";
	// 废止原因（0－未说明、1－密钥泄露、3－隶属机构改变、4－证书被替代、5－停止使用、6－参考号或授权码丢失）
	// 证件种类（0－身份证、1－护照、2－军官证、3－户口本、4－警官证、5－士兵证、6－文职人员、7－回乡证、8－其他、
	// 9－工商号、10－税号、11－域名、12－企业证件）

	// 申请方式
	public static final String APPLY_MODE_COUNTER = "COUNTER";
	public static final String APPLY_MODE_WEB = "WEB";
    /**
     * 表的主键
     */
    private Integer idCert;
    /**
     * 证书类型
     */
    private String certType;
    /**
     * 账户代号
     */
    private String acctNo;
    /**
     * 证件类型
     */
    private String idType;
    /**
     * 证件号码
     */
    private String idNo;
    /**
     * 客户名称
     */
    private String custName;///////-----
    /**
     * 证书序号——证书ID
     */
    private String keyNo;
    /**
     * 原证书ID
     */
    private String oldId;//////--
    /**
     * 参考号
     */
    private String refCode;
    /**
     * 授权码
     */
    private String authCode;

    /**
     * 下载码
     */
    private String downloadCode;
    /**
     * 到期日期
     */
    private Date overDate;
    /**
     * iso DN号
     */
    private String dnIso;
    /**
     * 证书介质
     */
    private String media;
    /**
     * 联网行编号
     */
    private String ubCode;//-----
    /**
     * 创建日期
     */
    private Date createDate;//===
    /**
     * 更新日期
     */
    private Date updateDate;///---
    /**
     * 状态
     */
    private String status;
    /**
     * 别名
     */
    private String alias;
    /**
     * 英文名称
     */
    private String ename;
    /**
     * 中文名称
     */
    private String cname;
    /**
     * 申请方式
     */
    private String mode;

    /**
     * 需要缴费的日期-改字段用于缓存核心数据
     */
    private Date payDate;//---

    /**
     * 需要缴费的金额
     */
    private BigDecimal payAmount;///---
    /**
     * 证书绑定(个人-账户，企业-客户号)
     */
    private List<CertBindAcct> certBindAcctList;

    @Column(name = "alias")
    public String getAlias() {
        return alias;
    }

    public void setAlias(String alias) {
        this.alias = alias;
    }

    @Column(name = "cre_date")
    public Date getCreateDate() {
        return createDate;
    }

    public void setCreateDate(Date createDate) {
        this.createDate = createDate;
    }

    @Column(name = "status")
    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }

    @Column(name = "upd_date")
    public Date getUpdateDate() {
        return updateDate;
    }

    public void setUpdateDate(Date updateDate) {
        this.updateDate = updateDate;
    }

    @Column(name = "acct_no")
    public String getAcctNo() {
        return acctNo;
    }

    public void setAcctNo(String acctNo) {
        this.acctNo = acctNo;
    }

    @Column(name = "auth_code")
    public String getAuthCode() {
        return authCode;
    }

    public void setAuthCode(String authCode) {
        this.authCode = authCode;
    }

    @Column(name = "cert_type")
    public String getCertType() {
        return certType;
    }

    public void setCertType(String certType) {
        this.certType = certType;
    }

    @Column(name = "dniso")
    public String getDnIso() {
        return dnIso;
    }

    public void setDnIso(String dnIso) {
        this.dnIso = dnIso;
    }

    @Column(name = "download_code")
    public String getDownloadCode() {
        return downloadCode;
    }

    public void setDownloadCode(String downloadCode) {
        this.downloadCode = downloadCode;
    }

    @Column(name = "id_no")
    public String getIdNo() {
        return idNo;
    }

    public void setIdNo(String idNo) {
        this.idNo = idNo;
    }

    @Column(name = "id_type")
    public String getIdType() {
        return idType;
    }

    public void setIdType(String idType) {
        this.idType = idType;
    }

    @Column(name = "media")
    public String getMedia() {
        return media;
    }

    public void setMedia(String media) {
        this.media = media;
    }

    @javax.persistence.Transient
    public String getOldId() {
        return oldId;
    }

    public void setOldId(String oldId) {
        this.oldId = oldId;
    }

    @Column(name = "over_date")
    public Date getOverDate() {
        return overDate;
    }

    public void setOverDate(Date overDate) {
        this.overDate = overDate;
    }

    @Column(name = "ref_code")
    public String getRefCode() {
        return refCode;
    }

    public void setRefCode(String refCode) {
        this.refCode = refCode;
    }

    @Column(name = "ub_code")
    public String getUbCode() {
        return ubCode;
    }

    public void setUbCode(String ubCode) {
        this.ubCode = ubCode;
    }

    @Id
    @GeneratedValue(strategy = GenerationType.SEQUENCE, generator = "S_T_CERT")
    @Column(name = "id_cert")
    public Integer getIdCert() {
        return idCert;
    }

    public void setIdCert(Integer idCert) {
        this.idCert = idCert;
    }

    @Column(name = "key_no")
    public String getKeyNo() {
        return keyNo;
    }

    public void setKeyNo(String keyNo) {
        this.keyNo = keyNo;
    }

    @Column(name = "c_name")
    public String getCname() {
        return cname;
    }

    public void setCname(String cname) {
        this.cname = cname;
    }

    @Column(name = "e_name")
    public String getEname() {
        return ename;
    }

    public void setEname(String ename) {
        this.ename = ename;
    }

    @Column(name = "apply_mode")
    public String getMode() {
        return mode;
    }

    public void setMode(String mode) {
        this.mode = mode;
    }

     @Column(name = "pay_date")
    public Date getPayDate() {
        return payDate;
    }

    public void setPayDate(Date payDate) {
        this.payDate = payDate;
    }

    @javax.persistence.Transient
    public BigDecimal getPayAmount() {
        return payAmount;
    }

    public void setPayAmount(BigDecimal payAmount) {
        this.payAmount = payAmount;
    }


    @javax.persistence.Transient
    public String getCustName() {
        return custName;
    }

    public void setCustName(String custName) {
        this.custName = custName;
    }

    @OneToMany(cascade = javax.persistence.CascadeType.ALL,targetEntity = CertBindAcct.class,fetch=FetchType.EAGER)
    @JoinColumn(name = "id_cert")
    public List<CertBindAcct> getCertBindAcctList() {
        return certBindAcctList;
    }

    public void setCertBindAcctList(List<CertBindAcct> certBindAcctList) {
        this.certBindAcctList = certBindAcctList;
    }

    public void addCertBindAcct(CertBindAcct attr) {
        if (this.certBindAcctList == null) {
            this.certBindAcctList = new ArrayList<CertBindAcct>();
        }
        this.certBindAcctList.add(attr);
    }
}
