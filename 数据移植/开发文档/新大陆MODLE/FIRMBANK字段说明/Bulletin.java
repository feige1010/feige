/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package netbank.firm.bulletin.model;

import com.intensoft.file.DataColumn;
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
 * @author wangbo
 */
@Entity(name="T_BULLETIN")
@SequenceGenerator(name = "S_T_BULLETIN",allocationSize=1,sequenceName = "S_T_BULLETIN")
public class Bulletin implements Serializable {

    /**
     * 序号
     */
    @DataColumn(name = "序号")
    private Integer BulletinId;
    /**
     * 标题
     */
    @DataColumn(name = "标题")
    private String title;
    /**
     * 内容
     */
    @DataColumn(name = "内容")
    private String content;
    /**
     * 创建日期
     */
    @DataColumn(name = "创建日期")
    private Date creDate;
    /**
     * 截止日期
     */
    @DataColumn(name = "截止日期")
    private Date overDate;
    /**
     * 强制阅读
     */
    @DataColumn(name = "强制阅读")
    private String forceRead;
    /**
     * 强制阅读截止日期
     */
    @DataColumn(name = "强制阅读截止日期")
    private Date forceReadDate;

    
    /**
     * 联网行号
     */
    @DataColumn(name = "联网行号")
    private String ubCode;
    
    @Id
    @GeneratedValue(strategy = GenerationType.SEQUENCE, generator = "S_T_BULLETIN")
    @Column(name = "ID_BULLETIN")
    public Integer getBulletinId() {
        return BulletinId;
    }

    public void setBulletinId(Integer BulletinId) {
        this.BulletinId = BulletinId;
    }

    @Column(name = "CONTENT")
    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content;
    }

    @Column(name = "CRE_DATE")
    public Date getCreDate() {
        return creDate;
    }

    public void setCreDate(Date creDate) {
        this.creDate = creDate;
    }

    @Column(name = "OVER_DATE")
    public Date getOverDate() {
        return overDate;
    }

    public void setOverDate(Date overDate) {
        this.overDate = overDate;
    }
@Column(name = "FORCE_READ")
    public String getForceRead() {
        return forceRead;
    }

    public void setForceRead(String forceRead) {
        this.forceRead = forceRead;
    }
@Column(name = "FORCE_READ_DATE")
    public Date getForceReadDate() {
        return forceReadDate;
    }

    public void setForceReadDate(Date forceReadDate) {
        this.forceReadDate = forceReadDate;
    }
@Column(name = "TITLE")
    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }
    @Column(name = "UB_CODE")
	public String getUbCode() {
		return ubCode;
	}

	public void setUbCode(String ubCode) {
		this.ubCode = ubCode;
	}

}
