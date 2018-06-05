/*
 * HistoryStep.java
 *
 * 功能： （用一句话描述类的功能）
 * 类名：  HistoryStep
 *
 *   ver     变更日期           修改人        修改说明
 * ──────────────────────────────────
 *   V1.00   2009-9-1    dvlp  初版
 *
 * Copyright (c) 2000,2009 NewlandComputer All Rights Reserved.
 */

package netbank.firm.bizflow.model;

import java.util.Date;

import javax.persistence.*;

/**
 * 本类是历史步骤 ，描述本类功能
 * @author   zhangzhaoxing
 * @version  v1.0  2009-9-1 初版
 */
@Entity
@Table(name="t_bf_history_step")
@SequenceGenerator(name="S_T_BF_HISTORY_STEP", initialValue = 1, allocationSize = 1, sequenceName="S_T_BF_HISTORY_STEP")
public class HistoryStep extends Step {
	private static final long serialVersionUID = 1L;
	
	public HistoryStep() {}
	
	public HistoryStep(CurrentStep step) {
		this.setEntryId(step.getEntryId());
		this.setStepId(step.getStepId());
		this.setOwner(step.getOwner());
		this.setCaller(step.getCaller());
		this.setStartDate(step.getStartDate());
		this.setDueDate(step.getDueDate());
		this.setActionId(step.getActionId());
		this.setFinishDate(step.getFinishDate());
		this.setStatus(step.getStatus());
	}

	@Id
	@GeneratedValue(strategy=GenerationType.SEQUENCE, generator = "S_T_BF_HISTORY_STEP")
	@Column(name="ID_CURRENT_STEP")
	private Integer ID;
	
	public Integer getID() {
		return ID;
	}

	public void setID(Integer id) {
		ID = id;
	}
}
