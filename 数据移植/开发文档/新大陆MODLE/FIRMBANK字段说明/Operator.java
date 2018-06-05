package netbank.firm.crm.model;

import java.io.Serializable;
import java.util.Date;

import javax.persistence.*;

import netbank.firm.base.security.AbstractPassword;
import org.hibernate.annotations.Type;


/**
 * 操作员信息
 * @author zhangzhaoxing
 * 2009-08-04z
 */
@Entity
@Table(name="t_operator")
@SequenceGenerator(name="S_T_OPERATOR", initialValue = 1, allocationSize = 1, sequenceName="S_T_OPERATOR")
public class Operator extends AbstractPassword implements Serializable, Cloneable {
	private static final long serialVersionUID = 1L;

	/**
	 * 操作员类型(0-系统管理员 1-系统主管 2-普通操作员)
	 */
	public final static int TYPE_ADMIN = 0;
	public final static int TYPE_DIRECTOR = 1;
	public final static int TYPE_OPER = 2;
	
	/**
	 * 操作员状态
	 */
	public final static int STATUS_DELETE = 0;
	public final static int STATUS_ACTIVE = 1;
	public final static int STATUS_AWAITING_GRANT = 2;
	public final static int STATUS_LOCKED = 3;

	/**
	 * 内部ID
	 */
	@Id
	@GeneratedValue(strategy = GenerationType.SEQUENCE, generator = "S_T_OPERATOR")
	@Column(name = "ID_OPERATOR", updatable = false)
	private Integer ID;
	
	/**
	 * 操作员ID
	 */
	@Column(name = "OID", updatable = false)
	private String OID;
	
	/**
	 * 联网行号
	 */
	@Column(name="UB_CODE", updatable=false)
	private String ubcode;
	
	/**
	 * 客户代号
	 */
	@Column(name="NCID", updatable=false)
	private String NCID;
	
	/**
	 * 操作员类型(0/1/2)
	 */
	@Column(name="OPER_TYPE")
	private int type;
	
	/**
	 * 状态
	 */
	@Column(name="OPER_STATUS")
	private int status;
	
	public int getStatus() {
		return status;
	}

	public void setStatus(int status) {
		this.status = status;
	}

	/**
	 * 绑定证书ID
	 */
	@Column(name="ID_CERT")
	private Integer bindCertId;
	
	/**
	 * 性别
	 */
	@Column(name="GENDER")
	private String gender;
	
	/**
	 * 最近成功登陆时间
	 */
	@Temporal(TemporalType.TIMESTAMP)
	@Column(name="LAST_SUCC_TIME")
	private Date lastSuccTime;
	
	/**
	 * 最近失败登录时间
	 */
	@Temporal(TemporalType.TIMESTAMP)
	@Column(name="LAST_FAIL_TIME")
	private Date lastFailTime;
	
	/**
	 * 记录更新时间
	 */
	@Temporal(TemporalType.TIMESTAMP)
	@Column(name="UPDATE_TIME")
	private Date updateDate;
	
	/**
	 * 记录创建时间
	 */
	@Temporal(TemporalType.TIMESTAMP)
	@Column(name="CREATE_TIME")
	private Date createDate;
	
	/**
	 * 联系手机
	 */
	@Column(name="MOBILE")
	private String mobile;
	
	/**
	 * 证件类型
	 */
	@Column(name="ID_TYPE")
	private String IDType;
	
	/**
	 * 证件号码
	 */
	@Column(name="ID_NO")
	private String IDNo;
	
	/**
	 * 职位
	 */
	@Column(name="POSITION")
	private String title;
	
	/**
	 * 联系电话
	 */
	@Column(name="PHONE")
	private String phone;
	
	/**
	 * 登录名称
	 */
	@Column(name="LOGIN_NAME")
	private String loginName;
	
	
	/**
	 * 部门
	 */
	@Column(name="DEPARTMENT")	
	private String department;
	
	/**
	 * EMAIL
	 */
	@Column(name="EMAIL")	
	private String email;
	
	/**
	 * 操作员姓名
	 */
	@Column(name="OPER_NAME")	
	private String name;
	
	/**
	 * 授权原因
	 */
	@Column(name="ALT_CAUSE")	
	private String cause;

//    add by syx 20120313   增加首次登录强制修改密码标志
    @Column(name = "FIRST_LOGIN")
    @Type(type = "netbank.firm.base.TrueFalseType")
    private boolean firstLogin;


    @Override
    public Object clone() throws CloneNotSupportedException {
            return super.clone();
    }
    
	@Override
	public String getPasswordToken() {
		return OID;
	}

	public Integer getID() {
		return ID;
	}

	public void setID(Integer id) {
		ID = id;
	}

	public String getOID() {
		return OID;
	}

	public void setOID(String oid) {
		OID = oid;
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

	public int getType() {
		return type;
	}

	public void setType(int type) {
		this.type = type;
	}

	public Integer getBindCertId() {
		return bindCertId;
	}

	public void setBindCertId(Integer bindCertId) {
		this.bindCertId = bindCertId;
	}

	public String getGender() {
		return gender;
	}

	public void setGender(String gender) {
		this.gender = gender;
	}

	public Date getLastSuccTime() {
		return lastSuccTime;
	}

	public void setLastSuccTime(Date lastSuccTime) {
		this.lastSuccTime = lastSuccTime;
	}

	public Date getLastFailTime() {
		return lastFailTime;
	}

	public void setLastFailTime(Date lastFailTime) {
		this.lastFailTime = lastFailTime;
	}

	public Date getUpdateDate() {
		return updateDate;
	}

	public void setUpdateDate(Date updateDate) {
		this.updateDate = updateDate;
	}

	public Date getCreateDate() {
		return createDate;
	}

	public void setCreateDate(Date createDate) {
		this.createDate = createDate;
	}

	public String getMobile() {
		return mobile;
	}

	public void setMobile(String mobile) {
		this.mobile = mobile;
	}

	public String getIDType() {
		return IDType;
	}

	public void setIDType(String type) {
		IDType = type;
	}

	public String getIDNo() {
		return IDNo;
	}

	public void setIDNo(String no) {
		IDNo = no;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	public String getLoginName() {
		return loginName;
	}

	public void setLoginName(String loginName) {
		this.loginName = loginName;
	}

	public String getDepartment() {
		return department;
	}

	public void setDepartment(String department) {
		this.department = department;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getCause() {
		return cause;
	}

	public void setCause(String cause) {
		this.cause = cause;
	}

    public boolean getFirstLogin() {
        return firstLogin;
    }

    public void setFirstLogin(boolean firstLogin) {
        this.firstLogin = firstLogin;
    }
}
