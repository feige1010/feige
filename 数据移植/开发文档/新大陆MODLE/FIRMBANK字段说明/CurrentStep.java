/*
 * CurrentStep.java
 *
 * 功能： （用一句话描述类的功能）
 * 类名：  CurrentStep
 *
 *   ver     变更日期           修改人        修改说明
 * ──────────────────────────────────
 *   V1.00   2009-9-1    dvlp  初版
 *
 * Copyright (c) 2000,2009 NewlandComputer All Rights Reserved.
 */

package netbank.firm.bizflow.model;

import javax.persistence.*;

/**
 * 本类是当前步骤对象 ，描述本类功能
 * @author   zhangzhaoxing
 * @version  v1.0  2009-9-1 初版
 */
@Entity
@Table(name="t_bf_current_step")
@SequenceGenerator(name="S_T_BF_CURRENT_STEP", initialValue = 1, allocationSize = 1, sequenceName="S_T_BF_CURRENT_STEP")
public class CurrentStep extends Step {
	private static final long serialVersionUID = 1L;
	/**
	 * 任务状态
	 */
	public static final String STATUS_FINISH ="FINISH";
	public static final String STATUS_UNDERWAY ="UNDERWAY";
	public static final String STATUS_CANCEL="CANCEL";	
	public static final String STATUS_DUE="DUE";
	
	@Id
	@GeneratedValue(strategy=GenerationType.SEQUENCE, generator = "S_T_BF_CURRENT_STEP")
	@Column(name="ID_CURRENT_STEP")
	private Integer ID;
	

	public Integer getID() {
		return ID;
	}

	public void setID(Integer id) {
		ID = id;
	}
	
	
}
