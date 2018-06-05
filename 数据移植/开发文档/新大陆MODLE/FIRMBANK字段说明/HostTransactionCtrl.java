package netbank.firm.asynctrl.model;

import java.io.Serializable;
import java.util.Date;

import javax.persistence.*;

/**
 * HostTransactionCtrl
 * Project: CashManagement
 * 核心系统交易控制，用于异步交易和贷款户控制
 */
@Entity
@Table(name="T_HOST_TRANS_CTRL")
@Inheritance(strategy=InheritanceType.SINGLE_TABLE)
@DiscriminatorColumn(name="TYPE", 
		discriminatorType=DiscriminatorType.STRING)
@SequenceGenerator(name="S_T_HOST_TRANS_CTRL", initialValue = 1, allocationSize = 1, sequenceName="S_T_HOST_TRANS_CTRL")
public abstract class HostTransactionCtrl implements Serializable {
	private static final long serialVersionUID = 1L;
	
	//状态
	public final static int WAITING_SEND = 0;
	public final static int SENDING = 1;
	public final static int SENDED  = 2;
	
	//控制类型
	public final static String TYPE_BATCH_PAY="BATCHTPAY_APPROVAL";
	public final static String TYPE_PAY = "PAY_APPROVAL";
	public final static String TYPE_PAYOFF="PAYOFF_APPROVAL";
	
	/** 内部编号 */
	@Id
	@GeneratedValue(strategy = GenerationType.SEQUENCE, generator = "S_T_HOST_TRANS_CTRL")
	@Column(name = "ID_HOST_TRANS_CTRL", updatable = false)	
	private Integer ID;
	
	/**
	 * 网上银行交易跟踪号
	 */
	@Column(name = "SRVRTID", updatable = false)	
	private String srvrTID;
	/**
	 * 联网行号
	 */
	@Column(name = "UB_CODE")
	private String ubcode;
	
	/**
	 * 控制类型
	 */
	@Column(name = "TYPE", insertable=false, updatable = false)	
	private String type;
	
	/**
	 * 期望发送日期， 为null表示
	 */
	@Column(name = "DUE_DATE")	
	private Date dueDate;
	
	/**
	 * 审批号
	 */
	@Column(name = "APPROVAL_NUM")	
	private String approvalNum;

	/**
	 * 记录状态
	 */
	@Column(name = "STATUS")	
	private int status;

	/**
	 * 记录创建时间
	 */
	@Column(name = "CREATE_DATE")
	private Date createDate;

	public static int getWAITING_SEND() {
		return WAITING_SEND;
	}

	public Integer getID() {
		return ID;
	}

	public void setID(Integer iD) {
		ID = iD;
	}

	public String getSrvrTID() {
		return srvrTID;
	}

	public void setSrvrTID(String srvrTID) {
		this.srvrTID = srvrTID;
	}

	public String getType() {
		return type;
	}

	public void setType(String type) {
		this.type = type;
	}

	public Date getDueDate() {
		return dueDate;
	}

	public void setDueDate(Date dueDate) {
		this.dueDate = dueDate;
	}

	public String getApprovalNum() {
		return approvalNum;
	}

	public void setApprovalNum(String approvalNum) {
		this.approvalNum = approvalNum;
	}

	public int getStatus() {
		return status;
	}

	public void setStatus(int status) {
		this.status = status;
	}

	public Date getCreateDate() {
		return createDate;
	}

	public void setCreateDate(Date createDate) {
		this.createDate = createDate;
	}

	public static long getSerialversionuid() {
		return serialVersionUID;
	}

	public String getUbcode() {
		return ubcode;
	}

	public void setUbcode(String ubcode) {
		this.ubcode = ubcode;
	}
	
}
