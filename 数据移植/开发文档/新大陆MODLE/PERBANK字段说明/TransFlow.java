/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package netbank.pers.trade.model;

import java.math.BigDecimal;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Table;
import javax.persistence.Transient;

/**
 * 网上转账流水表
 * @author zengcx
 * @version 1.0
 * @since 2009-9-14
 */
@Entity
@Table(name = "T_TRANS_FLOW")
public class TransFlow extends NetTranFlow {

    private static final long serialVersionUID = 7272745571066076459L;
    /**
     * 转入
     */
    public static final String TRANSFLOW_DIRECTION_IN = "0";
    /**
     * 转出
     */
    public static final String TRANSFLOW_DIRECTION_OUT = "1";

    public TransFlow() {
        super.setTradeType(NetTransConstants.TRANS_TRADE);
    }
    /**
     * 收款人账号
     */
    @Column(name = "TACCT")
    private String recvAcctNo;
    /**
     * 交易路由
     */
    @Column(name = "ROUTE")
    private String route;
    /**
     * 收款人行号
     */
    @Column(name = "TUNCODE")
    private String recvUnCode;
    /**
     * 收款人行名
     */
    @Column(name = "TBANKNAME")
    private String recvBankName;
    /**
     * 收款人名称
     */
    @Column(name = "TACCTNAME")
    private String recvAcctName;
    /**
     * 用途
     */
    @Column(name = "purpose")
    private String use;
    /**
     * 兑付级别
     */
    @Column(name = "TLEVEL")
    private String level;
    /**
     * 兑付地址
     */
    @Column(name = "ADDR")
    private String address;
    /**
     * 转账方向
     * 0：转入
     * 1：转出
     */
    @Column(name = "DIRECTION")
    private String direction;
    /**
     * 手续费
     */
    @Column(name = "SERVICE_CHARGE")
    private BigDecimal serviceCharge;
    /**
     * 付款网点
     */
    @Column(name = "PAY_BRANCH_NAME")
    private String payBranchName;
    /**
     * 付款人
     */
    @Column(name = "PAY_ACCT_NAME")
    private String payAcctName;
    
    /**
     * 交易余额
     */
    @Transient
    private BigDecimal balanceMoney;
    /**
     * 备注（转账成功情况下，附带的要在页面显示的信息）
     */
    @Transient
    private String remakers;

    public String getPayAcctName() {
        return payAcctName;
    }

    public void setPayAcctName(String payAcctName) {
        this.payAcctName = payAcctName;
    }

    public String getPayBranchName() {
        return payBranchName;
    }

    public void setPayBranchName(String payBranchName) {
        this.payBranchName = payBranchName;
    }
    
	public String getRecvAcctNo() {
		return recvAcctNo;
	}
	public void setRecvAcctNo(String recvAcctNo) {
		this.recvAcctNo = recvAcctNo;
	}
	public String getRoute() {
		return route;
	}
	public void setRoute(String route) {
		this.route = route;
	}
	public String getRecvUnCode() {
		return recvUnCode;
	}
	public void setRecvUnCode(String recvUnCode) {
		this.recvUnCode = recvUnCode;
	}
	public String getRecvBankName() {
		return recvBankName;
	}
	public void setRecvBankName(String recvBankName) {
		this.recvBankName = recvBankName;
	}
	public String getRecvAcctName() {
		return recvAcctName;
	}
	public void setRecvAcctName(String recvAcctName) {
		this.recvAcctName = recvAcctName;
	}
	public String getUse() {
		return use;
	}
	public void setUse(String use) {
		this.use = use;
	}
	public String getLevel() {
		return level;
	}
	public void setLevel(String level) {
		this.level = level;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getDirection() {
		return direction;
	}
	public void setDirection(String direction) {
		this.direction = direction;
	}
	public BigDecimal getServiceCharge() {
		return serviceCharge;
	}
	public void setServiceCharge(BigDecimal serviceCharge) {
		this.serviceCharge = serviceCharge;
	}

	public BigDecimal getBalanceMoney() {
		return balanceMoney;
	}

	public void setBalanceMoney(BigDecimal balanceMoney) {
		this.balanceMoney = balanceMoney;
	}

	public String getRemakers() {
		return remakers;
	}

	public void setRemakers(String remakers) {
		this.remakers = remakers;
	}
	
}
