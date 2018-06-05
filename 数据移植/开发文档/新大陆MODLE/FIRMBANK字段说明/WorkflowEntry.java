/*
 * WorkflowEntry.java
 *
 * 功能： 工作流持久类
 * 类名：  WorkflowEntry
 *
 *   ver     变更日期           修改人        修改说明
 * ──────────────────────────────────
 *   V1.00   2009-8-24    dvlp  初版
 *
 * Copyright (c) 2000,2009 NewlandComputer All Rights Reserved.
 */

package netbank.firm.bizflow.model;

import java.io.Serializable;
import java.util.Date;

import javax.persistence.*;

/**
 * 本类是工作流持久类
 * @author   zhangzhaoxing
 * @version  v1.0  2009-8-24 初版
 */
@Entity
@Table(name="t_bf_entry")
@SequenceGenerator(name="S_T_BF_ENTRY", initialValue = 1, allocationSize = 1, sequenceName="S_T_BF_ENTRY")
public class WorkflowEntry implements Serializable {
	private static final long serialVersionUID = 1L;
	/**
	 * 工作流状态
	 */
	public static final int STATUS_CREATED = 0;//创建
    public static final int STATUS_ACTIVATED = 1;//激活
    public static final int STATUS_SUSPENDED = 2;//挂起
    public static final int STATUS_KILLED = 3;//杀死
    public static final int STATUS_COMPLETED = 4;//完成
    public static final int STATUS_DUE = 5;//过期
    
//    //动作
//	public final static int ACTION_SUBMIT 		= 1;//提交
//	public final static int ACTION_CHECK  		= 2;//复核
//	public final static int ACTION_GRANT  		= 3;//授权
//	public final static int ACTION_EDIT   		= 4;//编辑
//	public final static int ACTION_SEND_HOST   	= 5;//发送核心
//	public final static int ACTION_SEND_BACK	= 6;//退回经办
//	public final static int ACTION_CANCEL		= 7;//撤销
//	public final static int ACTION_ASSIGN		= 8;//指定操作员
//	public final static int ACTION_DUE_PROC		= 9;//过期处理
//	
//	/**
//	 * 支付业务流程(顺序不能够修改)
//	 */
//	public final static int STEP_SUBMIT = 1;//提交
//	public final static int STEP_CHECK = 2;//复核
//	public final static int STEP_GRANT = 3;//授权
//	public final static int STEP_B_GRANT = 4;//二级授权
//	public final static int STEP_FINAL_GRANT = 5;//终级授权
//	public final static int STEP_SEND_HOST = 6;	//发送核心
	/**
	 * 工作流编号
	 */
	@Id
	@Column(name="ID_ENTRY", updatable=false)
	@GeneratedValue(strategy=GenerationType.SEQUENCE, generator = "S_T_BF_ENTRY")
	private Integer ID;
	/**
	 * 联网行号
	 */
	@Column(name="UB_CODE", updatable=false)
	private String ubcode;
	/**
	 * 企业编码
	 */
	@Column(name="NCID",updatable=false)
	private String NCID;
	/**
	 * 工作流始创建者（OID)
	 */
	@Column(name="OWNER",updatable=false)
	private String owner;
	/**
	 * 工作流开始时间
	 */
	@Column(name="START_TIME",updatable=false)
	private Date startDate;
	/**
	 * 记录更新时间
	 */
	@Column(name="UPDATE_TIME")
	private Date updateDate;
	/**
	 * 工作流结束时间
	 */
	@Column(name="DUE_DATE")
	private Date dueDate;
	/**
	 * 工作流状态
	 */
	@Column(name="BIZFLOW_STATUS")
	private Integer status;
	/**
	 * 版本控制
	 */
	@Version
	@Column(name="VERSION")
	private Integer version;	
	/**
	 * 工作流名称
	 */
	@Column(name="FLOW_NAME",updatable=false)
	private String flowname;
	/**
	 * 工作流类型
	 */
	@Column(name="BIZ_FLOW_TYPE",updatable=false)
	private String bizFlowType;
	/**
	 * 工作流业务类型
	 */
	@Column(name="BIZ_CODE",updatable=false)
	private String bizCode;
	
	/**
	 * 账户资源
	 */
	@Column(name="ACCT_ID",updatable=false)
	private String acctId;
	/**
	 * 工作流附带消息
	 */
	@Column(name="MESSAGE")
	private String message;
	
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

	public String getOwner() {
		return owner;
	}

	public void setOwner(String owner) {
		this.owner = owner;
	}

	public Date getStartDate() {
		return startDate;
	}

	public void setStartDate(Date startDate) {
		this.startDate = startDate;
	}

	public Date getUpdateDate() {
		return updateDate;
	}

	public void setUpdateDate(Date updateDate) {
		this.updateDate = updateDate;
	}

	public Date getDueDate() {
		return dueDate;
	}

	public void setDueDate(Date dueDate) {
		this.dueDate = dueDate;
	}

	public Integer getStatus() {
		return status;
	}

	public void setStatus(Integer status) {
		this.status = status;
	}

	public Integer getVersion() {
		return version;
	}

	public void setVersion(Integer version) {
		this.version = version;
	}

	public String getFlowname() {
		return flowname;
	}

	public void setFlowname(String flowname) {
		this.flowname = flowname;
	}

	public String getBizFlowType() {
		return bizFlowType;
	}

	public void setBizFlowType(String bizFlowType) {
		this.bizFlowType = bizFlowType;
	}

	public String getBizCode() {
		return bizCode;
	}

	public void setBizCode(String bizCode) {
		this.bizCode = bizCode;
	}

	public String getAcctId() {
		return acctId;
	}

	public void setAcctId(String acctId) {
		this.acctId = acctId;
	}

	public String getMessage() {
		return message;
	}

	public void setMessage(String message) {
		this.message = message;
	}
}
