package netbank.firm.cash.transfer.model;

import java.math.BigDecimal;
import java.util.Date;

import javax.persistence.Column;
import javax.persistence.DiscriminatorColumn;
import javax.persistence.DiscriminatorType;
import javax.persistence.Embedded;
import javax.persistence.Entity;
import javax.persistence.Inheritance;
import javax.persistence.InheritanceType;
import javax.persistence.Table;

import netbank.firm.base.instcore.model.FromAccount;
import netbank.firm.base.instcore.model.ToAccount;
import netbank.firm.cash.core.AbstractPayment;

/**
 * 支付类
 * @author zhangzhaoxing
 * 2009-10-15
 */
@Entity
@Table(name = "T_TRANSFER")
@Inheritance(strategy = InheritanceType.SINGLE_TABLE)
@DiscriminatorColumn(name = "TRANS_TYPE", discriminatorType = DiscriminatorType.STRING, length = 20)
public abstract class Transfer extends AbstractPayment {

    private static final long serialVersionUID = 1L;

    @Override
    public String getFromAcctId() {
        return fromAccount.getAcctId();
    }
    /**
     * 转账类型(TODO将来用分辨器)
     */
    @Column(name = "TRANS_TYPE", insertable = false, updatable = false)
    private String type;
    /**
     * 期望转账日期
     */
    @Column(name = "EXPECT_DATE", updatable = false)
    private Date expectDate;
    /**
     * 付款账户信息
     */
    @Embedded
    private FromAccount fromAccount;
    /**
     * 转帐金额
     */
    @Column(name = "AMOUNT", updatable = false)
    private BigDecimal amount;
    /**
     * 手续费
     */
    @Column(name = "FACTORAGE", updatable = false)
    private BigDecimal factorage;
    /**
     * 收款账户信息
     */
    @Embedded
    private ToAccount toAccount;
    /**
     * 摘要代号
     */
    @Column(name = "BRIEF_CODE", updatable = false)
    private String briefCode;
    /**
     * 摘要代号
     */
    @Column(name = "PURPOSE", updatable = false)
    private String purpose;
    /**
     * 支付级别方式
     */
    @Column(name = "URGENT_LEVEL", updatable = false)
    private String urgentLevel;
    /**
     * 支付密码
     */
    @Column(name = "PAY_PWD", updatable = false)
    private String payPassword;
    /**
     * 附言
     */
    @Column(name = "MEMO", updatable = false)
    private String memo;
    /**
     * 支付平台日期
     */
    @Column(name = "PAYDATE")
    private Date payDate;
    /**
     * 支付平台流水号
     */
    @Column(name = "PAYLSH")
    private String paylsh;

//	
//	/**
//	 * 结算中心账户
//	 */
//	@Column(name="HUB_ACCT_ID", updatable=false)
//	private String hubAcctId;
//	
//
//	/**
//	 * 结算中心账户名称
//	 */
//	@Column(name="HUB_ACCT_NAME", updatable=false)
//	private String hubAcctName;
//	
//	/**
//	 * 批量SVRTID
//	 */
//	@Column(name="BATCH_ID", updatable=false)
//	private String batchId;
//	
//	/**
//	 * 是否允许分开处理
//	 */
//	@Column(name="ALLOW_SPLIT", updatable=false)
//	@Type(type="yes_no")
//	private boolean allowSplit;
//	
//	/**
//	 * 序号
//	 */
//	@Column(name="SEQ", updatable=false)
//	private Integer seq;
    //=================================================================
    
    
    
    public String getType() {
        return type;
    }

    public Date getPayDate() {
		return payDate;
	}

	public void setPayDate(Date payDate) {
		this.payDate = payDate;
	}

	public String getPaylsh() {
		return paylsh;
	}

	public void setPaylsh(String paylsh) {
		this.paylsh = paylsh;
	}

	public void setType(String type) {
        this.type = type;
    }

    public BigDecimal getFactorage() {
        return factorage;
    }

    public void setFactorage(BigDecimal factorage) {
        this.factorage = factorage;
    }
    
    public ToAccount getToAccount() {
        return toAccount;
    }

    public void setToAccount(ToAccount toAccount) {
        this.toAccount = toAccount;
    }

    public String getBriefCode() {
        return briefCode;
    }

    public void setBriefCode(String briefCode) {
        this.briefCode = briefCode;
    }

    public String getPurpose() {
        return purpose;
    }

    public void setPurpose(String purpose) {
        this.purpose = purpose;
    }

    public String getUrgentLevel() {
        return urgentLevel;
    }

    public void setUrgentLevel(String urgentLevel) {
        this.urgentLevel = urgentLevel;
    }

    public String getPayPassword() {
        return payPassword;
    }

    public void setPayPassword(String payPassword) {
        this.payPassword = payPassword;
    }

    public String getMemo() {
        return memo;
    }

    public void setMemo(String memo) {
        this.memo = memo;
    }

    public Date getExpectDate() {
        return expectDate;
    }

    public void setExpectDate(Date expectDate) {
        this.expectDate = expectDate;
    }

    public FromAccount getFromAccount() {
        return fromAccount;
    }

    public void setFromAccount(FromAccount fromAccount) {
        this.fromAccount = fromAccount;
    }

    public BigDecimal getAmount() {
        return amount;
    }

    public void setAmount(BigDecimal amount) {
        this.amount = amount;
    }
}
