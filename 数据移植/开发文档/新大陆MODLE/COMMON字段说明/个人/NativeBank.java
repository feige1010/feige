package netbank.pers.unionbank.model;

import java.io.Serializable;
import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.persistence.Transient;

import com.intensoft.file.FileEntity;
import com.intensoft.file.DataColumn;
import com.intensoft.file.SepCombinedDataField;
import com.intensoft.formater.DateFormatter;

@Entity
@Table(name="T_NATIVE_BANK")
@FileEntity(delimiter = "|", fields = {"zfhhh", "zt", "lb", "hbdm", "sszjcyzhh", "szjddm", "qszhzt", "zfhhm", "zfhjc", "dz", "yb", "dhhm", "updateDate"})
public class NativeBank implements Serializable{

	/**
	 * 状态正常
	 */
	public static final String NATIVEBANK_STATUS_NORMAL = "1";
	/**
	 * 状态不正常
	 */
	public static final String NATIVEBANK_STATUS_ABNORMAL = "0";
	
	private static final long serialVersionUID = -3977964383067081580L;
	
	/**
	 * 支付行行号
	 */
	@Id
	@Column(name="zfhhh", updatable=false)
	@DataColumn(name = "支付行行号")
	private String zfhhh;
	
	/**
	 * 状态
	 */
	@Column(name="zt")
	@DataColumn(name = "状态")
	private String zt;
	
	/**
	 * 类别
	 */
	@Column(name="lb")
	@DataColumn(name = "类别")
	private String lb;
	
	/**
	 * 行别代码
	 */
	@Column(name="hbdm")
	@DataColumn(name = "行别代码")
	private String hbdm;
	
	/**
	 * 所属直接参与者行号
	 */
	@Column(name="sszjcyzhh")
	@DataColumn(name = "所属直接参与者行号")
	private String sszjcyzhh;
	
	/**
	 * 省份或城市代码
	 */
	@Column(name="sfhcsdm")
	private Integer sfhcsdm;
	
	/**
	 * 所在节点代码
	 */
	@Column(name="szjddm")
	@DataColumn(name = "所在节点代码")
	private String szjddm;
	
	/**
	 * 清算账户状态
	 */
	@Column(name="qszhzt")
	@DataColumn(name = "清算账户状态")
	private String qszhzt;
	
	/**
	 * 支付行行名
	 */
	@Column(name="zfhhm")
	@DataColumn(name = "支付行行名")
	private String zfhhm;
	
	/**
	 * 支付行简称
	 */
	@Column(name="zfhjc")
	@DataColumn(name = "支付行简称")
	private String zfhjc;
	/**
	 *  地址
	 */
	@Column(name="dz")
	@DataColumn(name = "地址")
	private String dz;

	/**
	 * 邮编
	 */
	@Column(name="yb")
	@DataColumn(name = "邮编")
	private String yb;
	
	/**
	 * 电话号码
	 */
	@Column(name="dhhm")
	@DataColumn(name = "电话号码")
	private String dhhm;
	
	/**
	 * 创建时间
	 */
	@Column(name="update_date")
	@DataColumn(name = "创建时间" , formatter = DateFormatter.class, pattern="yyyy-MM-dd HH:mm:ss")
	private Date updateDate;

	public String getZfhhh() {
		return zfhhh;
	}

	public void setZfhhh(String zfhhh) {
		this.zfhhh = zfhhh;
	}

	public String getZt() {
		return zt;
	}

	public void setZt(String zt) {
		this.zt = zt;
	}

	public String getLb() {
		return lb;
	}

	public void setLb(String lb) {
		this.lb = lb;
	}

	public String getHbdm() {
		return hbdm;
	}

	public void setHbdm(String hbdm) {
		this.hbdm = hbdm;
	}

	public String getSszjcyzhh() {
		return sszjcyzhh;
	}

	public void setSszjcyzhh(String sszjcyzhh) {
		this.sszjcyzhh = sszjcyzhh;
	}

	public Integer getSfhcsdm() {
		return sfhcsdm;
	}

	public void setSfhcsdm(Integer sfhcsdm) {
		this.sfhcsdm = sfhcsdm;
	}

	public String getQszhzt() {
		return qszhzt;
	}

	public void setQszhzt(String qszhzt) {
		this.qszhzt = qszhzt;
	}

	public String getZfhhm() {
		return zfhhm;
	}

	public void setZfhhm(String zfhhm) {
		this.zfhhm = zfhhm;
	}

	public String getZfhjc() {
		return zfhjc;
	}

	public void setZfhjc(String zfhjc) {
		this.zfhjc = zfhjc;
	}

	public String getDz() {
		return dz;
	}

	public void setDz(String dz) {
		this.dz = dz;
	}

	public String getYb() {
		return yb;
	}

	public void setYb(String yb) {
		this.yb = yb;
	}

	public String getDhhm() {
		return dhhm;
	}

	public void setDhhm(String dhhm) {
		this.dhhm = dhhm;
	}

	public Date getUpdateDate() {
		return updateDate;
	}

	public void setUpdateDate(Date updateDate) {
		this.updateDate = updateDate;
	}

	public String getSzjddm() {
		return szjddm;
	}

	public void setSzjddm(String szjddm) {
		this.szjddm = szjddm;
	}

	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + ((zfhhh == null) ? 0 : zfhhh.hashCode());
		return result;
	}

	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		NativeBank other = (NativeBank) obj;
		if (zfhhh == null) {
			if (other.zfhhh != null)
				return false;
		} else if (!zfhhh.equals(other.zfhhh))
			return false;
		return true;
	}
	
	
}
