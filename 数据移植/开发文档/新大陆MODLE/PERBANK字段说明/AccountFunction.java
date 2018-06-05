/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package netbank.pers.account.model;

import java.io.Serializable;
import java.util.Date;
import java.util.HashSet;
import java.util.Map;
import java.util.Set;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToMany;
import javax.persistence.SequenceGenerator;
import javax.persistence.Table;

/**
 * 功能
 * @author syx
 * @since 2009-07-21
 */
@Entity
@Table(name = "T_ACCT_FUNC")
@SequenceGenerator(name = "S_T_ACCT_FUNC",allocationSize=1,sequenceName = "S_T_ACCT_FUNC")
public class AccountFunction implements Serializable {

    /**序列号*/
    private Integer functionId;
    /**联网行编号*/
    private String ubCode;

    /**账户账号*/
    private String acctNo;
    /**业务编码*/
    private String businessCode;
    /**注册来源*/
    private String registerSource;
    /**登记时间*/
    private Date registerDate;

    /**更新时间*/
    private Date updateDate;
    /**页面国际化显示字段*/
    private Map<String,Object> i18nAttr;
    
    private Set<FunctionAttribute> attrSet;

    public void addAttr(FunctionAttribute attr){
       if(this.attrSet == null){
           this.attrSet = new HashSet<FunctionAttribute>();
        }
        this.attrSet.add(attr);
    }

    @Column(name="ACCT_NO")
    public String getAcctNo() {
        return acctNo;
    }

    public void setAcctNo(String acctNo) {
        this.acctNo = acctNo;
    }

    @Column(name="BUS_CODE")
    public String getBusinessCode() {
        return businessCode;
    }

    public void setBusinessCode(String businessCode) {
        this.businessCode = businessCode;
    }

    @Id
    @GeneratedValue(strategy = GenerationType.SEQUENCE, generator = "S_T_ACCT_FUNC")
    @Column(name="ID_ACCT_FUNC", updatable=false)
    public Integer getFunctionId() {
        return functionId;
    }

    public void setFunctionId(Integer functionId) {
        this.functionId = functionId;
    }

    @Column(name="REG_DATE")
    public Date getRegisterDate() {
        return registerDate;
    }

    public void setRegisterDate(Date registerDate) {
        this.registerDate = registerDate;
    }

    @Column(name="REG_SRC")
    public String getRegisterSource() {
        return registerSource;
    }

    public void setRegisterSource(String registerSource) {
        this.registerSource = registerSource;
    }

    @Column(name="UB_CODE")
    public String getUbCode() {
        return ubCode;
    }

    public void setUbCode(String ubCode) {
        this.ubCode = ubCode;
    }

    @Column(name="UPD_DATE")
    public Date getUpdateDate() {
        return updateDate;
    }

    public void setUpdateDate(Date updateDate) {
        this.updateDate = updateDate;
    }
    @OneToMany(cascade = javax.persistence.CascadeType.ALL, fetch=FetchType.EAGER, targetEntity = FunctionAttribute.class)
    @JoinColumn(name = "ID_ACCT_FUNC")
    public Set<FunctionAttribute> getAttrSet() {
        return attrSet;
    }

    public void setAttrSet(Set<FunctionAttribute> attrSet) {
        this.attrSet = attrSet;
    }
    @javax.persistence.Transient
    public Map<String, Object> getI18nAttr() {
        return i18nAttr;
    }

    public void setI18nAttr(Map<String, Object> i18nAttr) {
        this.i18nAttr = i18nAttr;
    }
}
