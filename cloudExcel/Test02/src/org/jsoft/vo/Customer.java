package org.jsoft.vo;

public class Customer {
	private long id;
	private String name;
	private String source;
	private String status;
	private long userID;
	private String contactTime;
	private String timeOfContact;
	private double money;
	private String address;
	private String phone;
	private String remarks;
	private String file;
	
	public Customer(){
		
	}

	public long getId() {
		return id;
	}

	public void setId(long id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getSource() {
		return source;
	}

	public void setSource(String source) {
		this.source = source;
	}

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

	public long getUserID() {
		return userID;
	}

	public void setUserID(long userID) {
		this.userID = userID;
	}

	public String getContactTime() {
		return contactTime;
	}

	public void setContactTime(String contactTime) {
		this.contactTime = contactTime;
	}

	public String getTimeOfContact() {
		return timeOfContact;
	}

	public void setTimeOfContact(String timeOfContact) {
		this.timeOfContact = timeOfContact;
	}

	public double getMoney() {
		return money;
	}

	public void setMoney(double money) {
		this.money = money;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	public String getRemarks() {
		return remarks;
	}

	public void setRemarks(String remarks) {
		this.remarks = remarks;
	}

	public String getFile() {
		return file;
	}

	public void setFile(String file) {
		this.file = file;
	}

	public Customer(long id, String name, String source, String status,
			long userID, String contactTime, String timeOfContact,
			double money, String address, String phone, String remarks,
			String file) {
		super();
		this.id = id;
		this.name = name;
		this.source = source;
		this.status = status;
		this.userID = userID;
		this.contactTime = contactTime;
		this.timeOfContact = timeOfContact;
		this.money = money;
		this.address = address;
		this.phone = phone;
		this.remarks = remarks;
		this.file = file;
	}

	@Override
	public String toString() {
		return "Customer [address=" + address + ", contactTime=" + contactTime
				+ ", file=" + file + ", id=" + id + ", money=" + money
				+ ", name=" + name + ", phone=" + phone + ", remarks="
				+ remarks + ", source=" + source + ", status=" + status
				+ ", timeOfContact=" + timeOfContact + ", userID=" + userID
				+ "]";
	}
	
}
