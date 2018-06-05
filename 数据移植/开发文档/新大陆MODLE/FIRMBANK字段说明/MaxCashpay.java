package netbank.firm.auth.model;

import java.io.Serializable;
import java.math.BigDecimal;
import java.util.Date;

import javax.persistence.*;

/**
 * 联网行费用单笔最大金额配置表
 * @author zhangzhaoxing
 * 2010-01-18
 */
@Entity
@Table(name="t_max_cashpay")
@SequenceGenerator(name="S_T_MAX_CASHPAY", initialValue = 1, allocationSize = 1, sequenceName="S_T_MAX_CASHPAY")
public class MaxCashpay implements Serializable {
	private static final long serialVersionUID = 1L;
	
	/**状态：0-归档  1-有效   2-待授权*/
	public final static String STALE = "0";
	public final static String VALID = "1";
	public final static String GRANTING = "2";	

	/**
	 * 内部
	 */
	@Id
	@GeneratedValue(strategy = GenerationType.SEQUENCE, generator = "S_T_MAX_CASHPAY")
	@Column(name = "ID_MAX_CASHPAY", updatable = false)		
	private Integer ID;
	
	/**
	 * 联网行
	 */
	@Column(name = "UB_CODE", updatable = false)		
	private String ubcode;
	
	/**
	 * 允许最大金额
	 */
	@Column(name = "MAX_AMT", updatable = false)		
	private BigDecimal maxAmount;
	
	/**
	 * 状态
	 */
	@Column(name = "LIMIT_STATUS")	
	private String status;
	
	/**
	 * 创建日期
	 */
	@Column(name = "CREATE_TIME", updatable = false)	
	private Date createDate;

	/**
	 * 更新日期
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

	public BigDecimal getMaxAmount() {
		return maxAmount;
	}

	public void setMaxAmount(BigDecimal maxAmount) {
		this.maxAmount = maxAmount;
	}

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
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
}
