/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package netbank.common.cert.model;

import java.io.Serializable;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.SequenceGenerator;
import javax.persistence.Table;

/*
 * CertInfo.java
 *
 * 功能： 证书信息实体
 * 类名： CertInfo
 *
 *   ver     变更日期    修改人    修改说明
 * ──────────────────────────────────
 *   V1.00   无          ld       初版
 *
 * Copyright (c) 2006, 2008 NewlandComputer All Rights Reserved.
 * LICENSE INFORMATION
 */
@Entity
@Table(name = "T_CERT_BIND_ACCT")
@SequenceGenerator(name = "S_T_CERT_BIND_ACCT",allocationSize=1,sequenceName = "S_T_CERT_BIND_ACCT")
public class CertBindAcct implements Serializable {
    private static final long serialVersionUID = -6264156264950069056L;
    /**
     * 表的主键
     */
    private Integer idCertBind;
    /**
     * 表的外键
     */
    private Integer idCert;
    /**
     * 绑定代号
     */
    private String bindCode;
    /**
     * 联网行编号
     */
    private String ubCode;

    @Column(name = "bind_code")
    public String getBindCode() {
        return bindCode;
    }

    public void setBindCode(String bindCode) {
        this.bindCode = bindCode;
    }

    @Column(name = "id_cert")
    public Integer getIdCert() {
        return idCert;
    }

    public void setIdCert(Integer idCert) {
        this.idCert = idCert;
    }

    @Column(name = "ub_code")
    public String getUbCode() {
        return ubCode;
    }

    public void setUbCode(String ubCode) {
        this.ubCode = ubCode;
    }

    @Id
    @GeneratedValue(strategy = GenerationType.SEQUENCE, generator = "S_T_CERT_BIND_ACCT")
    @Column(name = "id_cert_bind_acct")
    public Integer getIdCertBind() {
        return idCertBind;
    }

    public void setIdCertBind(Integer idCertBind) {
        this.idCertBind = idCertBind;
    }
}
