/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package netbank.firm.cash.payee.model;

import java.util.Date;
import javax.persistence.*;

/**
 * 常用往来账分类
 * @author AsOne
 */
@Entity
@Table(name = "T_PAYEE_CATALOG")
@DiscriminatorColumn(name = "PAYEE_TYPE",
discriminatorType = DiscriminatorType.INTEGER)
@SequenceGenerator(name="S_T_PAYEE_CATALOG", initialValue = 1, allocationSize = 1, sequenceName="S_T_PAYEE_CATALOG")
public class PayeeCatalog implements java.io.Serializable {

    public PayeeCatalog() {
    }

    public PayeeCatalog(String ubCode, String NCID, String catalog) {
        this.ubCode = ubCode;
        this.NCID = NCID;
        this.name = catalog;
        this.createDate = new java.util.Date();
    }
    /**
     * 内部编号
     */
    @Id
    @GeneratedValue(strategy = GenerationType.SEQUENCE, generator = "S_T_PAYEE_CATALOG")
    @Column(name = "ID_PAYEE_CATALOG")
    private Integer id;
    /**
     * 联网行编号
     */
    @Column(name = "UB_CODE")
    private String ubCode;
    /**
     * 企业编号
     */
    @Column(name = "NCID")
    private String NCID;
    /**
     * 序号
     */
    @Column(name = "SEQ")
    private Integer seq;
    /**
     * 更新日期
     */
    @Temporal(TemporalType.TIMESTAMP)
    @Column(name = "UPDATE_TIME")
    private Date updateDate;
    /**
     * 创建日期
     */
    @Temporal(TemporalType.TIMESTAMP)
    @Column(name = "CREATE_TIME")
    private Date createDate;
    /**
     * 名称
     */
    @Column(name = "name")
    private String name;

    public String getNCID() {
        return NCID;
    }

    public void setNCID(String NCID) {
        this.NCID = NCID;
    }

    public Date getCreateDate() {
        return createDate;
    }

    public void setCreateDate(Date createDate) {
        this.createDate = createDate;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public Integer getSeq() {
        return seq;
    }

    public void setSeq(Integer seq) {
        this.seq = seq;
    }

    public String getUbCode() {
        return ubCode;
    }

    public void setUbCode(String ubCode) {
        this.ubCode = ubCode;
    }

    public Date getUpdateDate() {
        return updateDate;
    }

    public void setUpdateDate(Date updateDate) {
        this.updateDate = updateDate;
    }
}
