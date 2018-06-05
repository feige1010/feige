package netbank.firm.auth.model;

import java.io.Serializable;
import java.math.BigDecimal;
import java.util.Date;

import javax.persistence.*;

/**
 * 限额登记日志表
 * 功能:0-账户的日限额\工资月限额;1-授权书ID的日限额登记
 * @author zhangzhaoxing
 * 2009-09-02 
 */
@Entity
@Table(name="t_quota_reg_log")
@Inheritance(strategy=InheritanceType.SINGLE_TABLE)
@DiscriminatorColumn(name="QUOTA_TYPE", 
		discriminatorType=DiscriminatorType.STRING, length=1)
@SequenceGenerator(name="s_t_quota_reg_log", initialValue = 1, allocationSize = 1, sequenceName="s_t_quota_reg_log")
public abstract class AbsQuotaReg implements Serializable {
	private static final long serialVersionUID = 1L;
	
	// 账户限额登记
	@Transient
	public final static String TYPE_ACCOUNT = "0";
	// 授权书限额登记
	@Transient
	public final static String TYPE_AUTH = "1";

    //银行统一默认限额
    @Transient
    public final static String TYPE_FIRM = "2";

	/**
	 * 内部编号
	 */
	@Id
	@GeneratedValue(strategy = GenerationType.SEQUENCE, generator = "s_t_quota_reg_log")
	@Column(name = "ID_QUOTA_REG", updatable = false)	
	private Integer ID;
	
	/**
	 * 联网行号
	 */
	@Column(name = "UB_CODE", updatable = false)
	private String ubcode;
	
	/**
	 * 客户代号
	 */
	@Column(name = "NCID", updatable = false)
	private String NCID;
	
	/**
	 * 限额类型(0-账户 1-授权书 2-银行统一限额)
	 */
	@Column(name = "QUOTA_TYPE",insertable=false, updatable = false)
	private String quotaType;
	
	
	/**
	 * 业务日期(一个账户每天一条)
	 */
	@Column(name = "BIZ_DATE", updatable = false, nullable=false)
	@Temporal(TemporalType.DATE)
	private Date bizDate;
	
	/**
	 * 业务日期累加已用金额
	 */
	@Column(name = "DAY_UESED_AMT")
	private BigDecimal dayUsedAmt=new BigDecimal(0.00);
	
	/**
	 * 月累加金额
	 */
	@Column(name = "MONTH_USED_AMT")
	private BigDecimal monthUsedAmt=new BigDecimal(0.00);
	
	/**
	 * 业务日期剩余金额(冗余字段便于运行维护)
	 */
	@Column(name = "DAY_REMAIN_AMT")
	private BigDecimal dayRemainAmt=new BigDecimal(0.00);
	
	/**
	 * 行内转账日累计已用金额
	 */
	@Column(name = "INNER_DAY_UESED_AMT")
	private BigDecimal innerDayUsedAmt=new BigDecimal(0.00);
	/**
	 * 跨行转账日累计已用金额
	 */
	@Column(name = "CROSS_DAY_UESED_AMT")
	private BigDecimal crossDayUsedAmt=new BigDecimal(0.00);
	/**
	 * 行内转账日累计剩余金额(冗余字段便于运行维护)
	 */
	@Column(name = "INNER_DAY_REMAIN_AMT")
	private BigDecimal innerDayRemainAmt=new BigDecimal(0.00);
	/**
	 * 跨行转账日累计剩余金额(冗余字段便于运行维护)
	 */
	@Column(name = "CROSS_DAY_REMAIN_AMT")
	private BigDecimal crossDayRemainAmt=new BigDecimal(0.00);
	
	/**
	 * 创建时间
	 */
	@Column(name = "CREATE_TIME", updatable = false)
	@Temporal(TemporalType.TIMESTAMP)
	private Date createDate;
	
	/**
	 * 更新时间 
	 */
	@Column(name = "UPDATE_TIME")
	@Temporal(TemporalType.TIMESTAMP)
	private Date updateDate;

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

	public String getQuotaType() {
		return quotaType;
	}

	public void setQuotaType(String quotaType) {
		this.quotaType = quotaType;
	}

	public Date getBizDate() {
		return bizDate;
	}

	public void setBizDate(Date bizDate) {
		this.bizDate = bizDate;
	}

	public BigDecimal getDayUsedAmt() {
		return dayUsedAmt;
	}

	public void setDayUsedAmt(BigDecimal dayUsedAmt) {
		this.dayUsedAmt = dayUsedAmt;
	}

	public BigDecimal getMonthUsedAmt() {
		return monthUsedAmt;
	}

	public void setMonthUsedAmt(BigDecimal monthUsedAmt) {
		this.monthUsedAmt = monthUsedAmt;
	}

	public BigDecimal getDayRemainAmt() {
		return dayRemainAmt;
	}

	public void setDayRemainAmt(BigDecimal dayRemainAmt) {
		this.dayRemainAmt = dayRemainAmt;
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

	public BigDecimal getInnerDayUsedAmt() {
		return innerDayUsedAmt;
	}

	public void setInnerDayUsedAmt(BigDecimal innerDayUsedAmt) {
		this.innerDayUsedAmt = innerDayUsedAmt;
	}

	public BigDecimal getCrossDayUsedAmt() {
		return crossDayUsedAmt;
	}

	public void setCrossDayUsedAmt(BigDecimal crossDayUsedAmt) {
		this.crossDayUsedAmt = crossDayUsedAmt;
	}

	public BigDecimal getInnerDayRemainAmt() {
		return innerDayRemainAmt;
	}

	public void setInnerDayRemainAmt(BigDecimal innerDayRemainAmt) {
		this.innerDayRemainAmt = innerDayRemainAmt;
	}

	public BigDecimal getCrossDayRemainAmt() {
		return crossDayRemainAmt;
	}

	public void setCrossDayRemainAmt(BigDecimal crossDayRemainAmt) {
		this.crossDayRemainAmt = crossDayRemainAmt;
	}
	
	
}
