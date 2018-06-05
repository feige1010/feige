package netbank.firm.menu.model;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

/**
 * 合作商行菜单控制表
 * @author zhangzhaoxing
 * 2009-08-04
 */
@Entity
@Table(name = "T_MENU_CTRL")
public class MenuCtrl implements Serializable {
	private static final long serialVersionUID = 1L;

	/**
	 * 内部编号
	 */
    @Id
    @GeneratedValue(strategy=GenerationType.AUTO)
    @Column(name="ID_MENU_CTRL")
	private Integer ID;

    /**
     * 菜单ID
     */
    @Column(name="ID_MENU")
	private Integer menuID;
	
    /**
     * 开通联网行行号
     */
    @Column(name="UB_CODE")
	private String ubcode;

	public Integer getID() {
		return ID;
	}

	public void setID(Integer id) {
		ID = id;
	}

	public Integer getMenuID() {
		return menuID;
	}

	public void setMenuID(Integer menuID) {
		this.menuID = menuID;
	}

	public String getUbcode() {
		return ubcode;
	}

	public void setUbcode(String ubcode) {
		this.ubcode = ubcode;
	}
}
