package netbank.pers.unionbank.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;
import java.util.Date;

/**
 * Created with IntelliJ IDEA.
 * User: syx
 * Date: 13-8-14
 * Time: 下午5:27
 * To change this template use File | Settings | File Templates.
 */
@Entity
@Table(name = "T_BANK_MSG_CFG")
public class BankMsgCfg {

    @Id
    @Column(name = "UB_CODE")
    private String ubCode;

    @Column(name = "ID")
    private String id;
    @Column(name = "PASSWORD")
    private String password;
    @Column(name = "PORTNAME")
    private String portName;
    @Column(name = "PORTID")
    private String portId;
    @Column(name = "HH")
    private String hh;
    @Column(name = "CRE_DATE")
    private Date creatDate;
    @Column(name = "UPD_DATE")
    private Date updateDate;

    public String getUbCode() {
        return ubCode;
    }

    public void setUbCode(String ubCode) {
        this.ubCode = ubCode;
    }

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getPortName() {
        return portName;
    }

    public void setPortName(String portName) {
        this.portName = portName;
    }

    public String getPortId() {
        return portId;
    }

    public void setPortId(String portId) {
        this.portId = portId;
    }

    public String getHh() {
        return hh;
    }

    public void setHh(String hh) {
        this.hh = hh;
    }

    public Date getCreatDate() {
        return creatDate;
    }

    public void setCreatDate(Date creatDate) {
        this.creatDate = creatDate;
    }

    public Date getUpdateDate() {
        return updateDate;
    }

    public void setUpdateDate(Date updateDate) {
        this.updateDate = updateDate;
    }
}
