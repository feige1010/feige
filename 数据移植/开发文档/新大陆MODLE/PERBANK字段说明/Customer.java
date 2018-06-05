/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package netbank.pers.account.model;

import com.intensoft.exception.base.ClientAble;
import com.intensoft.file.DataColumn;
import java.io.Serializable;
import java.util.Date;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.SequenceGenerator;
import javax.persistence.Version;
/**
 *
 * @author ld 
 * @author linzr 添加 phone addr postal_code profession 属性
 */
@Entity(name = "T_CUSTOMER")
@SequenceGenerator(name = "S_T_CUSTOMER",allocationSize=1,sequenceName = "S_T_CUSTOMER")
public class Customer implements Serializable,ClientAble {

    /**
     * 不可用客户号,为注销账户
     */
    public static final String STATUS_INVALID = "0";
    /**
     * 可用客户号
     */
    public static final String STATUS_VALID = "1";
    
    /**
     * 账户密码输入超限被锁定
     */
    public static final String STATUS_WRONG_PASSWORD = "2";
      /**
     * 修改账户资料
     */
    public static final String STATUS_MODIFY = "4";
    /**
     * 第一次登陆-是
     */
    public static final String IS_FIRST_LOGIN="Y";
    /**
     * 第一次登陆-否
     */
    public static final String NOT_FIRST_LOGIN="N";
    /**
     * 序号
     */
    @DataColumn(name = "序号")
    private Integer customertId;
    /**
     * 联网行编号
     */
    @DataColumn(name = "联网行编号")
    private String ubCode;
   /**
     * 客户代号
     */
    @DataColumn(name = "客户代号")
    private String cid;
   /**
     * 客户名
     */
    @DataColumn(name = "客户名")
    private String name;
   /**
     * 性别
     */
    @DataColumn(name = "性别")
    private String gender;
   /**
     * 登陆密码
     */
    @DataColumn(name = "登陆密码")
    private String logPwd;
   /**
     * 移动电话
     */
    @DataColumn(name = "移动电话")
    private String mobile;
   /**
     * 电子邮箱
     */
    @DataColumn(name = "电子邮箱")
    private String email;
   /**
     * 预留验证信息
     */
    @DataColumn(name = "预留验证信息")
    private String validInfo;
   /**
     * 呢称
     */
    @DataColumn(name = "呢称")
    private String nickName;
   /**
     * 创建日期
     */
    @DataColumn(name = "创建日期")
    private Date creDate;
   /**
     * 修改日期
     */
    @DataColumn(name = "修改日期")
    private Date updDate;
   /**
     * 状态
     */
    @DataColumn(name = "状态")
    private String status;
   /**
     * 证件类型
     */
    @DataColumn(name = "证件类型")
    private String idType;
   /**
     * 证件号码
     */
    @DataColumn(name = "证件号码")
    private String idNo;
   /**
     * 上次登陆时间
     */
    @DataColumn(name = "上次登陆时间")
    private Date lastLogDate;
   /**
     * 上次失败时间
     */
    @DataColumn(name = "上次失败时间")
    private Date lastFailDate;
   /**
     * 登陆失败次数
     */
    @DataColumn(name = "登陆失败次数")
    private int failCount;
   /**
     * 版本
     */
    @DataColumn(name = "版本")
    private int version;

     /**
     * 其他联系电话
     */
    @DataColumn(name= "其他联系电话")
    private String phone;
    /**
     * 通信地址
     */
    @DataColumn(name= "通信地址")
    private String addr;
    /**
     * 邮政编码
     */
    @DataColumn(name= "邮政编码")
    private String postalCode;
     /**
     * 职业
     */
    @DataColumn(name= "职业")
    private String profession;
    
    /**
     * 核心客户号
     * add by jacksonhuang
     */
    @DataColumn(name= "核心客户号")
    private String kernelID;
    /**
     * 第一次登陆
     * @return
     * add by chensong
     */
    @DataColumn(name= "第一次登陆")
    private String firstLogin;

    @Column(name="CID")
    public String getCid() {
        return cid;
    }

    public void setCid(String cid) {
        this.cid = cid;
    }
    @Column(name="CRE_DATE")
    public Date getCreDate() {
        return creDate;
    }

