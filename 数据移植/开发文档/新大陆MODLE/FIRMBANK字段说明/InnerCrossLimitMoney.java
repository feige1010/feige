package netbank.firm.account.model;

import java.io.Serializable;
import java.math.BigDecimal;
import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;



@Entity
@Table(name = "T_INNER_CROSS_LIMIT_MONEY")
public class InnerCrossLimitMoney implements Serializable{

	private static final long serialVersionUID = 1L;

    /**
     * 联网行号
     */
    @Id
    @Column(name = "UB_CODE",updatable=false)
	private String ubcode;
	/**
	 * 行内转账单笔限额
	 * @return
	 */
	@Column(name = "INNER_DEAL_LIMITED_AMT", updatable = false)	
	private BigDecimal innerDealLimitedAmt;
	/**
	 * 跨行转账单笔限额
	 * @return
	 */
	@Column(name = "CROSS_DEAL_LIMITED_AMT", updatable = false)	
	private BigDecimal crossDealLimitedAmt;
	/**
	 * 行内转账日限额
	 * @return
	 */
	@Column(name = "INNER_DAY_LIMITED_AMT", updatable = false)	
	private BigDecimal innerDayLimitedAmt;
	/**
	 * 跨行转账日限额
	 * @return
	 */
	@Column(name = "CROSS_DAY_LIMITED_AMT", updatable = false)	
	private BigDecimal crossDayLimitedAmt;
	/**
	 * 创建时间
	 */
    @Temporal(TemporalType.TIMESTAMP)
    @Column(name="CRE_DATE")
	private Date createDate;
	
	/**
	 * 更新时间
	 */	
    @Temporal(TemporalType.TIMESTAMP)
    @Column(name="UPD_DATE")
	private Date updateDate;

	public String getUbcode() {
		return ubcode;
	}

	public void setUbcode(String ubcode) {
		this.ubcode = ubcode;
	}

	public BigDecimal getInnerDealLimitedAmt() {
		return innerDealLimitedAmt;
	}

	public void setInnerDealLimitedAmt(BigDecimal innerDealLimitedAmt) {
		this.innerDealLimitedAmt = innerDealLimitedAmt;
	}

	public BigDecimal getCrossDealLimitedAmt() {
		return crossDealLimitedAmt;
	}

	public void setCrossDealLimitedAmt(BigDecimal crossDealLimitedAmt) {
		this.crossDealLimitedAmt = crossDealLimitedAmt;
	}

	public BigDecimal getInnerDayLimitedAmt() {
		return innerDayLimitedAmt;
	}

	public void setInnerDayLimitedAmt(BigDecimal innerDayLimitedAmt) {
		this.innerDayLimitedAmt = innerDayLimitedAmt;
	}

	public BigDecimal getCrossDayLimitedAmt() {
		return crossDayLimitedAmt;
	}

	public void setCrossDayLimitedAmt(BigDecimal crossDayLimitedAmt) {
		this.crossDayLimitedAmt = crossDayLimitedAmt;
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
