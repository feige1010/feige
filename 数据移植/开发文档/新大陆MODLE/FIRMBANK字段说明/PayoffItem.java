package netbank.firm.cash.payoff.model;

import java.io.Serializable;
import java.math.BigDecimal;
import java.util.Date;

import javax.persistence.*;

/**
 * 代发工资详细信息
 * @author zhangzhaoxing
 * 2009-11-06
 */
@Entity
@Table(name="T_PAYOFF_ITEM")
@SequenceGenerator(name="S_T_PAYOFF_ITEM", initialValue = 1, allocationSize = 1, sequenceName="S_T_PAYOFF_ITEM")
public class PayoffItem implements Serializable {
	private static final long serialVersionUID = 1L;

    public static final int MSGID_UNDO = -1;

    public static final int MSGID_SUC = 0;

    public static final int MSGID_FAIL = 1;

	/**
	 * 内部ID
	 */
	@Id
	@GeneratedValue(strategy = GenerationType.SEQUENCE, generator = "S_T_PAYOFF_ITEM")
	@Column(name = "ID_PAYOFF_ITEM", updatable = false)
	private Integer ID;
	
//	/**
//	 * 批次系统跟踪号
//	 */
//	@Column(name = "SRVRTID", updatable = false)
//	private String srvrtID;
//	
//	/**
//	 * 顺序号
//	 */
//	@Column(name = "SEQ", updatable = false)
//	private Integer seq;
	
	/**
	 * 金额
	 */
	@Column(name = "AMOUNT", updatable = false)
	private BigDecimal amount;
	
	
	/**
	 * 创建日期
	 */
	@Column(name = "CREATE_TIME",updatable=false)
	private Date createDate;
	
	/**
	 * 员工号
	 */
	@Column(name = "EID",updatable=false)
	private String EID;
	
	/**
	 * 员工名称
	 */
	@Column(name = "ACCT_NAME",updatable=false)
	private String name;
	
	/**
	 * 账户代号
	 */
	@Column(name = "ACCT_ID",updatable=false)
	private String acctId;

	/**
	 * 更新日期
	 */
	@Column(name = "UPDATE_TIME")
	private Date updateDate;
	
	/**
	 * 返回信息ID(-1未处理)
	 */
	@Column(name = "MSG_ID")
	private Integer msgId = MSGID_UNDO;
	
	/**
	 * 错误信息
	 */
	@Column(name = "MSG")
	private String msg;
	
	/**
	 * 发送邮件地址
	 */
	@Column(name="SEND_MAIL")
	private String sendMail;

	public String getSendMail() {
		return sendMail;
	}

	public void setSendMail(String sendMail) {
		this.sendMail = sendMail;
	}

	public Integer getID() {
		return ID;
	}

	public void setID(Integer iD) {
		ID = iD;
	}

	public BigDecimal getAmount() {
		return amount;
	}

	public void setAmount(BigDecimal amount) {
		this.amount = amount;
	}

	public Date getCreateDate() {
		return createDate;
	}

	public void setCreateDate(Date createDate) {
		this.createDate = createDate;
	}

	public String getEID() {
		return EID;
	}

	public void setEID(String eID) {
		EID = eID;
	}

	/**
	 * 自动设置编号(按照顺序)
	 * @param index
	 */
	public void setEID(int index) {
		EID = "R_"+index;
	}
	
	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getAcctId() {
		return acctId;
	}

	public void setAcctId(String acctId) {
		this.acctId = acctId;
	}

	public Date getUpdateDate() {
		return updateDate;
	}

	public void setUpdateDate(Date updateDate) {
		this.updateDate = updateDate;
	}

	public Integer getMsgId() {
		return msgId;
	}

	public void setMsgId(Integer msgId) {
		this.msgId = msgId;
	}

	public String getMsg() {
		return msg;
	}

	public void setMsg(String msg) {
		this.msg = msg;
	}
	
	
}
