/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package netbank.pers.trade.model;

import java.io.Serializable;
import java.util.Date;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.SequenceGenerator;

/**
 *
 * @author ld
 */
@Entity(name = "T_ACCT_FLOW")
@SequenceGenerator(name = "S_T_ACCT_FLOW",allocationSize=1,sequenceName = "S_T_ACCT_FLOW")
public class AccountFlow implements Serializable{

    /**
     *  添加银行账号
     */
    public static final String FLAG_ADD_ACCOUNT="0";

    /**
     * 删除银行账号
     */
    public static final String FLAG_DELETE_ACCOUNT="1";

    /**
     *  账号挂失
     */
    public static final String FLAG_SIGN_LOSS="2";
    /**
     * 注销网上银行
     */
    public static final String FLAG_DESTROIED_ACCOUNT="3";
    /**
     * 登记网上银行
     */
    public static final String FLAG_ADD_CUSTOMER="4";
    /**
     * 内部编号
     */
    private Integer acctFlowId;
    /**
     * 账户代号
     */
    private String acctNo;
    /**
     * 联网行编号
     */
    private String ubCode;
    /**
     * 客户代号
     */
    private String cid;
    /**
     * 操作标志
     */
    private String flag;
    /**
     * 创建日期
     */
    private Date creDate;

  
    @Id
    @GeneratedValue(strategy = GenerationType.SEQUENCE, generator="S_T_ACCT_FLOW")
    @Column(name="ID_ACCT_FLOW", updatable=false)
    public Integer getAcctFlowId() {
        return acctFlowId;
    }

    public void setAcctFlowId(Integer acctFlowId) {
        this.acctFlowId = acctFlowId;
    }

    @Column(name="ACCT_NO")
    public String getAcctNo() {
        return acctNo;
    }

    public void setAcctNo(String acctNo) {
        this.acctNo = acctNo;
    }
    
    @Column(name="CID")
    public String getCid() {
        return cid;
    }

    public void setCid(String cid) {
        this.cid = cid;
    }

    @Column(name="CRE_DATE")
    public Date getCreDate() {
        return creDate;
    }

    public void setCreDate(Date creDate) {
        this.creDate = creDate;
    }

    @Column(name="FLAG")
    public String getFlag() {
        return flag;
    }

    public void setFlag(String flag) {
        this.flag = flag;
    }

    @Column(name="UB_CODE")
    public String getUbCode() {
        return ubCode;
    }

    public void setUbCode(String ubCode) {
        this.ubCode = ubCode;
    }
}
