package netbank.firm.bizflow.model;

import java.io.Serializable;
import java.util.Date;
import java.util.Hashtable;
import java.util.Map;
import java.util.Set;
import java.util.TreeSet;

import javax.persistence.*;

import netbank.firm.base.constant.RoleType;

import com.intensoft.util.StringUtils;

/**
 * 流程配置表
 * 
 * @author zhangzhaoxing 2009-08-12
 */
@Entity
@Table(name = "t_bizflow_cfg")
@SequenceGenerator(name="S_T_BIZFLOW_CFG", initialValue = 1, allocationSize = 1, sequenceName="S_T_BIZFLOW_CFG")
public class BizFlowCfg implements Serializable {
	private static final long serialVersionUID = 1L;
	
	//流程定义模式（1/2/3/any)
	public final static String ONE_STEP = "ONE_STEP";
	public final static String TWO_STEP = "TWO_STEP";
	public final static String TRI_STEP = "TRI_STEP";
	public final static String ANY_STEP = "ANY_STEP";
	
	/**
	 * 配置状态
	 */
	// 激活
	public final static int STATUS_ACTIVE = 1;	
	// 新创建/或者修改待授权
	public final static int STATUS_AWAITING_GRANT = 2; 	
	// 可存档
	public final static int STATUS_STALE = 0; 
	
	/**
	 * 默认的角色表
	 */
	private static Map<String, String[]> defaultRoles;
	
	/**
	 * 允许的流程类型
	 */
	private final static Set<String> allowBizFlowModes = new TreeSet<String>(); 
	
	static {
		defaultRoles = new Hashtable<String, String[]>();
		defaultRoles.put(ONE_STEP, new String[] {RoleType.SUBMITOR});
		defaultRoles.put(TWO_STEP, new String[] {RoleType.SUBMITOR, RoleType.GRANTOR});
		defaultRoles.put(TRI_STEP, new String[] {RoleType.SUBMITOR, RoleType.CHECKER, RoleType.GRANTOR});
		allowBizFlowModes.add(ONE_STEP);
		allowBizFlowModes.add(TWO_STEP);
		allowBizFlowModes.add(TRI_STEP);
		allowBizFlowModes.add(ANY_STEP);
	}
	
	/**
	 * 内部编号
	 */
	@Id
	@GeneratedValue(strategy = GenerationType.SEQUENCE, generator = "S_T_BIZFLOW_CFG")
	@Column(name = "ID_BIZFLOW_CFG", updatable = false)
	private Integer ID;

	/**
	 * 联网行
	 */
	@Column(name = "UB_CODE", updatable = false)
	private String ubcode;

	/**
	 * 客户代号
	 */
	@Column(name = "NCID", updatable = false)
	private String NCID;

	/**
	 * 状态
	 */
	@Column(name = "CFG_STATUS")
	private int status;

	/**
	 * 发布时间
	 */
	@Column(name = "ISSUE_TIME")
	private Date issueDate;

	/**
	 * 撤销日期
	 */
	@Column(name = "REVOKE_TIME")
	private Date revokeDate;

	/**
	 * 创建时间
	 */
	@Column(name = "CREATE_TIME",updatable=false)
	private Date createDate;

	/**
	 * 撤销日期
	 */
	@Column(name = "UPDATE_TIME")
	private Date updateDate;

	/**
	 * 业务类型
	 */
	@Column(name = "BIZ_TYPE",updatable=false)
	private String bizFlowType;

	/**
	 * 流程模式(1/2/3/自定义)
	 */
	@Column(name = "BIZ_FLOW_MODE",updatable=false)
	private String bizflowMode;

	/**
	 * 流程角色(数据库中的支付串,以","分隔符)
	 */
	@Column(name = "FLOW_ROLES",updatable=false)
	private String DBRoleString;
	
	//Construction
	public BizFlowCfg(String ubcode, String NCID, String bizType, String flowType, String[] roles) {
		this.ubcode = ubcode;
		this.NCID = NCID;
		this.bizFlowType = bizType;
		this.setBizflowMode(flowType);
		if (ANY_STEP.equals(flowType)){ 
			this.setRoles(roles);
		}
	}
	
	public BizFlowCfg(){}	
	
	public String[] getRoles() {
		if (ANY_STEP.equals(bizflowMode)){
			return StringUtils.commaDelimitedListToStringArray(DBRoleString);
		}else{
			return (String[])defaultRoles.get(bizflowMode);
		}
	}

	public void setRoles(String[] roles) {
		if (ANY_STEP.equals(bizflowMode)){
			if(roles == null ||roles.length == 0){
				throw new IllegalArgumentException("自定义流程未配置角色");
			}else{
				this.DBRoleString = StringUtils.arrayToCommaDelimitedString(roles);
			}
		}
	}

	public String getStrRoles() {
		String[] roles = getRoles();
		StringBuffer sb = new StringBuffer();
		if (roles != null && roles.length != 0) {
			for (int i = 0; i < roles.length; i++) {
				sb.append(getRoleName(roles[i])).append(",");
			}
		}
		
		String strRoles = sb.toString();
		if (strRoles.endsWith(",")) {
			strRoles = strRoles.substring(0, strRoles.length()-1);
		}
		
		return strRoles;
	}
	
	private String getRoleName(String role) {
		if (RoleType.SUBMITOR.equals(role)) {
			return "经办";
		} else if (RoleType.CHECKER.equals(role)) {
			return "复核";
		} else if (RoleType.GRANTOR.equals(role)) {
			return "授权";
		} else if (RoleType.B_GRANTOR.equals(role)) {
			return "二级授权";
		} else if (RoleType.SENIOR_GRANTOR.equals(role)) {
			return "高级授权";
		}
		return "";
	}

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

	public int getStatus() {
		return status;
	}

	public void setStatus(int status) {
		this.status = status;
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

	public String getBizFlowType() {
		return bizFlowType;
	}

	public void setBizFlowType(String bizFlowType) {
		this.bizFlowType = bizFlowType;
	}

	public String getBizflowMode() {
		return bizflowMode;
	}

	public void setBizflowMode(String bizflowMode) {
		if(!allowBizFlowModes.contains(bizflowMode)){
			throw new IllegalArgumentException("流程类型必须在"+allowBizFlowModes);
		}
		this.bizflowMode = bizflowMode;
	}

	public String getDBRoleString() {
		return DBRoleString;
	}

	public void setDBRoleString(String roles) {
		DBRoleString = roles;
	}
	
}
