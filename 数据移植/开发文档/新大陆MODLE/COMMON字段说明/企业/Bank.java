package netbank.common.bank.model;

import java.io.Serializable;
import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

import netbank.firm.utils.IHsmProfile;
import netbank.firm.utils.ISftpProfile;

import org.hibernate.annotations.Type;

import com.intensoft.coresyst.txnservice.ICoreProfile;

/**
 * 联网行
 * @author zhangzhaoxing
 * 2009-07-27
 */
@Entity
@Table(name = "t_bank")
public class Bank implements Serializable, ICoreProfile, ISftpProfile,IHsmProfile {
	private static final long serialVersionUID = 1L;

    /**
     * 有效
     */
    public static final String STATUS_VALID = "1";

    /**
     * 无效
     */
    public static final String STATUS_INVALID = "0";
    /**
     * 联网行号
     */
    @Id
    @Column(name = "UB_CODE",updatable=false)
	private String ubcode;
	
	/**
	 * 标识码
	 */
    @Column(name="SYMBOL")
	private String symbol;
	
	/**
	 * 地区代号
	 */
    @Column(name="BRANCH")
	private String branch;
	
	/**
	 * 是否有协议
	 */
    @Column(name="AGREE")
    @Type(type ="yes_no")
	private boolean agreement;
	
	/**
	 * 排序
	 */
    @Column(name="SEQ")
	private Integer seq;
	
	/**
	 * 状态
	 */
    @Column(name="STATUS")
	private String status;
	
	/**
	 * 创建时间
	 */
    @Temporal(TemporalType.TIMESTAMP)
    @Column(name="CRE_DATE")
	private Date createDate;
	
	/**
	 * 更新时间
	 */	
    @Temporal(TemporalType.TIMESTAMP)
    @Column(name="UPD_DATE")
	private Date updateDate;
	
	/**
	 * 开通业务
	 */	
    @Column(name="BUSINESS")
	private String bussiness;
	
	/**
	 * 主题
	 */	
    @Column(name="THEME")
	private String theme;
	
	/**
	 * 联网行名称
	 */	
    @Column(name="NAME")
	private String name;
	
	/**
	 * 域名
	 */	
    @Column(name="DOMAIN")
	private String domain;
    /**
     * 渠道主机Ip
     */
    @Column(name = "TUXEDOPROXY_HOST")
    private String tuxedoproxyHost;
    /**
     * 渠道主机端口
     * @return
     */
    @Column(name = "TUXEDOPROXY_PORT")
    private String tuxedoproxyPort;
    /**
     * 加密机主机IP
     * @return
     */
    @Column(name = "HSMADAPTER_HOST")
    private String hsmadapterHost;
    /**
     * 加密机主机端口
     * @return
     */
    @Column(name = "HSMADAPTER_PORT")
    private String hsmadapterPort;
    /**
     * 加密机公钥
     * @return
     */
    @Column(name = "HSM_RSAPUBLICKEY")
    private String hsmRSAPublickey;
    /**
     * 转加密DES密钥
     * @return
     */
    @Column(name = "HSMADAPTER_ZPK")
    private String hsmadapterZPK;
    /**
     * 加密机索引
     */
    @Column(name = "HSMADAPTER_INDEX")
    private String hsmadapterIndex;
    /**
     * sftp主机IP
     * @return
     */
    @Column(name = "SFTP_HOST")
    private String sftpHost;
    /**
     * sftp端口
     * @return
     */
    @Column(name = "SFTP_PORT")
    private String sftpPort;
    /**
     * 共享目录
     * @return
     */
    @Column(name = "SFTP_FILEPATH")
    private String sftpFilePath;

	public String getUbcode() {
		return ubcode;
	}

	public String getSymbol() {
		return symbol;
	}

	public String getBranch() {
		return branch;
	}

	public boolean isAgreement() {
		return agreement;
	}

	public Integer getSeq() {
		return seq;
	}

	public String getStatus() {
		return status;
	}

	public Date getCreateDate() {
		return createDate;
	}

	public Date getUpdateDate() {
		return updateDate;
	}

	public String getBussiness() {
		return bussiness;
	}

	public String getTheme() {
		return theme;
	}

	public String getName() {
		return name;
	}
    
	public String getDomain() {
		return domain;
	}

	public void setUbcode(String ubcode) {
		this.ubcode = ubcode;
	}

	public void setSymbol(String symbol) {
		this.symbol = symbol;
	}

	public void setBranch(String branch) {
		this.branch = branch;
	}

	public void setAgreement(boolean agreement) {
		this.agreement = agreement;
	}

	public void setSeq(Integer seq) {
		this.seq = seq;
	}

	public void setStatus(String status) {
		this.status = status;
	}

	public void setCreateDate(Date createDate) {
		this.createDate = createDate;
	}

	public void setUpdateDate(Date updateDate) {
		this.updateDate = updateDate;
	}

	public void setBussiness(String bussiness) {
		this.bussiness = bussiness;
	}

	public void setTheme(String theme) {
		this.theme = theme;
	}

	public void setName(String name) {
		this.name = name;
	}

	public void setDomain(String domain) {
		this.domain = domain;
	}

	public String getTuxedoproxyHost() {
		return tuxedoproxyHost;
	}

	public void setTuxedoproxyHost(String tuxedoproxyHost) {
		this.tuxedoproxyHost = tuxedoproxyHost;
	}

	public String getTuxedoproxyPort() {
		return tuxedoproxyPort;
	}

	public void setTuxedoproxyPort(String tuxedoproxyPort) {
		this.tuxedoproxyPort = tuxedoproxyPort;
	}

	public String getHsmadapterHost() {
		return hsmadapterHost;
	}

	public void setHsmadapterHost(String hsmadapterHost) {
		this.hsmadapterHost = hsmadapterHost;
	}

	public String getHsmadapterPort() {
		return hsmadapterPort;
	}

	public void setHsmadapterPort(String hsmadapterPort) {
		this.hsmadapterPort = hsmadapterPort;
	}

	public String getHsmRSAPublickey() {
		return hsmRSAPublickey;
	}

	public void setHsmRSAPublickey(String hsmRSAPublickey) {
		this.hsmRSAPublickey = hsmRSAPublickey;
	}

	public String getHsmadapterZPK() {
		return hsmadapterZPK;
	}

	public void setHsmadapterZPK(String hsmadapterZPK) {
		this.hsmadapterZPK = hsmadapterZPK;
	}

	public String getSftpHost() {
		return sftpHost;
	}

	public void setSftpHost(String sftpHost) {
		this.sftpHost = sftpHost;
	}

	public String getSftpPort() {
		return sftpPort;
	}

	public void setSftpPort(String sftpPort) {
		this.sftpPort = sftpPort;
	}

	public String getSftpFilePath() {
		return sftpFilePath;
	}

	public void setSftpFilePath(String sftpFilePath) {
		this.sftpFilePath = sftpFilePath;
	}

	public String getHsmadapterIndex() {
		return hsmadapterIndex;
	}

	public void setHsmadapterIndex(String hsmadapterIndex) {
		this.hsmadapterIndex = hsmadapterIndex;
	}
}
