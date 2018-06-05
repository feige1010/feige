/*
 * FirmQuota.java
 *
 * 功能： 银行统一默认限额
 * 类名： FirmQuota
 *
 *   ver     变更日期      修改人       修改说明
 * ──────────────────────────────────
 *   V1.0   11-7-14         孙宇翔        初版
 *
 * Copyright (c) 2006, 2008 NewlandComputer All Rights Reserved.
 * LICENSE INFORMATION
*/
package netbank.firm.auth.model;

import javax.persistence.*;
import java.io.Serializable;
import java.math.BigDecimal;
import java.util.Date;

/** 银行统一默认限额(针对企业级)
 * 未到生效日期，使用默认限额，到达生效日期则使用待生效限额，在登记限额时将在使用限额存储在默认限额
 * @author syx <Moonish>
 * @version Ver 1.0 11-7-14 初版
 * @since Ver 1.0
 */
@Entity
@Table(name="T_BANK_QUOTA")
@SequenceGenerator(name="S_T_BANK_QUOTA", initialValue = 1, allocationSize = 1, sequenceName="S_T_BANK_QUOTA")
public class BankQuota implements Serializable {

    /**
     * 联网行编号
     */
    @Id
    @Column(name = "UB_CODE", updatable = false)
    private String ubcode;

    /**
	 * 业务单笔限额
	 */
	@Column(name = "DEAL_LIMITED_AMT")
	private BigDecimal dealLimitedAmt;

	/**
	 * 业务日限额
	 */
	@Column(name = "DAY_LIMITED_AMT")
	private BigDecimal dayLimitedAmt;

	/**
	 * 月工资总额
	 */
	@Column(name = "PAYOFF_MONTH_AMT")
	private BigDecimal payoffMonthLimitedAmt;

    /**
     * 单笔二次授权限额
     */
    @Column(name = "DEAL_AUTH_AMT")
    private BigDecimal dealAuthAmt;

    /**
     * 待生效单笔限额
     */
    @Column(name = "AVAIL_DEAL_LIMITED_AMT")
    private BigDecimal availDealLimitedAmt;

    /**
     * 待生效日限额
     */
    @Column(name = "AVAIL_DAY_LIMITED_AMT")
    private BigDecimal availDayLimitedAmt;

    /**
     * 待生效月工资限额
     */
    @Column(name = "AVAIL_PAYOFF_MONTH_AMT")
    private BigDecimal availPayoffMonthAmt;

    /**
     * 待生效二次授权限额
     */
    @Column(name = "AVAIL_DEAL_AUTH_AMT")
    private BigDecimal availDealAuthAmt;

    /**
	 *  状态
	 */
	@Column(name = "STATUS")
	private char status;

    /**
     * 生效日期
     */
	@Column(name = "START_DATE")
    private Date startDate;

	/**
	 *  创建时间
	 */
	@Column(name = "CREATE_TIME", updatable=false)
	private Date createDate;

	/**
	 *  修改时间
	 */
	@Column(name = "UPDATE_TIME")
	private Date updateDate;

    public String getUbcode() {
        return ubcode;
    }

    public void setUbcode(String ubcode) {
        this.ubcode = ubcode;
    }

    public BigDecimal getDealLimitedAmt() {
        return dealLimitedAmt;
    }

    public void setDealLimitedAmt(BigDecimal dealLimitedAmt) {
        this.dealLimitedAmt = dealLimitedAmt;
    }

    public BigDecimal getDayLimitedAmt() {
        return dayLimitedAmt;
    }

    public void setDayLimitedAmt(BigDecimal dayLimitedAmt) {
        this.dayLimitedAmt = dayLimitedAmt;
    }

    public BigDecimal getPayoffMonthLimitedAmt() {
        return payoffMonthLimitedAmt;
    }

    public void setPayoffMonthLimitedAmt(BigDecimal payoffMonthLimitedAmt) {
        this.payoffMonthLimitedAmt = payoffMonthLimitedAmt;
    }

    public char getStatus() {
        return status;
    }

    public void setStatus(char status) {
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

    public Date getStartDate() {
        return startDate;
    }

    public void setStartDate(Date startDate) {
        this.startDate = startDate;
    }

    public BigDecimal getDealAuthAmt() {
        return dealAuthAmt;
    }

    public void setDealAuthAmt(BigDecimal dealAuthAmt) {
        this.dealAuthAmt = dealAuthAmt;
    }

    public BigDecimal getAvailDealLimitedAmt() {
        return availDealLimitedAmt;
    }

    public void setAvailDealLimitedAmt(BigDecimal availDealLimitedAmt) {
        this.availDealLimitedAmt = availDealLimitedAmt;
    }

    public BigDecimal getAvailDayLimitedAmt() {
        return availDayLimitedAmt;
    }

    public void setAvailDayLimitedAmt(BigDecimal availDayLimitedAmt) {
        this.availDayLimitedAmt = availDayLimitedAmt;
    }

    public BigDecimal getAvailPayoffMonthAmt() {
        return availPayoffMonthAmt;
    }

    public void setAvailPayoffMonthAmt(BigDecimal availPayoffMonthAmt) {
        this.availPayoffMonthAmt = availPayoffMonthAmt;
    }

    public BigDecimal getAvailDealAuthAmt() {
        return availDealAuthAmt;
    }

    public void setAvailDealAuthAmt(BigDecimal availDealAuthAmt) {
        this.availDealAuthAmt = availDealAuthAmt;
    }
}
