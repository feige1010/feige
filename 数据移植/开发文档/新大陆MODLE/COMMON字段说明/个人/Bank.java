package netbank.pers.unionbank.model;

import java.io.Serializable;
import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

import netbank.pers.utils.IHsmProfile;
import netbank.pers.utils.ISftpProfile;

import com.intensoft.coresyst.txnservice.ICoreProfile;
import com.intensoft.file.DataColumn;
import com.intensoft.file.FileEntity;
import com.intensoft.file.SepCombinedDataField;
import com.intensoft.formater.DateFormatter;

/**
 * 联网行对象模型
 * @author AsOne
 *
 */
@Entity
@Table(name = "T_BANK")
@FileEntity(delimiter = "|", fields = {"branch", "ubCode", "symbol", "unName", "biz", "uptDate", "txnOper"})
public class Bank implements Serializable,ICoreProfile, ISftpProfile, IHsmProfile  {

    private static final long serialVersionUID = 5778295375737621358L;

    /**
     * 有效
     */
    public static final String STATUS_VALID = "1";

    /**
     * 无效
     */
    public static final String STATUS_INVALID = "0";
    /**
     * 联网行编号,主键
     */
    @DataColumn(name = "联网行编号")
    @Id
    @Column(name = "UB_CODE",updatable=false)
    private String ubCode;
    /**
     * 联网行机构标识码
     */
    @DataColumn(name = "银行机构标识码")
    @Column(name = "SYMBOL")
    private String symbol;
    /**
     * 联网行名称
     */
    @DataColumn(name = "联网行名称")
    @Column(name = "NAME")
    private String name;
    /**
     * 开通业务
     */
    @DataColumn(name = "开通业务")
    @Column(name = "BUSINESS")
    private String business;
    /**
     * 是否协议合作网银
     */
    @Column(name = "AGREE")
    private Boolean agree;
    /**
     * 创建时间
     */
    @javax.persistence.Temporal(javax.persistence.TemporalType.TIMESTAMP)
    @Column(name = "CRE_DATE")
    private Date creDate;
    /**
     * 更新时间
     */
    @DataColumn(name = "修改时间", decorator = SepCombinedDataField.class, formatter = DateFormatter.class, pattern="yyyyMMddHHmmss")

    @javax.persistence.Temporal(javax.persistence.TemporalType.TIMESTAMP)
    @Column(name = "UPD_DATE")
    private Date updDate;
    /**
     * 状态
     */
    @Column(name = "STATUS")
    private String status;
    /**
     * 域名
     */
    @Column(name = "DOMAIN")
    private String domain;
    /**
     * 地区代号
     */
    @DataColumn(name = "地区代号", decorator = SepCombinedDataField.class)
    @Column(name = "BRANCH")
    private String branch;
    /**
     * 主题
     */
    @Column(name = "THEME")
    private String theme;
    /**
     * 交易操作标志(文件记录状态)
     */
    @DataColumn(name = "记录状态")
    @javax.persistence.Transient
    private String txnOper;
    @Column(name = "SEQ")
    private Integer seq;
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
     * 个人网银被访问端口
     * @return
     */
    @Column(name = "PERS_INETDAE_PORT")
    private String persInetDaePort;
    /**
     * 企业网银被访问端口
     * @return
     */
    @Column(name = "FIRM_INETDAE_PORT")
    private String firmInetDaePort;
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
     * 转加密密钥
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
    
    
  
    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

   
    public String getDomain() {
        return domain;
    }

    public void setDomain(String domain) {
        this.domain = domain;
    }

       public String getBranch() {
        return branch;
    }

    public void setBranch(String branch) {
        this.branch = branch;
    }

   
    public String getBusiness() {
        return business;
    }

    public void setBusiness(String business) {
        this.business = business;
    }

  
    public Boolean isAgree() {
        return agree;
    }

    public void setAgree(Boolean agree) {
        this.agree = agree;
    }

  
    public Date getCreDate() {
        return creDate;
    }

    public void setCreDate(Date creDate) {
        this.creDate = creDate;
    }

    public Date getUpdDate() {
        return updDate;
    }

    public void setUpdDate(Date uptDate) {
        this.updDate = uptDate;
    }

    
    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }

   
    public String getUbCode() {
        return ubCode;
    }

    public void setUbCode(String ubCode) {
        this.ubCode = ubCode;
    }

   
    public String getSymbol() {
        return symbol;
    }

    public void setSymbol(String symbol) {
        this.symbol = symbol;
    }

 
    public String getTheme() {
        return theme;
    }

    public void setTheme(String theme) {
        this.theme = theme;
    }

   
    public Integer getSeq() {
        return seq;
    }

    public void setSeq(Integer seq) {
        this.seq = seq;
    }

    
    public String getTxnOper() {
        return txnOper;
    }

    public void setTxnOper(String txnOper) {
        this.txnOper = txnOper;
    }

    @Override
    public String toString() {
        StringBuffer sb = new StringBuffer();
        sb.append("\n地区代号:").append(this.getBranch()).append("\n");
        sb.append("联网行编号:").append(this.getUbCode()).append("\n");
        sb.append("银行机构标识码:").append(this.getSymbol()).append("\n");
        sb.append("联网行名称:").append(this.getName()).append("\n");
        sb.append("开通业务:").append(this.getBusiness()).append("\n");
        sb.append("修改时间:").append(this.getUpdDate()).append("\n");
        sb.append("记录状态:").append(this.getTxnOper()).append("\n");
        return sb.toString();
    }

    /*--------------------------------add by syx------------------------------*/
    @Override
    public boolean equals(Object o) {
        if (o == this) {
            return true;
        }
        if (!(o instanceof Bank)) {
            return false;
        }
        final Bank obj = (Bank)o;
        if (this.ubCode.equals(obj.ubCode)) {
            return true;
        } else {
            return false;
        }
    }

    @Override
    public int hashCode() {
        return ubCode == null ? 0 : ubCode.hashCode();
    }

    public Bank updateBank(Bank bank) {
        this.branch = bank.branch;
        this.ubCode = bank.ubCode;
        this.symbol = bank.symbol;
        this.name = bank.name;
        this.business = bank.business;
        this.updDate = bank.updDate;
        return this;
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

	public String getPersInetDaePort() {
		return persInetDaePort;
	}

	public void setPersInetDaePort(String persInetDaePort) {
		this.persInetDaePort = persInetDaePort;
	}

	public String getFirmInetDaePort() {
		return firmInetDaePort;
	}

	public void setFirmInetDaePort(String firmInetDaePort) {
		this.firmInetDaePort = firmInetDaePort;
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

	public String getHsmadapterIndex() {
		return hsmadapterIndex;
	}

	public void setHsmadapterIndex(String hsmadapterIndex) {
		this.hsmadapterIndex = hsmadapterIndex;
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


}
