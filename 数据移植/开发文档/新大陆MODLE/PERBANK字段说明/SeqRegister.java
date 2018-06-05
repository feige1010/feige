package netbank.firm.base.seq.model;

import java.util.Date;

import javax.persistence.*;

/**
 * 序号产生器
 * @author zhangzhaoxing
 * 2009-08-06
 */
@Entity
@Table(name="T_SEQ_REG")
@SequenceGenerator(name="S_T_SEQ_REG", initialValue = 1, allocationSize = 1, sequenceName="S_T_SEQ_REG")
public class SeqRegister {

	/**
	 * 未同步标志
	 */
	public static final int SYNC_FLAG_UNSYNC = 0;
	
	/**
	 * 已同步标志
	 */
	public static final int SYNC_FLAG_SYNC = 1;
	
	/**
	 * 内部编号
	 */
	@Id
	@GeneratedValue(strategy = GenerationType.SEQUENCE, generator = "S_T_SEQ_REG")
	@Column(name = "I_SEQ_REG", updatable = false)
	private Integer ID;
	
	/**
	 * 顺序号类型
	 */
	@Column(name = "SEQ_TYPE", updatable = false)
	private String seqType;
	
	/**
	 * 顺序号区段
	 */
	@Column(name = "SECTION")
	private String section;
	
	/**
	 * 高位计数器
	 */
	@Column(name = "HI_CTR")
	private Integer hiCounter;
	
	/**
	 * 低位计数器
	 */
	@Column(name = "LO_CTR")
	private Integer loCounter;
	
	/**
	 * 同步标志
	 */
	@Column(name = "SYNC_FLAG")
	private int syncFlag;
	
	/**
	 * 创建时间
	 */
	@Temporal(TemporalType.TIMESTAMP)
	@Column(name = "CREATE_TIME")
	private Date createDate;
	
	/**
	 * 更新时间
	 */
	@Temporal(TemporalType.TIMESTAMP)
	@Column(name = "UPDATE_TIME")
	private Date updateDate;

	public Integer getID() {
		return ID;
	}

	public void setID(Integer id) {
		ID = id;
	}

	public String getSeqType() {
		return seqType;
	}

	public void setSeqType(String seqType) {
		this.seqType = seqType;
	}

	public String getSection() {
		return section;
	}

	public void setSection(String section) {
		this.section = section;
	}

	public Integer getHiCounter() {
		return hiCounter;
	}

	public void setHiCounter(Integer hiCounter) {
		this.hiCounter = hiCounter;
	}

	public Integer getLoCounter() {
		return loCounter;
	}

	public void setLoCounter(Integer loCounter) {
		this.loCounter = loCounter;
	}

	public int getSyncFlag() {
		return syncFlag;
	}

	public void setSyncFlag(int syncFlag) {
		this.syncFlag = syncFlag;
	}

	public Date getCreateDate() {
		return createDate;
	}

	public void setCreateDate(Date createDate) {
		this.createDate = createDate;
	}

	public Date getUpdateDate() {
		return updateDate;
	}

	public void setUpdateDate(Date updateDate) {
		this.updateDate = updateDate;
	}
}
