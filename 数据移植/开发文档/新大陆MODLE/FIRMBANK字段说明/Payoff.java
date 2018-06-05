package netbank.firm.cash.payoff.model;

import java.io.Serializable;
import java.math.BigDecimal;
import java.util.Date;
import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.JoinColumn;
import javax.persistence.OneToMany;
import javax.persistence.Table;

import netbank.firm.base.constant.BizCode;
import netbank.firm.cash.core.AbstractPayment;

import org.hibernate.annotations.Fetch;
import org.hibernate.annotations.FetchMode;
import org.hibernate.annotations.IndexColumn;
import org.hibernate.annotations.Type;

/**
 * 代发工资
 * @author zhangzhaoxing
 * 2009-11-06
 */
@Entity
@Table(name="T_PAYOFF")
public class Payoff extends AbstractPayment implements Serializable {
	private static final long serialVersionUID = 1L;

	@Override
	public String getBizCode() {
		return BizCode.PAYOFF;
	}

	@Override
	public Date getExpectDate() {
		return expectDate;
	}

	@Override
	public String getFromAcctId() {
		return fromAcctId;
	}

	@Override
	public BigDecimal getAmount() {
		return this.totalAmount;
	}
	
	
	//==================================================================================
	/**
	 * 期望转账日期
	 */
	@Column(name="EXPECT_DATE", updatable=false)
	private Date expectDate;

    /**
	 * 项目编号
	 */
	@Column(name="PROGRAM_NO", updatable=false)
	private String programNo;

	/**
	 * 付款账户 
	 */
	@Column(name="FROM_ACCT_ID", updatable=false)
	private String fromAcctId;
	/**
	 * 付款账户 
	 */
	@Column(name="FROM_ACCT_NAME", updatable=false)
	private String fromAcctNAME;
	
	/**
	 * 申请总金额
	 */
	@Column(name="TOTAL_AMOUNT", updatable=false)
	private BigDecimal totalAmount;
	
	/**
	 * 申请总笔数
	 */
	@Column(name="TOTAL_COUNT", updatable=false)
	private Integer totalCount;
	
	/**
	 * 是否校验名称
	 */
	@Column(name="IS_VERIFY", updatable=false)
	@Type(type ="yes_no")	
	private boolean verifyName=true;
	/**
	 * 交易成功金额
	 */
	@Column(name="SUCC_AMOUNT")
	private BigDecimal succAmount;
	/**
	 * 交易成功笔数 
	 */
	@Column(name="SUCC_COUNT")
	private Integer succCount;
	/**
	 * 交易失败金额
	 */
	@Column(name="FAIL_AMOUNT")
	private BigDecimal failAmount;
	/**
	 * 交易失败笔数 
	 */
	@Column(name="FAIL_COUNT")
	private Integer failCount;
	/**
	 * 摘要代码 
	 */
	@Column(name="BRIEF_CODE",updatable=false)
	private String briefCode;
	/**
	 * 用途 
	 */
	@Column(name="PURPOSE",updatable=false)
	private String purpose;
	/**
	 * 备注
	 */
	@Column(name="MEMO", updatable=false)
	private String memo;
	/**
	 * 标题
	 */
	@Column(name="TITLE", updatable=false)
	private String title;
	/**
	 * 工资册详细信息 
	 */
    @OneToMany(cascade = CascadeType.ALL, targetEntity = PayoffItem.class, fetch = FetchType.EAGER)
    @Fetch(FetchMode.SUBSELECT)
    @JoinColumn(name = "SRVRTID")
    @IndexColumn(name="SEQ",base=0)
	private List<PayoffItem> items;
	
	
	
	public String getFromAcctNAME() {
		return fromAcctNAME;
	}

	public void setFromAcctNAME(String fromAcctNAME) {
		this.fromAcctNAME = fromAcctNAME;
	}

	public BigDecimal getTotalAmount() {
		return totalAmount;
	}

	public void setTotalAmount(BigDecimal totalAmount) {
		this.totalAmount = totalAmount;
	}

	public Integer getTotalCount() {
		return totalCount;
	}

	public void setTotalCount(Integer totalCount) {
		this.totalCount = totalCount;
	}

	public boolean isVerifyName() {
		return verifyName;
	}

	public void setVerifyName(boolean verifyName) {
		this.verifyName = verifyName;
	}

	public BigDecimal getSuccAmount() {
		return succAmount;
	}

	public void setSuccAmount(BigDecimal succAmount) {
		this.succAmount = succAmount;
	}

	public Integer getSuccCount() {
		return succCount;
	}

	public void setSuccCount(Integer succCount) {
		this.succCount = succCount;
	}

	public BigDecimal getFailAmount() {
		return failAmount;
	}

	public void setFailAmount(BigDecimal failAmount) {
		this.failAmount = failAmount;
	}

	public Integer getFailCount() {
		return failCount;
	}

	public void setFailCount(Integer failCount) {
		this.failCount = failCount;
	}

	public String getBriefCode() {
//		if (briefCode==null) return "006";
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

	public String getMemo() {
		return memo;
	}

	public void setMemo(String memo) {
		this.memo = memo;
	}

	public void setFromAcctId(String fromAcctId) {
		this.fromAcctId = fromAcctId;
	}

	public void setExpectDate(Date expectDate) {
		this.expectDate = expectDate;
	}

	public List<PayoffItem> getItems() {
		return items;
	}

	public void setItems(List<PayoffItem> items) {
		this.items = items;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

    public String getProgramNo() {
        return programNo;
    }

    public void setProgramNo(String programNo) {
        this.programNo = programNo;
    }
}
