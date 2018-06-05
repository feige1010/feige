package netbank.firm.contract.model;

import java.io.Serializable;
import java.util.Date;

import javax.persistence.*;

/**
 * 合同书(企业签订的各类协议书)
 * @author zhangzhaoxing
 * 2009-09-16
 */
@Entity
@Table(name="t_contract")
@Inheritance(strategy=InheritanceType.SINGLE_TABLE)
@DiscriminatorColumn(name="CONTRACT_TYPE", discriminatorType=DiscriminatorType.STRING)
@SequenceGenerator(name="S_T_CONTRACT", initialValue = 1, allocationSize = 1, sequenceName="S_T_CONTRACT")
public abstract class Contract implements Serializable {
	private static final long serialVersionUID = 1L;

	public final static String CONTRACT_ACCOUNT   = "ACCT_BIZ";//账户合同
	public final static String CONTRACT_BILL_INFO = "BILL_INFO";//票据合同
	public final static String CONTRACT_E_VOUCHER = "E_VOUCHER";//电子凭证
	public final static String CONTRACT_FIRM	  = "FIRM";//企业申请管理
	public final static String CONTRACT_E_TRADE = "E_TRADE";//企业单证通
	public final static String CONTRACT_GOLD_TRADE = "GOLD_TRADE";//黄金交易
	
	/**
	 * 合同状态
	 */
	public final static int VALID = 0;
	public final static int AWAITING_GRANT = 1;
	public final static int AWAITING_APPROVAL = 2;
	public final static int DENY = 3;
	public final static int ARCHIVE = 4;
	
	/**
	 * 申请方式
	 */
	public final static String APPLY_BY_COUNTER = "COUNTER";//柜面
	public final static String APPLY_BY_NET     = "NET";//网页修改
	
	//实现每个集成类合同类型
	public abstract String getConstType();
	
	/**
	 * 合同内部ID
	 */
	@Id
	@GeneratedValue(strategy = GenerationType.SEQUENCE, generator = "S_T_CONTRACT")
	@Column(name = "ID_CONTRACT", updatable = false)	
	private Integer  ID;

	/**
	 *  合同编号CONTRACT_NO
	 */
	@Column(name = "CONTRACT_NO", updatable = false)	
	private String contractNo;
	
	/**
	 *  合同类型
	 */
	@Column(name = "CONTRACT_TYPE", insertable=false, updatable = false)	
	private String contractType;
	
	/**
	 *  联网行号
	 */
	@Column(name = "UB_CODE", updatable = false)
	private String ubcode;
	
	/**
	 *  合同客户(网上客户号)
	 */
	@Column(name = "NCID", updatable = false)
	private String NCID;
	
	/**
	 *  合同状态
	 */
	@Column(name = "CONTR_STATUS")
	private int status;
	
	/**
	 *  合同创建时间
	 */
	@Column(name = "CREATE_TIME", updatable=false)
	private Date createDate;

	/**
	 *  合同创建时间
	 */
	@Column(name = "UPDATE_TIME")
	private Date updateDate;
	
	/**
	 *  合同生效时间
	 */
	@Column(name = "ISSUE_TIME")
	private Date issueDate;
	
	/**
	 *  合同终止时间
	 */
	@Column(name = "REVOKE_TIME")
	private Date revokeDate;
	
	/**
	 * 合同申请方式(柜台/网上申请)
	 */
	@Column(name = "APPLY_MODE", updatable=false)
	private String applyMode;
	
	// 更改自合同哪个合同(原合同可能会被清理，所以数据库中不要建立约束)
	@Column(name = "PRE_CONTRACT_NO")
	private String preContractNo;
	
	/**
	 * 版本号
	 */
	@Version
	@Column(name="VERSION")	
	private Integer version;
	


	//=================================================================================
	public Integer getID() {
		return ID;
	}

	public void setID(Integer id) {
		ID = id;
	}

	public String getContractNo() {
		return contractNo;
	}

	public void setContractNo(String contractNo) {
		this.contractNo = contractNo;
	}

	public String getContractType() {
		return contractType;
	}

	public void setContractType(String contractType) {
		this.contractType = contractType;
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

	public Date getUpdateDate() {
		return updateDate;
	}

	public void setUpdateDate(Date updateDate) {
		this.updateDate = updateDate;
	}

	public Date getIssueDate() {
		return issueDate;
	}

	public void setIssueDate(Date issueDate) {
		this.issueDate = issueDate;
	}

	public Date getRevokeDate() {
		return revokeDate;
	}

	public void setRevokeDate(Date revokeDate) {
		this.revokeDate = revokeDate;
	}

	public String getApplyMode() {
		return applyMode;
	}

	public void setApplyMode(String applyMode) {
		this.applyMode = applyMode;
	}

	public String getPreContractNo() {
		return preContractNo;
	}

	public void setPreContractNo(String preContractNum) {
		this.preContractNo = preContractNum;
	}

	public Integer getVersion() {
		return version;
	}

	public void setVersion(Integer version) {
		this.version = version;
	}
}
