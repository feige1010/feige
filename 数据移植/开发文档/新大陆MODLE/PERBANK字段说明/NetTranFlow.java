/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package netbank.pers.trade.model;

/**
 *
 * @author dvlp
 */
import java.io.Serializable;
import java.math.BigDecimal;
import java.util.Date;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Inheritance;
import javax.persistence.InheritanceType;
import javax.persistence.SequenceGenerator;
import javax.persistence.Table;

/**
 *网上交易流水实体
 * @author zengcx
 * @since 2009-9-2
 */
@Entity
@Table(name = "T_NETTRAN_FLOW")
@SequenceGenerator(name = "S_T_NETTRAN_FLOW",allocationSize=1,sequenceName = "S_T_NETTRAN_FLOW")
@Inheritance(strategy = InheritanceType.JOINED)
public class NetTranFlow implements Serializable {

    private static final long serialVersionUID = 5443449567198815369L;

    public NetTranFlow() {
        this.tradeType = NetTransConstants.NET_TRADE;
    }
    /**
     * 流水编号，主键
     */
    @Id
    //@GeneratedValue(strategy = GenerationType.IDENTITY)
    @GeneratedValue(strategy = GenerationType.SEQUENCE, generator = "S_T_NETTRAN_FLOW")
    @Column(name = "ID_FLOW", updatable=false)
    private Integer flowId;
    /**
     * 业务系统流水号
     */
    @Column(name = "TRANFLOW_NO")
    private String tranFlowNo;
    /**
     * 客户代号
     */
    @Column(name = "CID")
    private String cid;
    /**
     * 账户账号
     */
    @Column(name = "ACCT_NO")
    private String acctNo;
    /**
     * 时间
     */
    @Column(name = "TRAN_TIME")
    private Date tranTime;
    /**
     * 货币类型
     */
    @Column(name = "CCY")
    private String currency;
    /**
     * 金额
     */
    @Column(name = "MONEY")
    private BigDecimal money;
    /**
     * 行内转账金额
     */
    @Column(name = "INNER_MONEY")
    private BigDecimal innerMoney;
    /**
     * 跨行转账金额
     */
    @Column(name = "CROSS_MONEY")
    private BigDecimal crossMoney;
    /**
     * 交易类型
     */
    @Column(name = "TYPE")
    private String tradeType;
    /**
     * 联网行编号
     */
    @Column(name = "ub_code")
    private String ubCode;

    public BigDecimal getMoney() {
        return money;
    }

    public void setMoney(BigDecimal money) {
        this.money = money;
    }

    public String getCid() {
        return cid;
    }

    public void setCid(String cid) {
        this.cid = cid;
    }

    public Integer getFlowId() {
        return flowId;
    }

    public void setFlowId(Integer flowId) {
        this.flowId = flowId;
    }

    public String getTranFlowNo() {
        return tranFlowNo;
    }

    public void setTranFlowNo(String tranFlowNo) {
        this.tranFlowNo = tranFlowNo;
    }

    public Date getTranTime() {
        return tranTime;
    }

    public void setTranTime(Date tranTime) {
        this.tranTime = tranTime;
    }

    public String getAcctNo() {
        return acctNo;
    }

    public void setAcctNo(String acctNo) {
        this.acctNo = acctNo;
    }

    public String getCurrency() {
        return currency;
    }

    public void setCurrency(String currency) {
        this.currency = currency;
    }

    public String getTradeType() {
        return tradeType;
    }

    public void setTradeType(String tradeType) {
        this.tradeType = tradeType;
    }

    public String getUbCode() {
        return ubCode;
    }

    public void setUbCode(String ubCode) {
        this.ubCode = ubCode;
    }

	public BigDecimal getInnerMoney() {
		return innerMoney;
	}

	public void setInnerMoney(BigDecimal innerMoney) {
		this.innerMoney = innerMoney;
	}

	public BigDecimal getCrossMoney() {
		return crossMoney;
	}

	public void setCrossMoney(BigDecimal crossMoney) {
		this.crossMoney = crossMoney;
	}
    
}
