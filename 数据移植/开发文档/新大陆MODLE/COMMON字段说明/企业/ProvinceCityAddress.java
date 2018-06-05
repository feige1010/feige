package netbank.common.bank.model;

import java.io.Serializable;
import java.util.Date;

import javax.persistence.*;

/**
 * 省市地区表
 * @author zengcx
 * @since 2009-9-21
 * @version 1.0
 */ 
@Entity
@Table(name = "T_DICT_ADDRESS")

@SequenceGenerator(name="S_T_DICT_ADDRESS", initialValue = 1, allocationSize = 1, sequenceName="S_T_DICT_ADDRESS")
public class ProvinceCityAddress implements Serializable {

    /**
     * 地址类型为省份
     */
	public static final String ADDRESS_TYPE_PROVINCE = "0";
	/**
     * 地址类型为城市
     */
	public static final String ADDRESS_TYPE_CITY = "1";
	/**
	 * 地址类型为"所在节点"
	 */
	public static final String ADDRESS_TYPE_NODE = "2";
	/**
	 * 状态正常
	 */
	public static final String ADDRESS_STATUS_NORMAL = "1";
	/**
	 * 状态不正常
	 */
	public static final String ADDRESS_STATUS_ABNORMAL = "0";
	
	private static final long serialVersionUID = 6340479731268159026L;

	/**
	 * 主键
	 */
	@Id
	@Column(name="ID_ADDRESS", updatable=false)
    @GeneratedValue(strategy=GenerationType.SEQUENCE, generator = "S_T_DICT_ADDRESS")
	private Integer addressId;
	
	/**
	 * 地区代号
	 */
	@Column(name="CODE")
	private String addressCode;
	
	/**
	 * 上一级地区
	 */
	@Column(name="PARENT_ID")
	private Integer parentId;
	
	/**
	 * 地区名称
	 */
	@Column(name="NAME")
	private String addressName;
	
	/**
	 * 地区状态
	 */
	@Column(name="STATUS")
	private String status;
	
	/**
	 * 地区类型
	 */
	@Column(name="TYPE")
	private String addressType;
	/**
	 * 更新时间
	 */
	@Column(name="UPDATE_DATE")
	private Date updateDate;
	public Integer getAddressId() {
		return addressId;
	}
	public void setAddressId(Integer addressId) {
		this.addressId = addressId;
	}
	public String getAddressCode() {
		return addressCode;
	}
	public void setAddressCode(String addressCode) {
		this.addressCode = addressCode;
	}
	public Integer getParentId() {
		return parentId;
	}
	public void setParentId(Integer parentId) {
		this.parentId = parentId;
	}
	public String getAddressName() {
		return addressName;
	}
	public void setAddressName(String addressName) {
		this.addressName = addressName;
	}
	public String getStatus() {
		return status;
	}
	public void setStatus(String status) {
		this.status = status;
	}
	public String getAddressType() {
		return addressType;
	}
	public void setAddressType(String addressType) {
		this.addressType = addressType;
	}
	public Date getUpdateDate() {
		return updateDate;
	}
	public void setUpdateDate(Date updateDate) {
		this.updateDate = updateDate;
	}
	
}
