package netbank.firm.menu.model;

import java.io.Serializable;
import java.util.Date;
import java.util.Set;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.JoinTable;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;
import javax.persistence.Transient;

import org.hibernate.annotations.CollectionOfElements;
import org.hibernate.annotations.Fetch;
import org.hibernate.annotations.FetchMode;
import org.hibernate.annotations.Type;

import com.intensoft.util.StringUtils;
/**
 * 系统菜单(系统提供的全部功能)
 * 注明：
 * 1-菜单到末端功能aciton级时，end=true; 其他导航菜单, 则end=false.
 * 2-菜单到末端功能aciton级时，菜单角色表必须设定使用此功能的角色；
 *   导航菜单不要设定对应的角色，如果设定不起作用； 角色类型跟授权的角色一致
 * 3-菜单到末端功能aciton级是跟业务类型相关的，必须填写；业务种类跟授权书中业务类型一致.
 * @author zhangzhaoxing
 * 2009-07-30
 */
@Entity
@Table(name = "T_MENU")
public class Menu implements Serializable {
	private static final long serialVersionUID = 1L;
	
	//主菜单ID
	public static final Integer MAIN_MENU = Integer.valueOf(0);
	
	
    /**
     * 有效
     */
    public static final String STATUS_VALID = "1";

    /**
     * 无效
     */
    public static final String STATUS_INVALID = "0";

    /**
     * 内部编号
     */
    @Id
    //@GeneratedValue(strategy=GenerationType.AUTO)
    @Column(name="ID_MENU")
    private Integer ID;
    
    /**
     * 父菜单编号
     */
    @Column(name="PARENT_ID")
    private Integer parentId;
    
    /**
     * 是否末端项
     */
    @Column(name="IS_END")
    @Type(type ="yes_no")
	private boolean end;

    /**
     * 排序字段
     */
    @Column(name="SEQ")
	private Integer seq;

    /**
     * 状态
     */
    @Column(name="STATUS")
	private String status;
	
	/**
	 * 是否常用
	 */
    @Column(name="IS_USUALLY")
    @Type(type ="yes_no")
	private Boolean usually;
	
	/**
	 * 是否包入
	 */
    @Column(name="IS_INCLUDE")
	@Type(type ="yes_no")    
	private Boolean include;
	
	/**
	 * 创建日期
	 */
    @Temporal(TemporalType.TIMESTAMP)
    @Column(name="CREATE_TIME")
	private Date createDate;
	
	/**
	 * 更新日期
	 */
    @Temporal(TemporalType.TIMESTAMP)
    @Column(name="UPDATE_TIME")
	private Date updateDate;
	
	/**
	 * 菜单功能标志码
	 */
    @Column(name="FUN_ID")
	private String funId;
	
	/**
	 * 功能停靠窗口
	 */
    @Column(name="TARGET")
	private String target;
	
	/**
	 * 菜单名称
	 */
    @Column(name="MENU_NAME")
	private String menuName;
	
	/**
	 * 功能描述 
	 */
    @Column(name="DESCRIPTION")
	private String description;
	
	/**
	 * (适合于业务)业务集合
	 */
    @Column(name="BIZ_CODES")
	private String DBBizCodes;

	/**
	 * (适合于企业类型)企业类型集合
	 */
    @Column(name="FIRM_TYPES")
    private String DBFirmTypes="ANY";
	
	/**
	 * 功能aciton的URL
	 */
    @Column(name="URL")
	private String URL;

    /**
     * 使用菜单的角色集合[]
     */
    
    @CollectionOfElements(fetch=FetchType.EAGER)
    @Fetch(FetchMode.SUBSELECT)
    @JoinTable(name="T_MENU_ROLE",joinColumns = @JoinColumn(name = "ID_MENU"))
    @Column(name = "ROLE_ID")
    private Set<String> roles;

	/**
	 * 业务范围从数据库中的字符串转化成数组形式
	 * @return 业务种类数组
	 */
    @Transient
	public String[] getBizCodes(){
		if(DBBizCodes==null) return new String[0];
		return StringUtils.commaDelimitedListToStringArray(DBBizCodes);
	}

    @Transient
	public void setBizCodes(String[] bizCodes){
		if(bizCodes!=null)
			this.DBBizCodes = StringUtils.arrayToCommaDelimitedString(bizCodes);
	}
    
	/**
	 * 使用企业范围从数据库中的字符串转化成数组形式
	 * @return 使用企业类型数组
	 */
    @Transient
	public String[] getFirmTypes(){
		if(DBFirmTypes==null) return new String[0];
		return StringUtils.commaDelimitedListToStringArray(DBFirmTypes);
	}

    @Transient    
	public void setFirmTypes(String[] firmTypes){
		if(firmTypes!=null && firmTypes.length <= 0)
			this.DBFirmTypes = StringUtils.arrayToCommaDelimitedString(firmTypes);		
	}

	public Integer getID() {
		return ID;
	}

	public void setID(Integer id) {
		ID = id;
	}

	public Integer getParentId() {
		return parentId;
	}

	public void setParentId(Integer parentId) {
		this.parentId = parentId;
	}

	public boolean isEnd() {
		return end;
	}

	public void setEnd(boolean end) {
		this.end = end;
	}

	public Integer getSeq() {
		return seq;
	}

	public void setSeq(Integer seq) {
		this.seq = seq;
	}

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

	public Boolean getUsually() {
		return usually;
	}

	public void setUsually(Boolean usually) {
		this.usually = usually;
	}

	public Boolean getInclude() {
		return include;
	}

	public void setInclude(Boolean include) {
		this.include = include;
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

	public String getFunId() {
		return funId;
	}

	public void setFunId(String funId) {
		this.funId = funId;
	}

	public String getTarget() {
		return target;
	}

	public void setTarget(String target) {
		this.target = target;
	}

	public String getMenuName() {
		return menuName;
	}

	public void setMenuName(String menuName) {
		this.menuName = menuName;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public String getDBBizCodes() {
		return DBBizCodes;
	}

	public void setDBBizCodes(String bizCodes) {
		DBBizCodes = bizCodes;
	}

	public String getDBFirmTypes() {
		return DBFirmTypes;
	}

	public void setDBFirmTypes(String firmTypes) {
		DBFirmTypes = firmTypes;
	}

	public String getURL() {
		return URL;
	}

	public void setURL(String url) {
		URL = url;
	}

	public Set<String> getRoles() {
		return roles;
	}

	public void setRoles(Set<String> roles) {
		this.roles = roles;
	}
	
	
}
