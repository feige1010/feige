/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package netbank.pers.account.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;

/**
 * 登陆模式
 * @author ld
 */
@Entity(name="T_LOGIN_MODE")
public class LoginMode {

    /**
     * 登陆方式 客户号
     */
   public static final String LOGIN_TYPE_CID="0";
   /**
    * 登陆方式 银行账号
    */
   public static final String LOGIN_TYPE_ACCOUNT="1";
   /**
    * 登陆方式 自定义用户名
    */
   public static final String LOGIN_TYPE_NAME="2";
    /**
     * 客户号
     */
    private String cid;
    /**
     * 登陆方式
     */
    private String loginType;
    /**
     * 登陆名
     */
    private String loginName;


    @Id
    @Column(name="CID", updatable=false)
    public String getCid() {
        return cid;
    }

    public void setCid(String cid) {
        this.cid = cid;
    }

    @Column(name="LOGIN_NAME")
    public String getLoginName() {
        return loginName;
    }

    public void setLoginName(String loginName) {
        this.loginName = loginName;
    }

    @Column(name="LOGIN_TYPE")
    public String getLoginType() {
        return loginType;
    }

    public void setLoginType(String loginType) {
        this.loginType = loginType;
    }
}
