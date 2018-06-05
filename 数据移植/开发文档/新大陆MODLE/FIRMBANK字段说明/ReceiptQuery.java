package netbank.firm.cash.receipt.model;

import java.io.Serializable;
import java.util.Date;

import javax.persistence.*;

/**
 * 回单打印
 * @author zhangzhaoxing
 * 2010-02-01
 */
@Entity
@Table(name="T_RECEIPT_QUERY")
@SequenceGenerator(name="S_T_RECEIPT_QUERY", initialValue = 1, allocationSize = 1, sequenceName="S_T_RECEIPT_QUERY")
public class ReceiptQuery implements Serializable {
	private static final long serialVersionUID = 1L;
	
	/**支付类 */
	public final static String TYPE_TRANSFER = "TRANSFER";
	/**代发工资类 */
	public final static String TYPE_PAYOFF = "PAYOFF";
	/**理财类 */
	public final static String TYPE_TIMEDEMAND = "TIMEDEMAND";
	
	

	/** 内部ID */
    @Id
    @GeneratedValue(strategy = GenerationType.SEQUENCE, generator = "S_T_RECEIPT_QUERY")
    @Column(name = "ID_RECEIPT_QUERY", updatable = false)	
	private Integer ID;
    /**联网行*/
    @Column(name = "UB_CODE", updatable = false)
    private String ubcode;
	/** 网银跟踪号 */
    @Column(name = "SRVRTID", updatable = false)
    private String srvrtId;
    /** 创建时间 */
    @Column(name = "CREATE_TIME", updatable = false)
    private Date createDate;
    /**查询号 */
    @Column(name = "QUERY_NUM", updatable = false)
    private String queryNum;
    /**查询类型 */
    @Column(name = "RECEIPT_TYPE", updatable = false)
    private String type;
	public Integer getID() {
		return ID;
	}
	public void setID(Integer iD) {
		ID = iD;
	}
	public String getSrvrtId() {
		return srvrtId;
	}
	public void setSrvrtId(String srvrtId) {
		this.srvrtId = srvrtId;
	}
	public Date getCreateDate() {
		return createDate;
	}
	public void setCreateDate(Date createDate) {
		this.createDate = createDate;
	}
	public String getQueryNum() {
		return queryNum;
	}
	public void setQueryNum(String queryNum) {
		this.queryNum = queryNum;
	}
	public String getType() {
		return type;
	}
	public void setType(String type) {
		this.type = type;
	}
	public String getUbcode() {
		return ubcode;
	}
	public void setUbcode(String ubcode) {
		this.ubcode = ubcode;
	}
    
}
