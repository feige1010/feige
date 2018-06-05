package netbank.pers.base.operation.model;

import javax.persistence.*;
import java.io.Serializable;
import java.util.Date;

/**
 * 操作日志
 * @author AsOne
 *
 */
@Entity
@Table(name="T_OPERATION_LOG")
@SequenceGenerator(name="S_T_OPERATION_LOG", initialValue = 1, allocationSize = 1, sequenceName="S_T_OPERATION_LOG")
public class OperationLog implements Serializable {
	
	@Id
	@GeneratedValue(strategy = GenerationType.SEQUENCE, generator = "S_T_OPERATION_LOG")
	@Column(name = "ID_ACT_LOG", updatable = false)
	private Integer id;
	
	@Column(name = "UB_CODE")
	private String ubCode;
	
	@Column(name = "CID")
	private String cid;
	
	@Column(name = "NAME")
	private String name;
	
	@Column(name = "ACT_TIME")
	private Date createDate;
	
	@Column(name = "CLIENT_IP")
	private String clientAddr;
	
	@Column(name = "ACT_TYPE")
	private String module;
	
	@Column(name = "CONTENT")
	private String content;
	
	@Column(name = "EGENT")
	private String egent;
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public String getUbCode() {
		return ubCode;
	}
	public void setUbCode(String ubCode) {
		this.ubCode = ubCode;
	}

    public String getCid() {
        return cid;
    }

    public void setCid(String cid) {
        this.cid = cid;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public Date getCreateDate() {
		return createDate;
	}
	public void setCreateDate(Date createDate) {
		this.createDate = createDate;
	}
	public String getClientAddr() {
		return clientAddr;
	}
	public void setClientAddr(String clientAddr) {
		this.clientAddr = clientAddr;
	}
	public String getModule() {
		return module;
	}
	public void setModule(String module) {
		this.module = module;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public String getEgent() {
		return egent;
	}
	public void setEgent(String egent) {
		this.egent = egent;
	}
	
	
}
