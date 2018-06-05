package netbank.firm.menu.model;

import java.io.Serializable;

import javax.persistence.*;

/**
 * 相关功能链接表
 * @author zhangzhaoxing
 * 2009-08-04 
 */
@Entity
@Table(name = "T_MENU_LINK")
@SequenceGenerator(name="S_T_MENU_LINK", initialValue = 1, allocationSize = 1, sequenceName="S_T_MENU_LINK")
public class MenuLink implements Serializable {
	private static final long serialVersionUID = 1L;
	
	/**
	 * 内部编号
	 */
    @Id
    @GeneratedValue(strategy=GenerationType.SEQUENCE, generator = "S_T_MENU_LINK")
    @Column(name="ID_MENU_LINK")	
	private Integer ID;
	
    /**
     * 排序字段
     */
    @Column(name="SEQ")
	private Integer SEQ;
	
    /**
     * 功能ID 
     */
    @Column(name="FUN_ID")
	private String funId;
    
	
    /**
     * 外部窗口停留目标
     */
    @Column(name="TARGET")
	private String target;
	
    /**
     * 外部关联目标名称
     */
    @Column(name="LINK_NAME")
	private String name;
	
    /**
     * 外部定位资源
     */
    @Column(name="URL")
	private String URL;

	public Integer getID() {
		return ID;
	}

	public void setID(Integer id) {
		ID = id;
	}

	public Integer getSEQ() {
		return SEQ;
	}

	public void setSEQ(Integer seq) {
		SEQ = seq;
	}

	public String getFunId() {
		return funId;
	}

	public void setFunId(String funId) {
		this.funId = funId;
	}

	public String getTarget() {
		return target;
	}

	public void setTarget(String target) {
		this.target = target;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getURL() {
		return URL;
	}

	public void setURL(String url) {
		URL = url;
	}

	
}
