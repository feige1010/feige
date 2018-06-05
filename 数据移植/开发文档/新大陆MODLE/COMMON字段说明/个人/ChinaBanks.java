package netbank.pers.unionbank.model;

import java.io.Serializable;
import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;


/**
 * 银行表
 * @author zengcx
 * @since 2009-9-21
 * @version 1.0
 */ 
@Entity
@Table(name = "T_DICT_BANK")
public class ChinaBanks implements Serializable {

	/**
	 * 状态正常
	 */
	public static final String CHINABANKS_STATUS_NORMAL = "1";
	/**
	 * 状态不正常
	 */
	public static final String CHINABANKS_STATUS_ABNORMAL = "0";
	
	private static final long serialVersionUID = 8840759059124536313L;

	@Id
	@Column(name="CODE", updatable=false)
	private String bankCode;
	
	@Column(name="NAME")
	private String bankName;
	
	@Column(name="ATTRIB")
	private String kind;
	
	@Column(name="STATUS")
	private String status;
	
	@Column(name="IDX_NUM")
	private Integer sequence;
	
	@Column(name="UPDATE_DATE")
	private Date updateDate;

	public String getBankCode() {
		return bankCode;
	}

	public void setBankCode(String bankCode) {
		this.bankCode = bankCode;
	}

	public String getBankName() {
		return bankName;
	}

	public void setBankName(String bankName) {
		this.bankName = bankName;
	}

	public String getKind() {
		return kind;
	}

	public void setKind(String kind) {
		this.kind = kind;
	}

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

	public Integer getSequence() {
		return sequence;
	}

	public void setSequence(Integer sequence) {
		this.sequence = sequence;
	}

	public Date getUpdateDate() {
		return updateDate;
	}

	public void setUpdateDate(Date updateDate) {
		this.updateDate = updateDate;
	}

	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result
				+ ((bankCode == null) ? 0 : bankCode.hashCode());
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
		ChinaBanks other = (ChinaBanks) obj;
		if (bankCode == null) {
			if (other.bankCode != null)
				return false;
		} else if (!bankCode.equals(other.bankCode))
			return false;
		return true;
	}
	
	
}
