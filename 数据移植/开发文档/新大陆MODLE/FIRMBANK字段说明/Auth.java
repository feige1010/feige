package netbank.firm.auth.model;

import java.io.Serializable;
import java.math.BigDecimal;
import java.util.Date;
import java.util.HashSet;
import java.util.LinkedHashSet;
import java.util.Set;

import javax.persistence.*;

import org.hibernate.annotations.CollectionOfElements;
import org.hibernate.annotations.Fetch;
import org.hibernate.annotations.FetchMode;

/**
 * 授权书
 * @author zhangzhaoxing
 * 2009-08-18
 */
@Entity
@Table(name="t_auth")
@SequenceGenerator(name="S_T_AUTH", initialValue = 1, allocationSize = 1, sequenceName="S_T_AUTH")
public class Auth implements Serializable, Cloneable {
	private static final long serialVersionUID = 1L;

	public final static int STATUS_STALE  = 0;	// 删除
	public final static int STATUS_ACTIVE = 1;	// 激活
	public final static int STATUS_NEW    = 2; 	// 新创建/或者修改待授权
	public final static int STATUS_LOCK   = 3;	// 锁定
	
	/**
	 * 内部编号
	 */
	@Id
	@GeneratedValue(strategy = GenerationType.SEQUENCE, generator = "S_T_AUTH")
	@Column(name = "ID_AUTH", updatable = false)
	private Integer ID;
	
	/**
	 * 联网行号
	 */
	@Column(name = "UB_CODE", updatable = false)
	private String ubcode;
	
	/**
	 * 客户编号
	 */
	@Column(name = "NCID", updatable = false)
	private String NCID;
	
	/**
	 * 操作员
	 */
	@Column(name = "OID", updatable = false)
	private String OID;
	
	/**
	 * 生效日期
	 */
	@Temporal(TemporalType.TIMESTAMP)
	@Column(name="ISSUE_TIME")
	private Date issueDate;
	
	/**
	 * 失效日期
	 */
	@Temporal(TemporalType.TIMESTAMP)
	@Column(name="REVOKE_TIME")
	private Date revokeDate;
	
	/**
	 * 状态
	 */
	@Column(name="AUTH_STATUS")
	private int status;
	
	/**
	 * 从先前授权书ID修改
	 */
	@Column(name="PRE_AUTH_ID")
	private Integer preAuthID;
	
	
	/**
	 * 更新日期
	 */
	@Temporal(TemporalType.TIMESTAMP)
	@Column(name="UPDATE_TIME")
	private Date updateDate;
	
	/**
	 * 创建日期
	 */
	@Temporal(TemporalType.TIMESTAMP)
	@Column(name="CREATE_TIME", updatable=false)
	private Date createDate;
	
	/**
	 * 单笔处理金额
	 */
	@Column(name="DEAL_QUOTA")
	private BigDecimal dealQuota;

	/**
	 * 单笔处理金额
	 */
	@Column(name="DAY_QUOTA")
	private BigDecimal dayQuota;
	
	/**
	 * 授权书类型
	 */
	@Column(name="AUTH_TYPE", updatable=false)
	private String authType;
	
	/**
	 * 备注
	 */
	@Column(name="MEMO")
	private String memo;

	/**
	 * 版本控制
	 */
	@Version
	@Column(name="VERSION")
	private Integer version;
	
	/**
	 * 账户集合
	 */
    @CollectionOfElements(fetch=FetchType.EAGER)
    @Fetch(FetchMode.SUBSELECT)
    @JoinTable(name="T_AUTH_ACCOUNT",joinColumns = @JoinColumn(name = "ID_AUTH"))
    @Column(name = "ACCT_ID")
	private Set<String> incAccts;
	
	/**
	 * 角色集合
	 */
    @CollectionOfElements(fetch=FetchType.EAGER)
    @Fetch(FetchMode.SUBSELECT)
    @JoinTable(name="T_AUTH_ROLE",joinColumns = @JoinColumn(name = "ID_AUTH"))
    @Column(name = "ROLE_ID")
    private Set<String> bizRoles;
	
	/**
	 * 业务代码集合
	 */
    @CollectionOfElements(fetch=FetchType.EAGER)
    @Fetch(FetchMode.SUBSELECT)
    @JoinTable(name="T_AUTH_BIZ",joinColumns = @JoinColumn(name = "ID_AUTH"))
    @Column(name = "BIZ_CODE")
    private Set<String> bizScopes;
    
    /**
     * 授权书当日可用金额
     */
    @Transient
    private BigDecimal dayAvailableQuota;

    /**
     * 增加业务角色
     * @param roleId
     */
	public void addBizRole(String roleId) {
		if (this.bizRoles == null) {
			bizRoles = new LinkedHashSet<String>();
		}
		bizRoles.add(roleId);
	}
	
