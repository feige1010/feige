package netbank.firm.cash.timedemand.model;

import java.io.Serializable;
import java.math.BigDecimal;
import java.util.Date;

import javax.persistence.Column;
import javax.persistence.DiscriminatorColumn;
import javax.persistence.DiscriminatorType;
import javax.persistence.Entity;
import javax.persistence.Inheritance;
import javax.persistence.InheritanceType;
import javax.persistence.Table;

import netbank.firm.base.constant.BizCode;
import netbank.firm.cash.core.AbstractPayment;
/**
 * 定活两变业务(定期、通知与活期互转业务)
 * @author zhangzhaoxing
 * 2009-11-27
 */
@Entity
@Table(name="T_TIME_DEMAND")
@Inheritance(strategy=InheritanceType.SINGLE_TABLE)
@DiscriminatorColumn(name="FINANCING_TYPE", discriminatorType=DiscriminatorType.STRING, length=20)
public abstract class SuperTimeDemand extends AbstractPayment implements Serializable {
	private static final long serialVersionUID = 1L;
	
    //通知类型
    public static final String TERM_D01 = "D01";//一天通知
    public static final String TERM_D07 = "D07";//七天通知

    //活期转定期存期类型
    public static final String TERM_M03 = "M03"; //3个月
    public static final String TERM_M06 = "M06"; //6个月
    public static final String TERM_Y01 = "Y01"; //一年
    
    //活期转定期续存类型
    public static final String CONT_TERM_NO = "0";//不续存
    public static final String CONT_TERM_CBFX = "1";//存本付息
    public static final String CONT_TERM_BXXC = "2";//本息续存(默认)
    
    //(活期->定期)最小金额
    public static final BigDecimal TIME_MIN_AMOUNT = new BigDecimal(10000.00);
    
    //(活期->通知存款)最小金额
    public static final BigDecimal CALL_SAVING_AMOUNT = new BigDecimal(500000.00);
    //(通知->活期)最小金额
    public static final BigDecimal CALL_FETCH_AMOUNT = new BigDecimal(100000.00);

    //业务操作类型
    public final static int ACTION_DEMAND2CALL = 0;//活期转通知
    public final static int ACTION_DEMAND2TIME = 1;//活期转定期
    public final static int ACTION_TIME2DEMAND = 2;//定期转活期
    public final static int ACTION_CALL2DEMAND = 3;//通知转定期
    public final static int ACTION_CALL_BOOKING     = 4;//预约取款
    public final static int ACTION_CANCEL_BOOK = 5;//取消预约
    public final static int ACTION_ATONCE  = 6;//立即支取
    
    //理财类别
    public final static String TYPE_DEMAND2TIME = "DEMAND2TIME";
    public final static String TYPE_TIME2DEMAND = "TIME2DEMAND";
    public final static String TYPE_DEMAND2CALL = "DEMAND2CALL";
    public final static String TYPE_CALL2DEMAND = "CALL2DEMAND";
    
    //证实书打印
    public final static String PRINT_NO = "F";//未打印柜面证实书
    public final static String PRINT_YES = "T";//已经打印柜面证实书
    public final static String PRINT_REMOVE="R";//账户已经销户
    
    

    //=================================泛型工作流需要重写方法======================================
	@Override
	public BigDecimal getAmount() {
		return amount;
	}

	@Override
	public String getBizCode() {
		return BizCode.TIME_DEMAND;
	}

	@Override
	public Date getExpectDate() {
		return null;
	}

	@Override
	public String getFromAcctId() {
		return this.demandAccountId;
	}
	
	//===========================================================================================
	/**
	 * 上一级网银跟踪号(主要用于通知转多次活期时要进行业务数据计算,如申请金额、交易金额和预留金额)
	 */
	@Column(name="PARENT_ID",updatable=false)
	private String parentID;
	
	/**
	 * 续存类型
	 */
	@Column(name="FINANCING_TYPE",insertable=false, updatable=false)
	private String type;

	
	/**
	 * 金额
	 */
	@Column(name="AMOUNT",updatable=false)
	private BigDecimal amount;
	
	/**
	 * 业务操作类型 
	 */
	@Column(name="ACTION_TYPE",updatable=false)
	private int actionType;
	
	/**
	 * 利率
	 */
	@Column(name="RATIO")
	private BigDecimal ration;
	
	/**
	 * 开户日期
	 */
	@Column(name="OPEN_TIME")
	private Date openDate;
	
	/**
	 * 到期日期
	 */
	@Column(name="MATURITY_DATE")
	private Date maturityDate;

	
	/**
	 * 活期账户
	 */
	@Column(name="DEMAND_ACCT_ID")
	private String demandAccountId;

	/**
	 * 活期账户名称
	 */
	@Column(name="DEMAND_ACCT_NAME")
	private String demandAccountName;
	
	/**
	 * 定期账户
	 */
	@Column(name="FIXED_ACCT_ID")
	private String fixedAccountId;
	
	/**
	 * 定期账户名称
	 */
	@Column(name="FIXED_ACCT_MAME")
	private String fixedAccountName;
	/**
	 * 是否证书书打印（默认未打印证实书）
	 */
	@Column(name="PRINTED")
	private String printed=PRINT_NO;

	public String getParentID() {
		return parentID;
	}

	public void setParentID(String parentID) {
		this.parentID = parentID;
	}

	public String getType() {
		return type;
	}

	public void setType(String type) {
		this.type = type;
	}

	public int getActionType() {
		return actionType;
	}

	public void setActionType(int actionType) {
		this.actionType = actionType;
	}

	public BigDecimal getRation() {
		return ration;
	}

	public void setRation(BigDecimal ration) {
		this.ration = ration;
	}

	public Date getOpenDate() {
		return openDate;
	}

	public void setOpenDate(Date openDate) {
		this.openDate = openDate;
	}

	public Date getMaturityDate() {
		return maturityDate;
	}

	public void setMaturityDate(Date maturityDate) {
		this.maturityDate = maturityDate;
	}

	public String getDemandAccountId() {
		return demandAccountId;
	}

	public void setDemandAccountId(String demandAccountId) {
		this.demandAccountId = demandAccountId;
	}

	public String getDemandAccountName() {
		return demandAccountName;
	}

	public void setDemandAccountName(String demandAccountName) {
		this.demandAccountName = demandAccountName;
	}

	public String getFixedAccountId() {
		return fixedAccountId;
	}

	public void setFixedAccountId(String fixedAccountId) {
		this.fixedAccountId = fixedAccountId;
	}

	public String getFixedAccountName() {
		return fixedAccountName;
	}

	public void setFixedAccountName(String fixedAccountName) {
		this.fixedAccountName = fixedAccountName;
	}

	public void setAmount(BigDecimal amount) {
		this.amount = amount;
	}

	public String getPrinted() {
		return printed;
	}

	public void setPrinted(String printed) {
		this.printed = printed;
	}
	
	
}
