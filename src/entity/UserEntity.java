package entity;

import java.util.Date;

public class UserEntity {
	private int userId;
	private String username, password, fullName, email, year, city;
	private boolean isMale, isReceiveEmail, isShowEmail;
	private Date dateReg;
	private StatusEntity status;

	public UserEntity(String username, String password) {
		this.username = username;
		this.password = password;
	}

	public UserEntity() {

	}

	public UserEntity(String username, String password, String fullName, String email, String year, boolean isMale, boolean isReceiveEmail, boolean isShowEmail, String city) {
		this.username = username;
		this.password = password;
		this.fullName = fullName;
		this.email = email;
		this.year = year;
		this.isMale = isMale;
		this.isReceiveEmail = isReceiveEmail;
		this.isShowEmail = isShowEmail;
		this.city = city;
	}

	public int getUserId() {
		return userId;
	}

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getCity() {
		return city;
	}

	public void setCity(String city) {
		this.city = city;
	}

	public void setUserId(int userId) {
		this.userId = userId;
	}

	public String getUseName() {
		return username;
	}

	public void setUseName(String useName) {
		this.username = useName;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
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

	public String getYear() {
		return year;
	}

	public void setYear(String year) {
		this.year = year;
	}

	public boolean isMale() {
		return isMale;
	}

	public void setMale(boolean isMale) {
		this.isMale = isMale;
	}

	public boolean isReceiveEmail() {
		return isReceiveEmail;
	}

	public void setReceiveEmail(boolean isReceiveEmail) {
		this.isReceiveEmail = isReceiveEmail;
	}

	public boolean isShowEmail() {
		return isShowEmail;
	}

	public void setShowEmail(boolean isShowEmail) {
		this.isShowEmail = isShowEmail;
	}

	public Date getDateReg() {
		return dateReg;
	}

	public void setDateReg(Date dateReg) {
		this.dateReg = dateReg;
	}

	public StatusEntity getStatus() {
		return status;
	}

	public void setStatus(StatusEntity status) {
		this.status = status;
	}

}