	/**
	 * 移除业务角色
	 * @param roleId
	 */
	public void removeBizRole(String roleId) {
		if (this.bizRoles !=null )
			bizRoles.remove(roleId);
	}
	
	/**
	 * 清空业务角色
	 */
	public void clearBizRoles() {
		if (this.bizRoles != null) bizRoles.clear();
	}
    
	/**
	 * 增加业务代号
	 * @param bizCode
	 */
	public void addBizCode(String bizCode) {
		if (this.bizScopes == null) {
			bizScopes = new LinkedHashSet<String>();
		}
		bizScopes.add(bizCode);
	}
	
	/**
	 * 清空业务范围
	 */
	public void clearBizScope() {
		if (bizScopes != null) bizScopes.clear();
	}
	
	/**
	 * 移除业务代号
	 * @param bizCode
	 */
	public void removeBizCode(String bizCode) {
		if (this.bizScopes != null) bizScopes.remove(bizCode); 
	}
    
	/**
	 * 增加账户
	 * @param acctId
	 */
	public void addAccount(String acctId) {
		if (this.incAccts == null) {
			incAccts = new LinkedHashSet<String>();
		}
		incAccts.add(acctId);
	}
	
	/**
	 * 移除账户
	 * @param acctId
	 */
	public void removeAccount(String acctId) {
		if (this.incAccts != null) 
			incAccts.remove(acctId);
	}
	
	/**
	 * 清空账户
	 */
	public void clearResource() {
		if (this.incAccts != null) 
			incAccts.clear();
	}
	
    /**
     * 授权书是否包含此业务代号 
     * @param bizCode 业务代号
     * @return true-包含 false-不包含
     */
	public boolean containsBizCode(String bizCode) {
		if (bizCode == null) return false;
		if (this.bizScopes == null) return false;
		if (bizScopes.contains(bizCode)) return true;
		return false;
	}
    
	@Override
	public Auth clone(){
		Auth auth = new Auth();
        auth.setID(this.getID());
		auth.setAuthType(this.getAuthType());
		auth.setBizRoles(new HashSet<String>(this.getBizRoles()));
		auth.setBizScopes(new HashSet<String>(this.getBizScopes()));
		auth.setMemo(this.getMemo());
		auth.setUbcode(this.getUbcode());
		auth.setNCID(this.getNCID());
		auth.setOID(this.getOID());
		auth.setPreAuthID(this.getID());
		auth.setStatus(Auth.STATUS_NEW);
		auth.setCreateDate(new java.util.Date());
		auth.setUpdateDate(new java.util.Date());
		auth.setIssueDate(null);
		auth.setRevokeDate(null);
		auth.setIncAccts(new HashSet<String>(this.getIncAccts()));
		auth.setDealQuota(this.getDealQuota());
		auth.setDayQuota(this.getDayQuota());
		
		return auth;
	}
    
	//==============================get/set method=========================================
	
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

	public String getOID() {
		return OID;
	}

	public void setOID(String oid) {
		OID = oid;
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

	public int getStatus() {
		return status;
	}

	public void setStatus(int status) {
		this.status = status;
	}

	public Integer getPreAuthID() {
		return preAuthID;
	}

	public void setPreAuthID(Integer preAuthID) {
		this.preAuthID = preAuthID;
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

	public BigDecimal getDealQuota() {
		return dealQuota;
	}

	public void setDealQuota(BigDecimal dealQuota) {
		this.dealQuota = dealQuota;
	}

	public BigDecimal getDayQuota() {
		return dayQuota;
	}

	public void setDayQuota(BigDecimal dayQuota) {
		this.dayQuota = dayQuota;
	}

	public String getAuthType() {
		return authType;
	}

	public void setAuthType(String authType) {
		this.authType = authType;
	}

	public String getMemo() {
		return memo;
	}

	public void setMemo(String memo) {
		this.memo = memo;
	}

	public Integer getVersion() {
		return version;
	}

	public void setVersion(Integer version) {
		this.version = version;
	}

	public Set<String> getIncAccts() {
		return incAccts;
	}

	public void setIncAccts(Set<String> incAccts) {
		this.incAccts = incAccts;
	}

	public Set<String> getBizRoles() {
		return bizRoles;
	}

	public void setBizRoles(Set<String> bizRoles) {
		this.bizRoles = bizRoles;
	}

	public Set<String> getBizScopes() {
		return bizScopes;
	}

	public void setBizScopes(Set<String> bizScopes) {
		this.bizScopes = bizScopes;
	}

	public BigDecimal getDayAvailableQuota() {
		return dayAvailableQuota;
	}

	public void setDayAvailableQuota(BigDecimal dayAvailableQuota) {
		this.dayAvailableQuota = dayAvailableQuota;
	}
}
