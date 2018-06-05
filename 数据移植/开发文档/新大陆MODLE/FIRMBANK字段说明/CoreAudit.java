package netbank.firm.coreaudit.model;

import java.io.Serializable;
import java.util.Date;
import java.util.Hashtable;
import java.util.Map;

import javax.persistence.*;

/**
 * 核心审核网银业务记录表
 * 业务需求：1288、1289、1241、1247、1248交易整合成两个交易：
 * 		发送核心提示信息；核心查询网银业务以及审核操作
 * @author zhangzhaoxing
 * 2010-01-26
 */
@Entity
@Table(name="t_core_audit")
@SequenceGenerator(name="S_T_CORE_AUDIT", initialValue = 1, allocationSize = 1, sequenceName="S_T_CORE_AUDIT")
public class CoreAudit implements Serializable {
	private static final long serialVersionUID = 1L;
	
	/** 审核类型-账户合同*/
	public final static String AUDITTYPE_ACCOUNT="0";
	/** 审核类型-支付超额*/
	public final static String AUDITTYPE_TRANSFER="1";
	
	/**账户变动审核*/
	public final static String BIZTYPE_ACCOUNT="AUDIT_ACCOUNT";
	 /** 支付类超限审核  */
	public final static String BIZTYPE_TRANSFER="AUDIT_TRANSFER";
	/**工资支付超限审核*/
	public final static String BIZTYPE_PAYOFF="AUDIT_PAYOFF";
	
	/** 待授权 */
	public final static int STATUS_AUDITING = 0;
	/**同意*/
	public final static int STATUS_AGREE = 1;
	/** 拒绝	 */
	public final static int STATUS_REFUSE = 2;
	/** 过期  */
	public final static int STATUS_DUE = 3;

    /**查询所有状态标志，需代码做处理*///鼎业需求，查询详细信息时需查询所有状态 add by syx 20111102
    public final static int STATUS_ALL = -1;
	
	/**业务类型与审核类型对应关系*/
	public final static Map<String, String> biz2Audit=new Hashtable<String, String>();
	static{
		biz2Audit.put(BIZTYPE_ACCOUNT, AUDITTYPE_ACCOUNT);
		biz2Audit.put(BIZTYPE_TRANSFER, AUDITTYPE_TRANSFER);
		biz2Audit.put(BIZTYPE_PAYOFF, AUDITTYPE_TRANSFER);
	}
	
	/**
	 * 获取业务类型对应的审核类型
	 * @param bizType
	 * @return
	 */
	public static String getAditType(String bizType){
		return biz2Audit.get(bizType);
	}
	
	public CoreAudit(){}
	
	public CoreAudit(String ubcode, String NCID, String acctId, 
			String bizType,	String bizRelativeId, String auditCause){
		this.ubcode = ubcode;
		this.NCID = NCID;
		this.acctId = acctId;
		this.bizRelativeId = bizRelativeId;
		this.bizType = bizType;
		this.auditCause = auditCause;
	}
	
	/**
	 * 内部编号
	 */
	@Id
	@GeneratedValue(strategy = GenerationType.SEQUENCE, generator = "S_T_CORE_AUDIT")
	@Column(name = "ID_CORE_AUDIT", updatable = false)
	private Integer ID;
	/**
	 * 审核类型(0-账户合同 1-支付超额)
	 */
	@Column(name = "AUDIT_TYPE", updatable = false)
	private String auditType;
	/**
	 * 联网行
	 */
	@Column(name = "UBCODE", updatable = false)
	private String ubcode;
	/**
	 * 记录状态(0-待审核 1-确认 2-拒绝 3-过期)
	 */
	@Column(name = "CORE_STATUS")
	private int status;
	/**
	 * 审核编号
	 */
	@Column(name = "APPROVAL_NUM", updatable = false)
	private String approvalNum;
	/**
	 * 创建日期
	 */
	@Column(name = "CREATE_TIME", updatable = false)
	private Date createDate;
	/**
	 * 更新日期
	 */
	@Column(name = "UPDATE_TIME", updatable = false)
	private Date updateDate;
	/**
	 * 客户号
	 */
	@Column(name = "NCID", updatable = false)
	private String NCID;
	/**
	 * 账户代号
	 */
	@Column(name = "ACCT_ID", updatable = false)
	private String acctId;
	/**
	 * 实体相关号(系统跟踪号、账户变更合同号)
	 */
	@Column(name = "BIZ_REATE_ID", updatable = false)
	private String bizRelativeId;
	/**
	 * 业务具体类型(AUDIT_ACCOUNT 账户变动审核;AUDIT_TRANSFER 支付类超限审核;AUDIT_PAYOFF 工资支付超限审核)
	 */
	@Column(name = "BIZ_TYPE", updatable = false)
	private String bizType;
	/**
	 * 审核原因
	 */
	@Column(name = "AUDIT_CAUSE", updatable = false)
	private String auditCause;
	
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
	public int getStatus() {
		return status;
	}
	public void setStatus(int status) {
		this.status = status;
	}
	public String getApprovalNum() {
		return approvalNum;
	}
	public void setApprovalNum(String approvalNum) {
		this.approvalNum = approvalNum;
	}
	public Date getCreateDate() {
		return createDate;
	}
	public void setCreateDate(Date createDate) {
		this.createDate = createDate;
	}
	public Date getUpdateDate() {
		return updateDate;
	}
	public void setUpdateDate(Date updateDate) {
		this.updateDate = updateDate;
	}
	public String getNCID() {
		return NCID;
	}
	public void setNCID(String nCID) {
		NCID = nCID;
	}
	public String getAcctId() {
		return acctId;
	}
	public void setAcctId(String acctId) {
		this.acctId = acctId;
	}
	public String getBizRelativeId() {
		return bizRelativeId;
	}
	public void setBizRelativeId(String bizRelativeId) {
		this.bizRelativeId = bizRelativeId;
	}
	public String getBizType() {
		return bizType;
	}
	public void setBizType(String bizType) {
		this.bizType = bizType;
	}
	public String getAuditCause() {
		return auditCause;
	}
	public void setAuditCause(String auditCause) {
		this.auditCause = auditCause;
	}
	public String getAuditType() {
		return auditType;
	}
	public void setAuditType(String auditType) {
		this.auditType = auditType;
	}
	
	
}
