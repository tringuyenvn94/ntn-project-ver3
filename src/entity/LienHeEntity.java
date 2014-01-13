package entity;

import java.util.Date;

public class LienHeEntity {
	private String fullName, email, phone, address, company, contact, content;
	private int id;
	private Date date;
	private boolean isRead;

	public LienHeEntity(String fullName, String email, String phone, String address, String company, String contact, String content) {
		this.fullName = fullName;
		this.email = email;
		this.phone = phone;
		this.address = address;
		this.company = company;
		this.contact = contact;
		this.content = content;
	}

	public LienHeEntity() {
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public boolean isRead() {
		return isRead;
	}

	public void setRead(boolean isRead) {
		this.isRead = isRead;
	}

	public Date getDate() {
		return date;
	}

	public void setDate(Date date) {
		this.date = date;
	}

	public String getFullName() {
		return fullName;
	}

	public void setFullName(String fullName) {
		this.fullName = fullName;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getCompany() {
		return company;
	}

	public void setCompany(String company) {
		this.company = company;
	}

	public String getContact() {
		return contact;
	}

	public void setContact(String contact) {
		this.contact = contact;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	@Override
	public String toString() {
		return "Full name: " + this.fullName + ", email: " + this.email + ", phone: " + this.phone + ", address: " + this.address + ", company: " + this.company + ", contact type: " + this.contact + ", content: " + this.content;
	}

}
