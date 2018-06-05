package netbank.pers.navigator.model;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Date;

import javax.persistence.Column;
import javax.persistence.DiscriminatorColumn;
import javax.persistence.DiscriminatorType;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Inheritance;
import javax.persistence.InheritanceType;
import javax.persistence.Table;
import javax.persistence.Version;
import org.hibernate.annotations.Type;


/*
 * MenuComponentDB.java
 *
 * 功能： 菜单实体，针对表T_MENU
 * 类名： MenuComponentDB
 *
 *   ver     变更日期    修改人    修改说明
 * ──────────────────────────────────
 *   V1.00   无          ld       初版
 *   V1.01   09-09-25    lotin    修改了属性命名
 *
 * Copyright (c) 2006, 2008 NewlandComputer All Rights Reserved.
 * LICENSE INFORMATION
 */
@Entity(name = "T_MENU")
@Inheritance(strategy = InheritanceType.SINGLE_TABLE)
@DiscriminatorColumn(name = "TYPE",
discriminatorType = DiscriminatorType.STRING)
public class MenuComponentDB implements Serializable {

    public static final String VALID = "1";
    public static final String MAIN_PARENT = "MAIN";
    private static final long serialVersionUID = 1L;
    /**
     * 内部编号
     */
    private Integer menuId;
    /**
     * 功能编号
     */
    private String funcId;
    /**
     * 父类编号
     */
    private String parentId;
    /**
     * 菜单名称,里面存放的是国际化的key
     */
    private String menuName;
    /**
     * 菜单描述
     */
    private String description;
    /**
     *  定位资源
     */
    private String url;
    /**
     * 是否最末端菜单
     * 0-枝干
     * 1-末端
     */
    private boolean end;
    /**
     * 是否常用功能
     */
    private String target;
    /**
     * 排序
     */
    private Integer seq;
    /**
     * 状态
     */
    private String status;
    /**
     *  是否常用功能
     */
    private boolean usually;
    /**
     * 是否快捷操作
     */
    private boolean shortCut;
    /**
     * 是否为包含其它菜单节点
     * 实现方式为异步调用包含链接址菜单项内容
     */
    private boolean include;
    /**
     * 创建时间
     */
    private Date createDate;
    /**
     * 更新时间
     */
    private Date updateDate;
    /**
     * 子菜单项
     * 在持久类中可以不作设置
     */
    private Collection<MenuComponentDB> subItems;
    private Boolean allow;
    private Integer version;

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "ID_MENU")
    public Integer getMenuId() {
        return menuId;
    }

    public void setMenuId(Integer menuId) {
        this.menuId = menuId;
    }

    @javax.persistence.Transient
    public Boolean isAllow() {
        return allow;
    }

    public void setAllow(Boolean allow) {
        this.allow = allow;
    }

    public void setSubItems(Collection<MenuComponentDB> subItems) {
        this.subItems = subItems;
    }

    @javax.persistence.Transient
    public Collection<MenuComponentDB> getSubItems() {
        if (subItems == null) {
            return new ArrayList<MenuComponentDB>();
        }
        return subItems;
    }

    @javax.persistence.Temporal(javax.persistence.TemporalType.TIMESTAMP)
    @Column(name = "CRE_DATE")
    public Date getCreateDate() {
        return createDate;
    }

    public void setCreateDate(Date createDate) {
        this.createDate = createDate;
    }

    @javax.persistence.Temporal(javax.persistence.TemporalType.TIMESTAMP)
    @Column(name = "UPD_DATE")
    public Date getUpdateDate() {
        return updateDate;
    }

    public void setUpdateDate(Date updateDate) {
        this.updateDate = updateDate;
    }

    @Version
    @Column(name = "VERSION")
    public Integer getVersion() {
        return version;
    }

    public void setVersion(Integer version) {
        this.version = version;
    }

    @Column(name = "DESCRIPTION")
    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    @Column(name = "FUNC_ID")
    public String getFuncId() {
        return funcId;
    }

    public void setFuncId(String funcId) {
        this.funcId = funcId;
    }

    @Column(name = "MENU_NAME")
    public String getMenuName() {
        return menuName;
    }

    public void setMenuName(String menuName) {
        this.menuName = menuName;
    }

    @Column(name = "PARENT_ID")
    public String getParentId() {
        return parentId;
    }

    public void setParentId(String parentId) {
        this.parentId = parentId;
    }

    @Column(name = "SEQ")
    public Integer getSeq() {
        return seq;
    }

    public void setSeq(Integer seq) {
        this.seq = seq;
    }

    @Column(name = "STATUS")
    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }

    @Column(name = "TARGET")
    public String getTarget() {
        return target;
    }

    public void setTarget(String target) {
        this.target = target;
    }

    @Column(name = "URL")
    public String getUrl() {
        return url;
    }

    public void setUrl(String url) {
        this.url = url;
    }

    @Column(name = "IS_END")
    @Type(type = "com.intensoft.dao.hibernate.type.ZeroOneType")
    public boolean isEnd() {
        return end;
    }

    public void setEnd(boolean end) {
        this.end = end;
    }

    @Column(name = "IS_INCLUDE")
    @Type(type = "com.intensoft.dao.hibernate.type.ZeroOneType")
    public boolean isInclude() {
        return include;
    }

    public void setInclude(boolean include) {
        this.include = include;
    }

    @Column(name = "IS_SHORTCUT")
    @Type(type = "com.intensoft.dao.hibernate.type.ZeroOneType")
    public boolean isShortCut() {
        return shortCut;
    }

    public void setShortCut(boolean shortCut) {
        this.shortCut = shortCut;
    }

    @Column(name = "IS_USUALLY")
    @Type(type = "com.intensoft.dao.hibernate.type.ZeroOneType")
    public boolean isUsually() {
        return usually;
    }

    public void setUsually(boolean usually) {
        this.usually = usually;
    }
}
