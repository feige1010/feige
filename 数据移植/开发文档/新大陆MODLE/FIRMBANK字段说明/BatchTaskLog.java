package netbank.firm.base.batch.model;

import java.io.Serializable;
import java.util.Date;

import javax.persistence.*;

/**
 * 批量任务：系统运行记录日志
 * @author zhangzhaoxing
 * 2010-01-22
 */
@Entity
@Table(name = "T_BATCH_RUN_LOG")
@SequenceGenerator(name="S_T_BATCH_RUN_LOG", initialValue = 1, allocationSize = 1, sequenceName="S_T_BATCH_RUN_LOG")
public class BatchTaskLog implements Serializable {
	private static final long serialVersionUID = 1L;
	
	/**
	 * 成功运行结果
	 */
	public static final String RUN_SUCCESS = "S";
	
	/**
	 * 失败运行结果
	 */
	public static final String RUN_FAIL = "F";
	
	/**
	 * 运行中
	 */
	public static final String RUNNING = "R";	
	
	/**
	 * 内部编号
	 */
    @Id
    @GeneratedValue(strategy=GenerationType.SEQUENCE, generator = "S_T_BATCH_RUN_LOG")
    @Column(name="I_BATCH_TASK_LOG",updatable=false)	
	private Integer ID;
	/**
	 * 任务名称
	 */
    @Column(name="TASK_NAME",updatable=false)	
	private String taskName;
	
    /**
     * 系统执行时间
     */
    @Column(name="RUN_TIME",updatable=false)
    private Date runTime;
	
    /**
     * 执行结果(S-成功 R-执行中 F-失败)
     */
    @Column(name="RUN_RESULT")
	private String runResult;
    
    /**
     * 失败原因
     */
    @Column(name="EXCEPT_MSG")
    private String exceptMsg;
    
    /**
     * 执行机器IP
     */
    @Column(name="RUN_IP")
    private String runIp;

	public Integer getID() {
		return ID;
	}

	public void setID(Integer iD) {
		ID = iD;
	}

	public String getTaskName() {
		return taskName;
	}

	public void setTaskName(String taskName) {
		this.taskName = taskName;
	}

	public Date getRunTime() {
		return runTime;
	}

	public void setRunTime(Date runTime) {
		this.runTime = runTime;
	}

	public String getRunResult() {
		return runResult;
	}

	public void setRunResult(String runResult) {
		this.runResult = runResult;
	}

	public String getExceptMsg() {
		return exceptMsg;
	}

	public void setExceptMsg(String exceptMsg) {
		this.exceptMsg = exceptMsg;
	}

	public String getRunIp() {
		return runIp;
	}

	public void setRunIp(String runIp) {
		this.runIp = runIp;
	}
	
	
}