    public void setCreDate(Date creDate) {
        this.creDate = creDate;
    }
  
    @Id
    @GeneratedValue(strategy = GenerationType.SEQUENCE, generator = "S_T_CUSTOMER")
    @Column(name="ID_CUSTOMER", updatable=false)
    public Integer getCustomertId() {
        return customertId;
    }

    public void setCustomertId(Integer customertId) {
        this.customertId = customertId;
    }
    @Column(name="EMAIL")
    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }
    @Column(name="FAIL_COUNT")
    public int getFailCount() {
        return failCount;
    }

    public void setFailCount(int failCount) {
        this.failCount = failCount;
    }
    @Column(name="GENDER")
    public String getGender() {
        return gender;
    }

    public void setGender(String gender) {
        this.gender = gender;
    }
    @Column(name="ID_NO")
    public String getIdNo() {
        return idNo;
    }

    public void setIdNo(String idNo) {
        this.idNo = idNo;
    }
    @Column(name="ID_TYPE")
    public String getIdType() {
        return idType;
    }

    public void setIdType(String idType) {
        this.idType = idType;
    }
    @Column(name="LAST_FAIL_DATE")
    public Date getLastFailDate() {
        return lastFailDate;
    }

    public void setLastFailDate(Date lastFailDate) {
        this.lastFailDate = lastFailDate;
    }
    @Column(name="LAST_LOGIN_DATE")
    public Date getLastLogDate() {
        return lastLogDate;
    }

    public void setLastLogDate(Date lastLogDate) {
        this.lastLogDate = lastLogDate;
    }
    @Column(name="LOGIN_PWD")
    public String getLogPwd() {
        return logPwd;
    }

    public void setLogPwd(String logPwd) {
        this.logPwd = logPwd;
    }
    @Column(name="MOBILE")
    public String getMobile() {
        return mobile;
    }

    public void setMobile(String mobile) {
        this.mobile = mobile;
    }
    @Column(name="NAME")
    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }
    @Column(name="NICK_NAME")
    public String getNickName() {
        return nickName;
    }

    public void setNickName(String nickName) {
        this.nickName = nickName;
    }
    @Column(name="STATUS")
    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }
    @Column(name="UB_CODE")
    public String getUbCode() {
        return ubCode;
    }

    public void setUbCode(String ubCode) {
        this.ubCode = ubCode;
    }
    @Column(name="UPD_DATE")
    public Date getUpdDate() {
        return updDate;
    }

    public void setUpdDate(Date updDate) {
        this.updDate = updDate;
    }
    @Column(name="VALID_INFO")
    public String getValidInfo() {
        return validInfo;
    }

    public void setValidInfo(String validInfo) {
        this.validInfo = validInfo;
    }
    @Version
    @Column(name="VERSION")
    public int getVersion() {
        return version;
    }

    public void setVersion(int version) {
        this.version = version;
    }
    @Column(name="ADDR")
    public String getAddr() {
        return addr;
    }

    public void setAddr(String addr) {
        this.addr = addr;
    }
    @Column(name="PHONE")
    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }
    @Column(name="POSTAL_CODE")
    public String getPostalCode() {
        return postalCode;
    }

    public void setPostalCode(String postalCode) {
        this.postalCode = postalCode;
    }
    @Column(name="PROFESSION")
    public String getProfession() {
        return profession;
    }

    public void setProfession(String profession) {
        this.profession = profession;
    }
    
    @Column(name="KERNEL_ID")
	public String getKernelID() {
		return kernelID;
	}

	public void setKernelID(String kernelID) {
		this.kernelID = kernelID;
	}

   @javax.persistence.Transient
    public String getUserName() {
        return this.getName();
    }
    @javax.persistence.Transient
    public String getUserId() {
        return this.getCid();
    }
    @javax.persistence.Transient
    public String getUserClientVersion() {
        return String.valueOf(getVersion());
    }
    @javax.persistence.Transient
    public String getClientIp() {
        return "";
    }
    @javax.persistence.Transient
    public String getMachineFlag() {
        return "";
    }

    @Column(name="FIRST_LOGIN")
	public String getFirstLogin() {
		return firstLogin;
	}

	public void setFirstLogin(String firstLogin) {
		this.firstLogin = firstLogin;
	}

    
}
