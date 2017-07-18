package org.jsoft.vo;

public class SysUser {
	private Long ID;
	private String name;
	private String sex;
	private String department;
	private String enterDate;
	private Integer age;
	private String education;
	
	public SysUser(){
		
	}
	public SysUser(Long iD, String name, String sex, String department,
			String enterDate, Integer age, String education) {
		super();
		ID = iD;
		this.name = name;
		this.sex = sex;
		this.department = department;
		this.enterDate = enterDate;
		this.age = age;
		this.education = education;
	}
	
	public String getEducation() {
		return education;
	}

	@Override
	public String toString() {
		return "SysUser [ID=" + ID + ", age=" + age + ", department="
		+ department + ", education=" + education + ", enterDate="
		+ enterDate + ", name=" + name + ", sex=" + sex + "]";
	}
	public void setEducation(String education) {
		this.education = education;
	}


	
	public Long getID() {
		return ID;
	}

	public void setID(Long iD) {
		ID = iD;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}




	public String getSex() {
		return sex;
	}

	public void setSex(String sex) {
		this.sex = sex;
	}

	public String getDepartment() {
		return department;
	}

	public void setDepartment(String department) {
		this.department = department;
	}

	public String getEnterDate() {
		return enterDate;
	}

	public void setEnterDate(String enterDate) {
		this.enterDate = enterDate;
	}

	public Integer getAge() {
		return age;
	}

	public void setAge(Integer age) {
		this.age = age;
	}



}
