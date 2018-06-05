package netbank.firm.bizflow.model;

import java.io.Serializable;
import java.util.Date;

import javax.persistence.*;

/**
 * 最后指定人员
 * @author zhangzhaoxing
 * 2009-11-10
 */
@Entity
@Table(name = "t_bf_last_assignee")
@SequenceGenerator(name="S_T_BF_LAST_ASSIGNEE", initialValue = 1, allocationSize = 1, sequenceName="S_T_BF_LAST_ASSIGNEE")
public class LastAssignee implements Serializable {
	private static final long serialVersionUID = 1L;
	
	public LastAssignee(){}
	
	public LastAssignee(String ubcode, String OID, String assignee, int stepId) {
		this.ubcode = ubcode;
		this.OID = OID;
		this.assignee = assignee;
		this.stepId = stepId;
		this.createDate = new Date();
		this.updateDate = new Date();
	}
	

	/**
	 * 内部编号
	 */
	@Id
	@GeneratedValue(strategy = GenerationType.SEQUENCE, generator = "S_T_BF_LAST_ASSIGNEE")
	@Column(name = "ID_LAST_ASSIGNEE", updatable = false)
	private Integer ID;
	
	/**
	 * 联网行号
	 */
	@Column(name = "UB_CODE", updatable = false)
	private String ubcode;
	
	/**
	 * 操作员ID
	 */
	@Column(name = "OID")
	private String OID;
	
	/**
	 * 操作步骤
	 */
	@Column(name = "STEP_ID")
	private int stepId; 
	
	/**
	 * 操作步骤
	 */
	@Column(name = "ASSIGNEE_OID")
	private String assignee;

	/**
	 * 创建日期
	 */
	@Column(name = "CREATE_TIME")
	private Date createDate;
	
	/**
	 * 创建日期
	 */
	@Column(name = "UPDATE_TIME")
	private Date updateDate;

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

	public String getOID() {
		return OID;
	}

	public void setOID(String oID) {
		OID = oID;
	}

	public int getStepId() {
		return stepId;
	}

	public void setStepId(int stepId) {
		this.stepId = stepId;
	}

	public String getAssignee() {
		return assignee;
	}

	public void setAssignee(String assignee) {
		this.assignee = assignee;
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
	

}
