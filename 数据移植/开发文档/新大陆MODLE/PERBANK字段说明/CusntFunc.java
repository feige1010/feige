/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package netbank.pers.account.model;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.IdClass;

/*
 * CusntFunc.java
 *
 * 功能： 常用功能，针对表T_CUSNT_FUNC
 * 类名： CusntFunc
 *
 *   ver          变更日期       修改人        修改说明
 * ──────────────────────────────────
 *   V1.00     2009-01-08    Linzr             初版
 *
 * Copyright (c) 2006, 2008 NewlandComputer All Rights Reserved.
 * LICENSE INFORMATION
 */
@Entity(name = "T_CUSNT_FUNC")
@IdClass(CusntFuncId.class)
public class CusntFunc {
    /**
     * 客户号
     */
    private String cid;
    /**
     * 功能编号
     */
    private String funcId;
    @Id
    public String getCid() {
        return cid;
    }

    public void setCid(String cid) {
        this.cid = cid;
    }
    @Id
    public String getFuncId() {
        return funcId;
    }

    public void setFuncId(String funcId) {
        this.funcId = funcId;
    }   
}
