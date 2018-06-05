package netbank.firm.account.model;

import java.io.Serializable;

import java.math.BigDecimal;
import javax.persistence.*;

import org.hibernate.annotations.Type;

import netbank.firm.base.AbstractAccount;

/**
 * 签订账户
 * @author zhangzhaoxing
 * 2009-08-09
 */
@Entity
@Table(name = "T_ACCOUNT")
@SequenceGenerator(name="S_T_ACCOUNT", initialValue = 1, allocationSize = 1, sequenceName="S_T_ACCOUNT")
public class Account extends AbstractAccount implements Serializable {

    private static final long serialVersionUID = 1L;
    //活期帐户状态
    public final static int STATUS_DELETE = 0;
    public final static int STATUS_ACTIVE = 1;
    //账户类型
    public final static int TYPE_OWNER = 0;
    public final static int TYPE_GRANGTED = 1;
    /** 内部编号 */
    @Id
    @GeneratedValue(strategy = GenerationType.SEQUENCE, generator = "S_T_ACCOUNT")
    @Column(name = "ID_ACCOUNT", updatable = false)
    private Integer ID;
    /**
     * 联网行号
     */
    @Column(name = "UB_CODE", updatable = false)
    private String ubcode;
    /**
     * 所属客户代号
     */
    @Column(name = "NCID", updatable = false)
    private String NCID;
    /** 账户类型(0-一般账户，1-授权账户 */
    @Column(name = "ACCT_TYPE")
    private int type;
    /**
     * 账户别名
     */
    @Column(name = "ALIAS")
    private String alias;
    /**
     * 币种
     */
    @Column(name = "CURRENCY")
    private String currency = "01";
    /** 开户行名称 */
    @Column(name = "BANK_NAME")
    private String bankName;
    /** 活期帐户状态 */
    @Column(name = "ACCT_STATUS")
    private int status = -1;
    /**
     * 用户是否可以选择手工处理（透支处理）
     */
    @Column(name = "CAN_OVERDRAFT")
    @Type(type = "yes_no")
    private boolean overDraftAllow;
    /** 更新日期 */
    @Temporal(TemporalType.TIMESTAMP)
    @Column(name = "UPDATE_TIME")
    private java.util.Date updateDate;
    /** 申请日期 (第一次登记时间)*/
    @Temporal(TemporalType.TIMESTAMP)
    @Column(name = "CREATE_TIME")
    private java.util.Date createDate;

    @Column(name = "PROGRAM_NO")
    private String programNo;

    @javax.persistence.Transient
    private BigDecimal accountBalance;

    @javax.persistence.Transient
    private BigDecimal availableBalance;

    public Integer getID() {
        return ID;
    }

    public void setID(Integer id) {
        ID = id;
    }

    public int getType() {
        return type;
    }

    public void setType(int type) {
        this.type = type;
    }

    public String getBankName() {
        return bankName;
    }

    public void setBankName(String bankName) {
        this.bankName = bankName;
    }

    public int getStatus() {
        return status;
    }

    public void setStatus(int status) {
        this.status = status;
    }

    public boolean isOverDraftAllow() {
        return overDraftAllow;
    }

    public void setOverDraftAllow(boolean overDraftAllow) {
        this.overDraftAllow = overDraftAllow;
    }

    public java.util.Date getUpdateDate() {
        return updateDate;
    }

    public void setUpdateDate(java.util.Date updateDate) {
        this.updateDate = updateDate;
    }

    public java.util.Date getCreateDate() {
        return createDate;
    }

    public void setCreateDate(java.util.Date createDate) {
        this.createDate = createDate;
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

    public String getAlias() {
        return alias;
    }

    public void setAlias(String alias) {
        this.alias = alias;
    }

    public String getCurrency() {
        return currency;
    }

    public void setCurrency(String currency) {
        this.currency = currency;
    }

    public BigDecimal getAccountBalance() {
        return accountBalance;
    }

    public void setAccountBalance(BigDecimal accountBalance) {
        this.accountBalance = accountBalance;
    }

    public BigDecimal getAvailableBalance() {
        return availableBalance;
    }

    public void setAvailableBalance(BigDecimal availableBalance) {
        this.availableBalance = availableBalance;
    }

    /*--------------------------------add by syx 2009-12-11------------------------------*/
    @Override
    public boolean equals(Object o) {
        if (o == this) {
            return true;
        }
        if (!(o instanceof Account)) {
            return false;
        }
        final Account obj = (Account)o;
        if (this.ubcode.equals(obj.ubcode) && this.NCID.equals(obj.NCID) && this.acctId.equals(obj.acctId)) {
            return true;
        } else {
            return false;
        }
    }

    public String getProgramNo() {
        return programNo;
    }

    public void setProgramNo(String programNo) {
        this.programNo = programNo;
    }

    @Override
    public int hashCode() {
    	int code = 7;
    	code = 37 * code + (ubcode == null ? 0 : ubcode.hashCode());
    	code = 37 * code + (NCID == null ? 0 : NCID.hashCode());
    	code = 37 * code + (acctId == null ? 0 : acctId.hashCode());
        return code;
    }
}
