package org.jsoft.vo;

public class User {
	private String phoneNum;
	private String username;
	private String password;
	private int id;
	
	public User(){
		
	}
	
	public String getPhoneNum() {
		return phoneNum;
	}

	public void setPhoneNum(String phoneNum) {
		this.phoneNum = phoneNum;
	}

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	private User(String username, String password,String phoneNum){
		super();
		this.username = username;
		this.password = password;
		this.phoneNum = phoneNum;
	}

	@Override
	public String toString() {
		// TODO Auto-generated method stub
		return super.toString();
	}
	
	
}
