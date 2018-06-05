/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package netbank.pers.navigator.model;


import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.IdClass;

/**
 * 菜单控制
 * @author ld
 * @date   Mar 24, 2009
 */
@Entity(name = "T_MENU_CTRL")
@IdClass(MenuCtrlItemId.class)
public class MenuCtrlItem {
    private Integer menuId;
    
    private String ubCode;
    @Id
    public Integer getMenuId() {
        return menuId;
    }

    public void setMenuId(Integer menuId) {
        this.menuId = menuId;
    }
    @Id
    public String getUbCode() {
        return ubCode;
    }

    public void setUbCode(String ubCode) {
        this.ubCode = ubCode;
    }
    
}
