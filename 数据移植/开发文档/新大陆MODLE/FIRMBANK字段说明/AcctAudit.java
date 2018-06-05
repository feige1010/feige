/*
 * Created on 2004-8-14
 *
 * Project: CashManagement
 */
package netbank.firm.account.model;

import java.io.Serializable;
import java.math.BigDecimal;
import java.util.Date;

import javax.persistence.*;

/**
 * 账户受限审核控制表
 * Project: CashManagement
 * @author zhangzhaoxing
 */
@Entity
@Table(name="T_ACCT_AUDIT")
@SequenceGenerator(name="S_T_ACCT_AUDIT", initialValue = 1, allocationSize = 1, sequenceName="S_T_ACCT_AUDIT")
public class AcctAudit implements Serializable {
	private static final long serialVersionUID = 1L;

	//状态
	public final static int ACTIVE = 0;
	public final static int STALE = 1;
	
	//贷款账户审核控制
	public final static String LOAN_AUDIT = "LOAN_AUDIT";

	/**
	 * 内部ID
	 */
	@Id
	@GeneratedValue(strategy = GenerationType.SEQUENCE, generator = "S_T_ACCT_AUDIT")
	@Column(name = "ID_ACCT_AUDITING")	
	private Integer ID;

	/**
	 * 联网行号
	 */
	@Column(name = "UB_CODE")
	private String ubcode;
	
	/**
	 * 账户代号
	 */
	@Column(name = "ACCT_ID")
	private String accountId;
	
	/**
	 * 顺序号
	 */
	@Column(name = "SEQ")
	private int indexNum;
	
	/**
	 * 审核类型
	 */
	@Column(name = "AUDIT_TYPE")
	private String auditType;
	
	/**
	 * 审核起始金额
	 */
	@Column(name = "MIN_AMOUNT")
	private BigDecimal minAmount;

	/**
	 * 通知方式
	 */
	@Column(name = "NOTIFY_MODE")
	private int notifyMode;
	
	/**
	 * 合同编号
	 */
	@Column(name = "CONTRACT_NUM")
	private String contractNum;
	
	/**
	 * 姓名
	 */
	@Column(name = "NAME")
	private String name;
	
	/**
	 * 电话
	 */
	@Column(name = "PHONE")
	private String tel;
	
	/**
	 * 电子邮件
	 */
	@Column(name = "EMAIL")
	private String email;
	/**
	 * 移动电话号码
	 */
	@Column(name = "MOBILE")
	private String mobile;
	
	/**
	 * 合同生效时间
	 */
	@Column(name = "ISSUE_TIME")
	private Date startDate;
	
	/**
	 * 合同结束时间
	 */
	@Column(name = "REVOKE_TIME")
	private Date endDate;
	
	/**
	 * 审核合同状态
	 */
	@Column(name = "AUDIT_STATUS")
	private int status;
	
	/**
	 * 使审核控制失效
	 */
	public void stale() {
		this.status = STALE;
		this.endDate = new java.util.Date();
	}

	//========================================================================
	public Integer getID() {
		return ID;
	}

	public void setID(Integer iD) {
		ID = iD;
	}

	public String getUbcode() {
		return ubcode;
	}

	public void setUbcode(String ubcode) {
		this.ubcode = ubcode;
	}

	public String getAccountId() {
		return accountId;
	}

	public void setAccountId(String accountId) {
		this.accountId = accountId;
	}

	public int getIndexNum() {
		return indexNum;
	}

	public void setIndexNum(int indexNum) {
		this.indexNum = indexNum;
	}

	public String getAuditType() {
		return auditType;
	}

	public void setAuditType(String auditType) {
		this.auditType = auditType;
	}

	public BigDecimal getMinAmount() {
		return minAmount;
	}

	public void setMinAmount(BigDecimal minAmount) {
		this.minAmount = minAmount;
	}

	public int getNotifyMode() {
		return notifyMode;
	}

	public void setNotifyMode(int notifyMode) {
		this.notifyMode = notifyMode;
	}

	public String getContractNum() {
		return contractNum;
	}

	public void setContractNum(String contractNum) {
		this.contractNum = contractNum;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getTel() {
		return tel;
	}

	public void setTel(String tel) {
		this.tel = tel;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getMobile() {
		return mobile;
	}

	public void setMobile(String mobile) {
		this.mobile = mobile;
	}

	public Date getStartDate() {
		return startDate;
	}

	public void setStartDate(Date startDate) {
		this.startDate = startDate;
	}

	public Date getEndDate() {
		return endDate;
	}

	public void setEndDate(Date endDate) {
		this.endDate = endDate;
	}

	public int getStatus() {
		return status;
	}

	public void setStatus(int status) {
		this.status = status;
	}
}
