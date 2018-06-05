/*File name=RecieveMessage.java
 *Create on 2005-4-18
 */
package netbank.firm.sendmsg.model;

import java.io.Serializable;
import java.util.Date;

import javax.persistence.*;

/**
 * @Desctiption 基于Hibernate实现的基本数据库访问类
 * @Auths zhangzhaoxing
 * @Project netBank
 * @SINCE 2005-4-18
 * @VERSION 2005-4-18
 */
@Entity
@Table(name = "T_OPERATOR_MSG")
@SequenceGenerator(name="S_T_OPERATOR_MSG", initialValue = 1, allocationSize = 1, sequenceName="S_T_OPERATOR_MSG")
public class OperatorMessage implements Serializable {
	private static final long serialVersionUID = 1L;

	public final static String STATUS_NEW = "N";// 新建信息
	public final static String STATUS_READ = "R";// 已经阅读
	public final static String STATUS_DELETE = "D";// 删除信息

	/** 内部编号 */
	@Id
	@GeneratedValue(strategy = GenerationType.SEQUENCE, generator = "S_T_OPERATOR_MSG")
	@Column(name = "ID_OPERATOR_MSG", updatable = false)
	private Integer ID;

	/**
	 * 信息ID
	 */
	@Column(name = "ID_MSG_CONTENT", updatable = false)
	private Integer msgId;
	
	/**
	 * 信息内容
	 */
	@Transient
	private MessageContent content;
	
	/**
	 * 联网号
	 */
	@Column(name = "UB_CODE", updatable = false)
	private String ubcode;

	/**
	 * 客户代号
	 */
	@Column(name = "NCID", updatable = false)
	private String NCID;

	/**
	 * 操作员ID
	 */
	@Column(name = "OID", updatable = false)
	private String OID;

	/**
	 * 状态
	 */
	@Column(name = "MSG_STATUS")
	private String status;

	/**
	 * 更新时间
	 */
	@Column(name = "UPDATE_TIME")
	private Date updateDate;

	/**
	 * 创建时间
	 */
	@Column(name = "CREATE_TIME", updatable = false)
	private Date createDate;

	public Integer getID() {
		return ID;
	}

	public void setID(Integer iD) {
		ID = iD;
	}

	public String getUbcode() {
		return ubcode;
	}

	public void setUbcode(String ubcode) {
		this.ubcode = ubcode;
	}

	public String getNCID() {
		return NCID;
	}

	public void setNCID(String nCID) {
		NCID = nCID;
	}

	public String getOID() {
		return OID;
	}

	public void setOID(String oID) {
		OID = oID;
	}

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

	public Date getUpdateDate() {
		return updateDate;
	}

	public void setUpdateDate(Date updateDate) {
		this.updateDate = updateDate;
	}

	public Date getCreateDate() {
		return createDate;
	}

	public void setCreateDate(Date createDate) {
		this.createDate = createDate;
	}

	public Integer getMsgId() {
		return msgId;
	}

	public void setMsgId(Integer msgId) {
		this.msgId = msgId;
	}

	public MessageContent getContent() {
		return content;
	}

	public void setContent(MessageContent content) {
		this.content = content;
	}
}
