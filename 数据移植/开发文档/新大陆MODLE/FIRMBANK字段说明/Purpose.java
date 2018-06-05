package netbank.firm.cash.purpose.model;

import java.io.Serializable;
import java.util.Date;

import javax.persistence.*;

/**
 * 转账用途
 * @author zhangzhaoxing
 * 2010-0-21
 */
@Entity
@Table(name="T_PURPOSE")
@SequenceGenerator(name="S_T_PURPOSE", initialValue = 1, allocationSize = 1, sequenceName="S_T_PURPOSE")
public class Purpose implements Serializable {
	private static final long serialVersionUID = 1L;
	/**
	 * 对私支付
	 */
	public final static int CASHPAY = 1;
	
	/**
	 * 对公支付 
	 */
	public final static int TRANSFER = 0;
	
	
	public Purpose() {
		
	}
	
	public Purpose(String ubcode, String NCID, String OID, String purpose) {
		this.ubcode = ubcode;
		this.NCID = NCID;
		this.OID  = OID;
		this.purpose = purpose;
		this.hitCount = 1;
		this.type = TRANSFER;
	}
	
	public Purpose(String ubcode, String NCID, String OID, String usage, int type) {
		this(ubcode, NCID, OID, usage);
		this.type = type;
	}
	
	/**
	 * 内部编号
	 */
	@Id
	@GeneratedValue(strategy = GenerationType.SEQUENCE, generator = "S_T_PURPOSE")
	@Column(name = "ID_PURPOSE", updatable = false)	
	private Integer ID;
	/**
	 * 用途类型(1对私支付、0对公支付 )
	 */
	@Column(name = "PURPOSE_TYPE", updatable = false)
	private int type;
	/**
	 * 联网行
	 */
	@Column(name = "UB_CODE", updatable = false)
	private String ubcode;
	/**
	 * 操作员
	 */
	@Column(name = "OID", updatable = false)
	private String OID;
	/**
	 * 客户号
	 */
	@Column(name = "NCID", updatable = false)
	private String NCID;
	/**
	 * 记录创建日期
	 */
	@Column(name = "CREATE_TIME", updatable = false)
	private Date createDate=new Date();
	/**
	 * 点击次数
	 */
	@Column(name = "HIT_COUNT")
	private int hitCount;
	/**
	 * 记录更新日期
	 */
	@Column(name = "UPDATE_TIME")
	private Date updateDate=new Date();	
	/**
	 * 用途
	 */
	@Column(name = "PURPOSE")
	private String purpose;
	
	
	
	public Integer getID() {
		return ID;
	}
	public void setID(Integer iD) {
		ID = iD;
	}
	public int getType() {
		return type;
	}
	public void setType(int type) {
		this.type = type;
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
	public String getNCID() {
		return NCID;
	}
	public void setNCID(String nCID) {
		NCID = nCID;
	}
	public Date getCreateDate() {
		return createDate;
	}
	public void setCreateDate(Date createDate) {
		this.createDate = createDate;
	}
	public int getHitCount() {
		return hitCount;
	}
	public void setHitCount(int hitCount) {
		this.hitCount = hitCount;
	}
	public Date getUpdateDate() {
		return updateDate;
	}
	public void setUpdateDate(Date updateDate) {
		this.updateDate = updateDate;
	}
	public String getPurpose() {
		return purpose;
	}
	public void setPurpose(String purpose) {
		this.purpose = purpose;
	}	
}
