package netbank.firm.crm.model;

import java.io.Serializable;
import java.math.BigDecimal;
import java.util.Date;

import javax.persistence.*;

/**
 * 企业信息
 * 
 * @author zhangzhaoxing 2009-08-04
 */
@Entity
@Table(name = "t_firm")
@SequenceGenerator(name = "S_T_FIRM", initialValue = 1, allocationSize = 1, sequenceName = "S_T_FIRM")
public class Firm implements Serializable {

    private static final long serialVersionUID = 1L;
    //状态
    public static final int ARCHIVE = 0;
    public static final int ACTIVE = 1;
    public static final int LOCK = 2;
    /**
     * 内部ID
     */
    @Id
    @GeneratedValue(strategy = GenerationType.SEQUENCE, generator = "S_T_FIRM")
    @Column(name = "ID_FIRM", updatable = false)
    private Integer ID;
    /**
     * 联网行号
     */
    @Column(name = "UB_CODE", updatable = false)
    private String ubcode;
    /**
     * 客户代号
     */
    @Column(name = "NCID", updatable = false)
    private String NCID;
    /**
     * 核心客户号
     */
    @Column(name = "CID")
    private String CID;
    /**
     * 机构代号
     */
    @Column(name = "BRANCH_ID")
    private String branchId;
    /**
     * 行业代号
     */
    @Column(name = "INDUSTRY_FIELD")
    private String industryFiels;
    /**
     * 邮政编码
     */
    @Column(name = "POST_CODE")
    private String postCode;
    /**
     * 记录状态
     */
    @Column(name = "FIRM_STATUS")
    private int status;
    /**
     * 是否为重要客户
     */
    @Column(name = "IS_VIP")
    private String isVip;
    /**
     * 柜员流水号
     */
    @Column(name = "BANK_TRACE_ID")
    private String bankTraceId;
    /**
     * 更新时间
     */
    @Temporal(TemporalType.TIMESTAMP)
    @Column(name = "UPDATE_TIME")
    private Date updateDate;
    /**
     * 更新时间
     */
    @Temporal(TemporalType.TIMESTAMP)
    @Column(name = "CREATE_TIME")
    private Date createDate;
    /**
     * 企业类型
     */
    @Column(name = "FIRM_TYPE")
    private String type;
    /**
     * 企业名称（中文）
     */
    @Column(name = "CNAME")
    private String cname;
    /**
     * 企业名称（英文）
     */
    @Column(name = "ENAME")
    private String ename;
    /**
     * 地址(中文）
     */
    @Column(name = "CN_ADDRESS")
    private String cnAddress;
    /**
     * 地址(英文)
     */
    @Column(name = "EN_ADDRESS")
    private String enAddress;
    /**
     * 应该缴费的日期-用于缓存核心返回数据
     */
    @Column(name = "pay_date")
    private Date payDate;
    @javax.persistence.Transient
    private BigDecimal payAmount;
    /**
     * 联系人信息
     */
    @Embedded
    private LinkMan linkMan;

    public Integer getID() {
        return ID;
    }

    public void setID(Integer id) {
        ID = id;
    }

    public String getUbcode() {
        return ubcode;
    }

    public void setUbcode(String ubcode) {
        this.ubcode = ubcode;
    }

    public String getNCID() {
        return NCID;
    }

    public void setNCID(String ncid) {
        NCID = ncid;
    }

    public String getCID() {
        return CID;
    }

    public void setCID(String cid) {
        CID = cid;
    }

    public String getBranchId() {
        return branchId;
    }

    public void setBranchId(String branchId) {
        this.branchId = branchId;
    }

    public String getIndustryFiels() {
        return industryFiels;
    }

    public void setIndustryFiels(String industryFiels) {
        this.industryFiels = industryFiels;
    }

    public String getPostCode() {
        return postCode;
    }

    public void setPostCode(String postCode) {
        this.postCode = postCode;
    }

    public int getStatus() {
        return status;
    }

    public void setStatus(int status) {
        this.status = status;
    }

    public String getIsVip() {
        return isVip;
    }

    public void setIsVip(String isVip) {
        this.isVip = isVip;
    }

    public String getBankTraceId() {
        return bankTraceId;
    }

    public void setBankTraceId(String bankTraceId) {
        this.bankTraceId = bankTraceId;
    }

    public Date getUpdateDate() {
        return updateDate;
    }

    public void setUpdateDate(Date updateDate) {
        this.updateDate = updateDate;
    }

    public Date getCreateDate() {
        return createDate;
    }

    public void setCreateDate(Date createDate) {
        this.createDate = createDate;
    }

    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type;
    }

    public String getCname() {
        return cname;
    }

    public void setCname(String cname) {
        this.cname = cname;
    }

    public String getEname() {
        return ename;
    }

    public void setEname(String ename) {
        this.ename = ename;
    }

    public String getCnAddress() {
        return cnAddress;
    }

    public void setCnAddress(String cnAddress) {
        this.cnAddress = cnAddress;
    }

    public String getEnAddress() {
        return enAddress;
    }

    public void setEnAddress(String enAddress) {
        this.enAddress = enAddress;
    }

    public LinkMan getLinkMan() {
        return linkMan;
    }

    public void setLinkMan(LinkMan linkMan) {
        this.linkMan = linkMan;
    }

    public Date getPayDate() {
        return payDate;
    }

    public void setPayDate(Date payDate) {
        this.payDate = payDate;
    }

    public BigDecimal getPayAmount() {
        return payAmount;
    }

    public void setPayAmount(BigDecimal payAmount) {
        this.payAmount = payAmount;
    }
}
