/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package netbank.pers.account.model;

import java.io.Serializable;
import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.SequenceGenerator;
import javax.persistence.Transient;

/**
 * 往来账户
 * @author zengcx
 */
@Entity(name="T_CUSNT_ACCT")
@SequenceGenerator(name = "S_T_CUSNT_ACCT",allocationSize=1,sequenceName = "S_T_CUSNT_ACCT")
public class CusntAccount implements Serializable {

	/**
	 * 联网行行内
	 */
	public static final String ROUTE_LWHHN = "01";
	/**
	 * 银银平台柜面通
	 */
	public static final String ROUTE_YYPTGMT = "02";
	/**
	 * 跨行转账
	 */
	public static final String ROUTE_KHZZ = "03";
	/**
	 * 行内 、同城转账
	 */
	public static final String ACCT_TYPE_SAMEBANK_SAMECITY = "00";
	/**
	 * 行内、异地转账
	 */
	public static final String ACCT_TYPE_SAMEBANK_DIFFERENTCITY = "01";
	/**
	 * 跨行、同城转账
	 */
	public static final String ACCT_TYPE_DIFFERENTBANK_SAMECITY = "10";
	/**
	 * 跨行、异地转账
	 */
	public static final String ACCT_TYPE_DIFFERENTBANK_DIFFERENTCITY = "11";
	
    /**
     *  序列号
     */
    private Integer cusntAccountId;
    /**
     * 客户代号
     */
    private String cid;
    /**
     * 收款账户账号
     */
    private String accountNo;
    /**
     * 收款人名称
     */
    private String accountName;
    /**
     * 收款银行
     */
    private String bank;
    /**
     * 收款银行名称
     */
    private String bankName;
    /**
     * 账号别名
     */
    private String accountAlias;
    /**
     * 支付级别
     */
    private String payLevel;
    /**
     * 转账用途
     */
    private String usage;
    /**
     * 账号类别
     */
    private String accountType;
    /**
     * 移动电话
     */
    private String mobile;
    /**
     * 电子邮箱
     */
    private String email;
    /**
     * 登记渠道
     */
    private String regChannel;
    /**
     * 创建日期
     */
    private Date createDate;
    /**
     * 标签
     */
    private Integer tag;
    /**
     * 省份
     */
    private String province;
    /**
     * 城市
     */
    private String city;
    /**
     * 营业网点
     */
    private String nativeBank;
    /**
     * 转账类型
     */
    private String route;

    @Column(name="PROVINCE")
    public String getProvince() {
		return province;
	}

	public void setProvince(String province) {
		this.province = province;
	}

	@Column(name="CITY")
	public String getCity() {
		return city;
	}

	public void setCity(String city) {
		this.city = city;
	}

	@Column(name="NATIVE_BANK")
	public String getNativeBank() {
		return nativeBank;
	}

	public void setNativeBank(String nativeBank) {
		this.nativeBank = nativeBank;
	}

	@Column(name="ROUTE")
	public String getRoute() {
		return route;
	}

	public void setRoute(String route) {
		this.route = route;
	}

	@Column(name="TACCT_ALIAS")
    public String getAccountAlias() {
        return accountAlias;
    }

    public void setAccountAlias(String accountAlias) {
        this.accountAlias = accountAlias;
    }

    @Column(name="ACCT_NAME")
    public String getAccountName() {
        return accountName;
    }

    public void setAccountName(String accountName) {
        this.accountName = accountName;
    }

    @Column(name="ACCT_NO")
    public String getAccountNo() {
        return accountNo;
    }

    public void setAccountNo(String accountNo) {
        this.accountNo = accountNo;
    }

    @Column(name="TACCT_TYPE")
    public String getAccountType() {
        return accountType;
    }

    public void setAccountType(String accountType) {
        this.accountType = accountType;
    }

    @Column(name="BANK_CODE")
    public String getBank() {
        return bank;
    }

    public void setBank(String bank) {
        this.bank = bank;
    }

    @Column(name="CRE_DATE")
    public Date getCreateDate() {
        return createDate;
    }

    public void setCreateDate(Date createDate) {
        this.createDate = createDate;
    }

    @Id
    @GeneratedValue(strategy = GenerationType.SEQUENCE, generator = "S_T_CUSNT_ACCT")
    @Column(name="ID_CUSNT_ACCT", updatable=false)
    public Integer getCusntAccountId() {
        return cusntAccountId;
    }

    public void setCusntAccountId(Integer cusntAccountId) {
        this.cusntAccountId = cusntAccountId;
    }

    @Column(name="EMAIL")
    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    @Column(name="MOBILE")
    public String getMobile() {
        return mobile;
    }

    public void setMobile(String mobile) {
        this.mobile = mobile;
    }

    @Column(name="PAY_LEVEL")
    public String getPayLevel() {
        return payLevel;
    }

    public void setPayLevel(String payLevel) {
        this.payLevel = payLevel;
    }

    @Column(name="REG_WAY")
    public String getRegChannel() {
        return regChannel;
    }

    public void setRegChannel(String regChannel) {
        this.regChannel = regChannel;
    }

    @Column(name="ID_TAG")
    public Integer getTag() {
        return tag;
    }

    public void setTag(Integer tag) {
        this.tag = tag;
    }

    @Column(name="purpose")
    public String getUsage() {
        return usage;
    }

    public void setUsage(String usage) {
        this.usage = usage;
    }

    @Column(name="CID")
    public String getCid() {
        return cid;
    }

    public void setCid(String cid) {
        this.cid = cid;
    }

    @Transient
	public String getBankName() {
		return bankName;
	}

	public void setBankName(String bankName) {
		this.bankName = bankName;
	}
	public CusntAccount clone(){
		CusntAccount cusntAccount = new CusntAccount();;
		cusntAccount.setAccountAlias(accountAlias);
		cusntAccount.setAccountName(accountName);
		cusntAccount.setAccountNo(accountNo);
		cusntAccount.setAccountType(accountType);
		cusntAccount.setBank(bank);
		cusntAccount.setBankName(bankName);
		cusntAccount.setCid(cid);
		cusntAccount.setCity(city);
		cusntAccount.setCreateDate(createDate);
		cusntAccount.setCusntAccountId(cusntAccountId);
		cusntAccount.setEmail(email);
		cusntAccount.setMobile(mobile);
		cusntAccount.setNativeBank(nativeBank);
		cusntAccount.setPayLevel(payLevel);
		cusntAccount.setProvince(province);
		cusntAccount.setRegChannel(regChannel);
		cusntAccount.setRoute(route);
		cusntAccount.setTag(tag);
		cusntAccount.setUsage(usage);
		return cusntAccount;
	}
}
