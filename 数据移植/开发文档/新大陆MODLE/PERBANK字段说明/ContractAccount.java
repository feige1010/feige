/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package netbank.pers.account.model;

import java.util.Date;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.SequenceGenerator;
import javax.persistence.Table;

/**
 * 定向转账账户
 * @author syx
 * @since 2009-07-29
 */
@Entity
@Table(name = "T_CONTRACT_ACCT")
@SequenceGenerator(name = "S_T_CONTRACT_ACCT",allocationSize=1,sequenceName = "S_T_CONTRACT_ACCT")
public class ContractAccount {

    /**序列号*/
    private Integer contractAccountId;
    /**账户账号*/
    private String acctNo;
    /**联网行编号*/
    private String ubCode;
    /**收款账户*/
    private String transAcctNo;
    /**账户名称*/
    private String ownerName;
    /**收款银行*/
    private String bank;
    /**账号别名*/
    private String alias;
    /**支付级别*/
    private String payLevel;
    /**用途*/
    private String use;
    /**账户类别*/
    private String transAcctType;
    /**邮路*/
    private String route;
    /**省*/
    private String province;
    /**市*/
    private String city;
    /**联网行*/
    private String nativeBank;
    /**移动电话*/
    private String mobile;
    /**电子邮箱*/
    private String email;
    /**登记日期*/
    private Date createDate;
    /**标签*/
    private Integer tagId;

    @Column(name="ACCT_NO")
    public String getAcctNo() {
        return acctNo;
    }

    public void setAcctNo(String acctNo) {
        this.acctNo = acctNo;
    }

    @Column(name="TACCT_TYPE")
    public String getTransAcctType() {
        return transAcctType;
    }

    public void setTransAcctType(String transAcctType) {
        this.transAcctType = transAcctType;
    }

    @Column(name="ACCT_ALIAS")
    public String getAlias() {
        return alias;
    }
    @Column(name="ROUTE")
    public String getRoute() {
		return route;
	}

	public void setRoute(String route) {
		this.route = route;
	}
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

	public void setAlias(String alias) {
        this.alias = alias;
    }

    @Column(name="BANK")
    public String getBank() {
        return bank;
    }

    public void setBank(String bank) {
        this.bank = bank;
    }

    @Column(name="TACCT_NO")
    public String getTransAcctNo() {
        return transAcctNo;
    }

    public void setTransAcctNo(String transAcctNo) {
        this.transAcctNo = transAcctNo;
    }

    @Id
    @Column(name="ID_CONTRACT_ACCT", updatable=false)
    @GeneratedValue(strategy = GenerationType.SEQUENCE, generator = "S_T_CONTRACT_ACCT")
    public Integer getContractAccountId() {
        return contractAccountId;
    }

    public void setContractAccountId(Integer contractAccountId) {
        this.contractAccountId = contractAccountId;
    }

    @Column(name="CRE_DATE")
    public Date getCreateDate() {
        return createDate;
    }

    public void setCreateDate(Date createDate) {
        this.createDate = createDate;
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

    @Column(name="ACCT_NAME")
    public String getOwnerName() {
        return ownerName;
    }

    public void setOwnerName(String ownerName) {
        this.ownerName = ownerName;
    }

    @Column(name="PAY_LEVEL")
    public String getPayLevel() {
        return payLevel;
    }

    public void setPayLevel(String payLevel) {
        this.payLevel = payLevel;
    }

    @Column(name="ID_TAG")
    public Integer getTagId() {
        return tagId;
    }

    public void setTagId(Integer tagId) {
        this.tagId = tagId;
    }

    @Column(name="PURPOSE")
    public String getUse() {
        return use;
    }

    public void setUse(String use) {
        this.use = use;
    }

    @Column(name="UB_CODE")
    public String getUbCode() {
        return ubCode;
    }

    public void setUbCode(String ubCode) {
        this.ubCode = ubCode;
    }
    
    public ContractAccount clone(){
    	ContractAccount account = new ContractAccount();
    	account.setAcctNo(this.getAcctNo());
    	account.setAlias(this.getAlias());
    	account.setBank(this.getBank());
    	account.setCity(this.getCity());
    	account.setCreateDate(this.getCreateDate());
    	account.setEmail(this.getEmail());
    	account.setMobile(this.getMobile());
    	account.setNativeBank(this.getNativeBank());
    	account.setOwnerName(this.getOwnerName());
    	account.setPayLevel(this.getPayLevel());
    	account.setProvince(this.getProvince());
    	account.setRoute(this.getRoute());
    	account.setTagId(this.getTagId());
    	account.setTransAcctType(this.getTransAcctType());
    	account.setTransAcctNo(this.getTransAcctNo());
    	account.setUse(this.getUse());
    	account.setUbCode(this.getUbCode());
	    return account;
    }
}
