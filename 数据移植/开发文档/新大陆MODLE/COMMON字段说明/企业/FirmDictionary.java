package netbank.common.dict.model;

import com.intensoft.base.Dictionary;

import javax.persistence.*;

/**
 * 数据字典类
 * 
 * @author AsOne
 */
@Entity
@Table(name = "T_FIRM_DICTIONARY")
@SequenceGenerator(name="S_T_DICTIONARY", initialValue = 1, allocationSize = 1, sequenceName="S_T_FIRM_DICTIONARY")
public class FirmDictionary implements Dictionary{

	/**
	 * 内部编号
	 */
	private Integer iDictionary;
	/**
	 * 数据字典类名字
	 */
	private String className;
	/**
	 * 键
	 */
	private String key;
	/**
	 * 值
	 */
	private String value;
	/**
	 * 排序因子
	 */
	private int seq;
	/**
	 * 数据类型
	 */
	private String dataType;

	@Id
	@Column(name = "ID_DICTIONARY")
	@GeneratedValue(strategy = GenerationType.SEQUENCE, generator = "S_T_DICTIONARY")
	public Integer getIDictionary() {
		return iDictionary;
	}

	public void setIDictionary(Integer iDictionary) {
		this.iDictionary = iDictionary;
	}

	@Column(name = "KEYNAME")
	public String getKey() {
		return key;
	}

	public void setKey(String key) {
		this.key = key;
	}

	@Column(name = "SEQ")
	public int getSeq() {
		return seq;
	}

	public void setSeq(int seq) {
		this.seq = seq;
	}

	@Column(name = "VALUE")
	public String getValue() {
		return value;
	}

	public void setValue(String value) {
		this.value = value;
	}

	@Column(name = "CLASS_NAME")
	public String getClassName() {
		return className;
	}

	public void setClassName(String className) {
		this.className = className;
	}

	@Column(name = "DATA_TYPE")
	public String getDataType() {
		return dataType;
	}

	public void setDataType(String dataType) {
		this.dataType = dataType;
	}

}