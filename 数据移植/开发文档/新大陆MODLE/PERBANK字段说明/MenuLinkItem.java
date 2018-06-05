package netbank.pers.navigator.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.SequenceGenerator;
import javax.persistence.Table;

/**
 *
 * @author ld
 * 
 */
@Entity
@Table(name = "T_MENU_LINK")
@SequenceGenerator(name = "S_T_MENU_LINK",allocationSize=1,sequenceName = "S_T_MENU_LINK")
public class MenuLinkItem {

    private Integer linkId;
    private Integer menuId;
    private String funcId;
    private String url;
    private String target;
    private String name;
    private Integer seq;

  

    @Id
    //@GeneratedValue(strategy = GenerationType.IDENTITY)
    @GeneratedValue(strategy = GenerationType.SEQUENCE, generator = "S_T_MENU_LINK")
    @Column(name = "ID_LINK")
    public Integer getLinkId() {
        return linkId;
    }
    @Column(name = "FUNC_ID")
    public String getFuncId() {
        return funcId;
    }
    @Column(name = "ID_MENU")
    public Integer getMenuId() {
        return menuId;
    }
    @Column(name = "NAME")
    public String getName() {
        return name;
    }
    @Column(name = "SEQ")
    public Integer getSeq() {
        return seq;
    }
    @Column(name = "TARGET")
    public String getTarget() {
        return target;
    }
    @Column(name = "URL")
    public String getUrl() {
        return url;
    }

    public void setFuncId(String funcId) {
        this.funcId = funcId;
    }

    public void setLinkId(Integer linkId) {
        this.linkId = linkId;
    }

    public void setMenuId(Integer menuId) {
        this.menuId = menuId;
    }

    public void setName(String name) {
        this.name = name;
    }

    public void setSeq(Integer seq) {
        this.seq = seq;
    }

    public void setTarget(String target) {
        this.target = target;
    }

    public void setUrl(String url) {
        this.url = url;
    }

  
}
