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
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.SequenceGenerator;
import javax.persistence.Table;

/**
 * 功能属性
 * @author syx
 * @since 2009-07-22
 */
@Entity
@Table(name = "T_ACCT_FUNC_ATTR")
@SequenceGenerator(name = "S_T_ACCT_FUNC_ATTR",allocationSize=1,sequenceName = "S_T_ACCT_FUNC_ATTR")
public class FunctionAttribute implements Serializable {

    /**序列号*/
    private Integer attrId;
    
    private Integer functionId;
    /**键*/
    private String key;
    /**值*/
    private String value;
    /**登记日期*/
    private Date registerDate;
    /**更新日期*/
    private Date updateDate;

    private AccountFunction function;

    @Id
    @GeneratedValue(strategy = GenerationType.SEQUENCE, generator = "S_T_ACCT_FUNC_ATTR")
    @Column(name="ID_ACCT_FUNC_ATTR", updatable=false)
    public Integer getAttrId() {
        return attrId;
    }

    public void setAttrId(Integer attrId) {
        this.attrId = attrId;
    }

    @Column(name="ID_ACCT_FUNC",insertable=false,updatable=false)
    public Integer getFunctionId() {
        return functionId;
    }

    public void setFunctionId(Integer functionId) {
        this.functionId = functionId;
    }

    @Column(name="KEYNAME")
    public String getKey() {
        return key;
    }

    public void setKey(String key) {
        this.key = key;
    }

    @Column(name="REG_DATE")
    public Date getRegisterDate() {
        return registerDate;
    }

    public void setRegisterDate(Date registerDate) {
        this.registerDate = registerDate;
    }

    @Column(name="UPD_DATE")
    public Date getUpdateDate() {
        return updateDate;
    }

    public void setUpdateDate(Date updateDate) {
        this.updateDate = updateDate;
    }

    @Column(name="VALUE")
    public String getValue() {
        return value;
    }

    public void setValue(String value) {
        this.value = value;
    }

    @ManyToOne
    @JoinColumn(name="ID_ACCT_FUNC")
    public AccountFunction getFunction() {
        return function;
    }

    public void setFunction(AccountFunction function) {
        this.function = function;
    }
}
