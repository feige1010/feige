package netbank.firm.account.model;

import java.io.Serializable;
import java.util.Date;

import javax.persistence.*;

/**
 * 企业开户、账户开户以及其销户历史记录表
 * @author zhangzhaoxing
 * 2009-11-22
 */
@Entity
@Table(name="T_NET_OPEN_LOG")
@SequenceGenerator(name="S_T_NET_OPEN_LOG", initialValue = 1, allocationSize = 1, sequenceName="S_T_NET_OPEN_LOG")
public class NetOpenLog implements Serializable {
	private static final long serialVersionUID = 1L;
	
	/**
	 * 类型（企业F、账户A）
	 */
	public static final String TYPE_FIRM="F";
	public static final String TYPE_ACCOUNT="A";

	/**
	 * 内部编号
	 */
	@Id
	@GeneratedValue(strategy = GenerationType.SEQUENCE, generator = "S_T_NET_OPEN_LOG")
	@Column(name = "ID_NET_OPEN_LOG", updatable = false)
	private Integer ID;
	
	/**
	 * 日志类型
	 */
	@Column(name = "LOG_TYPE", updatable = false)
	private String logType;
	
	/**
	 * 1开户、0销户状态(企业类型-企业状态、账户类型-账户状态 相同)
	 */
	@Column(name = "OPEN_STATUS", updatable = false)
	private int status;
	
	/**
	 * 联网号
	 */
	@Column(name = "UB_CODE", updatable = false)
	private String ubcode;
	
	/**
	 * 机构号
	 */
	@Column(name = "BRANCH_ID", updatable = false)
	private String branchId;
	
	/**
	 * 操作日期
	 */
	@Column(name = "OPER_TIME", updatable = false)
	private Date operateDate;
	
	/**
	 * 柜员流水号
	 */
	@Column(name = "BANK_TRACE_ID", updatable = false)
	private String bankTraceId;
	
	/**
	 * 客户号
	 */
	@Column(name = "NCID", updatable = false)
	private String NCID;
	
	/**
	 * 客户名称
	 */
	@Column(name = "FIRM_NAME", updatable = false)
	private String firmName;
	
	/**
	 * 账户代号
	 */
	@Column(name = "ACCT_ID", updatable = false)
	private String acctId;
	
	/**
	 * 账户名称
	 */
	@Column(name = "ACCT_NAME", updatable = false)
	private String acctName;

	public Integer getID() {
		return ID;
	}

	public void setID(Integer iD) {
		ID = iD;
	}

	public String getLogType() {
		return logType;
	}

	public void setLogType(String logType) {
		this.logType = logType;
	}

	public int getStatus() {
		return status;
	}

	public void setStatus(int status) {
		this.status = status;
	}

	public String getUbcode() {
		return ubcode;
	}

	public void setUbcode(String ubcode) {
		this.ubcode = ubcode;
	}

	public String getBranchId() {
		return branchId;
	}

	public void setBranchId(String branchId) {
		this.branchId = branchId;
	}

	public Date getOperateDate() {
		return operateDate;
	}

	public void setOperateDate(Date operateDate) {
		this.operateDate = operateDate;
	}

	public String getBankTraceId() {
		return bankTraceId;
	}

	public void setBankTraceId(String bankTraceId) {
		this.bankTraceId = bankTraceId;
	}

	public String getNCID() {
		return NCID;
	}

	public void setNCID(String nCID) {
		NCID = nCID;
	}

	public String getFirmName() {
		return firmName;
	}

	public void setFirmName(String firmName) {
		this.firmName = firmName;
	}

	public String getAcctId() {
		return acctId;
	}

	public void setAcctId(String acctId) {
		this.acctId = acctId;
	}

	public String getAcctName() {
		return acctName;
	}

	public void setAcctName(String acctName) {
		this.acctName = acctName;
	}
}
