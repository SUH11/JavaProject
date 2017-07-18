package org.jsoft.vo;

public class Status {
	private Long id;
	private String sValue;
	private String sKey;
	private String tableName;
	private Long sort;
	
	public Status(){
		
	}
	
	public Status(Long id, String sValue, String sKey, String tableName,
			Long sort) {
		super();
		this.id = id;
		this.sValue = sValue;
		this.sKey = sKey;
		this.tableName = tableName;
		this.sort = sort;
	}

	
	@Override
	public String toString() {
		return "Status [id=" + id + ", sKey=" + sKey + ", sValue=" + sValue
				+ ", sort=" + sort + ", tableName=" + tableName + "]";
	}


	public Long getId() {
		return id;
	}
	public void setId(Long id) {
		this.id = id;
	}
	public String getsValue() {
		return sValue;
	}
	public void setsValue(String sValue) {
		this.sValue = sValue;
	}
	public String getsKey() {
		return sKey;
	}
	public void setsKey(String sKey) {
		this.sKey = sKey;
	}
	public String getTableName() {
		return tableName;
	}
	public void setTableName(String tableName) {
		this.tableName = tableName;
	}
	public Long getSort() {
		return sort;
	}
	public void setSort(Long sort) {
		this.sort = sort;
	}
	
}
