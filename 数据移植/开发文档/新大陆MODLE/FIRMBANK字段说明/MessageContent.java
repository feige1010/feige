/*File name=MessageContent.java
 *Create on 2005-4-18
 */
/*
 *
 */
package netbank.firm.sendmsg.model;

import java.io.Serializable;
import java.util.Date;

import javax.persistence.*;

/**
 * @Desctiption 基于Hibernate实现的基本数据库访问类
 * @Auths zhangzhaoxing
 * @Project netBank
 * @VERSION 2005-4-18
 */
@Entity
@Table(name = "T_MSG_CONTENT")
@SequenceGenerator(name="S_T_MSG_CONTENT", initialValue = 1, allocationSize = 1, sequenceName="S_T_MSG_CONTENT")
public class MessageContent implements Serializable {
	private static final long serialVersionUID = 1L;
	/*
	 * 范围类型 
	 */
	public final static String SCOPE_ALL = "A";//所有客户
	public final static String SCOPE_BRANCH = "B";//某个连网银行客户
	public final static String SCOPE_CUSTOMER = "C";//指定客户
	public final static String SCOPE_ACCOUNT = "R";//指定账户客户

	/*
	 * 信息紧急 
	 */
	public final static String NORMAL = "N";//普通
	public final static String URGENT = "U";//紧急
	
	/**
	 * 是否发送状态
	 */
	public final static String STATUS_SENDING="0";//待发送
	public final static String STATUS_SENDED="1";//已发送
	public final static String STATUS_STALE="2";//删除
	
	//=======================================================================
	/** 内部编号 */
	@Id
	@GeneratedValue(strategy = GenerationType.SEQUENCE, generator = "S_T_MSG_CONTENT")
	@Column(name = "ID_MSG_CONTENT", updatable = false)
	private Integer ID;
	/**
	 * 标题
	 */
	@Column(name = "TITLE",updatable=false)
	private String title;
	/**
	 * 内容
	 */
	@Column(name = "CONTENT",updatable=false)
	private String content;
	/**
	 * 范围类型
	 */
	@Column(name = "SCOPE_TYPE",updatable=false)
	private String scopeType;
	/**
	 * 范围具体代码
	 */
	@Column(name = "SCOPE_CODE",updatable=false)
	private String scopeCode;
	/**
	 * 紧急内容 
	 */
	@Column(name = "URGENT",updatable=false)
	private String urgent;
	/**
	 * 提交者
	 */
	@Column(name = "SUBMITOR",updatable=false)
	private String submitor;
	/**
	 * 发送者
	 */
	@Column(name = "SENDER")
	private String sender;
	/**
	 * 发送时间
	 */
	@Column(name = "CREATE_TIME",updatable=false)
	private Date createDate=new Date();
	/**
	 * 发送时间
	 */
	@Column(name = "SEND_TIME")
	private Date sendDate;
	/**
	 * 信息状态
	 */
	@Column(name = "CONTENT_STATUS")
	private String status;
	
	public Integer getID() {
		return ID;
	}
	public void setID(Integer iD) {
		ID = iD;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public String getScopeType() {
		return scopeType;
	}
	public void setScopeType(String scopeType) {
		this.scopeType = scopeType;
	}
	public String getScopeCode() {
		return scopeCode;
	}
	public void setScopeCode(String scopeCode) {
		this.scopeCode = scopeCode;
	}
	public String getUrgent() {
		return urgent;
	}
	public void setUrgent(String urgent) {
		this.urgent = urgent;
	}
	public String getSubmitor() {
		return submitor;
	}
	public void setSubmitor(String submitor) {
		this.submitor = submitor;
	}
	public String getSender() {
		return sender;
	}
	public void setSender(String sender) {
		this.sender = sender;
	}
	public Date getSendDate() {
		return sendDate;
	}
	public void setSendDate(Date sendDate) {
		this.sendDate = sendDate;
	}
	public String getStatus() {
		return status;
	}
	public void setStatus(String status) {
		this.status = status;
	}
	public Date getCreateDate() {
		return createDate;
	}
	public void setCreateDate(Date createDate) {
		this.createDate = createDate;
	}

}
