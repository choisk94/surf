package com.kh.surf.member.model.vo;

import java.sql.Date;

public class Member {

	private int userNo;
	private String email;
	private String gender;
	private int ageRange;
	private String password;
	private String nickname;
	private String userCode;
	private String status;
	private Date memEnrollDate;
	private String enrollType;
	
	public Member() {}

	public Member(int userNo, String email, String gender, String ageRange, String password, String nickname,
			String userCode, String status, Date memEnrolldate, String enrollType) {
		super();
		this.userNo = userNo;
		this.email = email;
		this.gender = gender;
		this.ageRange = ageRange;
		this.password = password;
		this.nickname = nickname;
		this.userCode = userCode;
		this.status = status;
		this.memEnrolldate = memEnrolldate;
		this.enrollType = enrollType;
	}

	public int getUserNo() {
		return userNo;
	}

	public void setUserNo(int userNo) {
		this.userNo = userNo;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getGender() {
		return gender;
	}

	public void setGender(String gender) {
		this.gender = gender;
	}

	public String getAgeRange() {
		return ageRange;
	}

	public void setAgeRange(String ageRange) {
		this.ageRange = ageRange;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getNickname() {
		return nickname;
	}

	public void setNickname(String nickname) {
		this.nickname = nickname;
	}

	public String getUserCode() {
		return userCode;
	}

	public void setUserCode(String userCode) {
		this.userCode = userCode;
	}

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

	public Date getMemEnrolldate() {
		return memEnrolldate;
	}

	public void setMemEnrolldate(Date memEnrolldate) {
		this.memEnrolldate = memEnrolldate;
	}

	public String getEnrollType() {
		return enrollType;
	}

	public void setEnrollType(String enrollType) {
		this.enrollType = enrollType;
	}

	@Override
	public String toString() {
		return "Member [userNo=" + userNo + ", email=" + email + ", gender=" + gender + ", ageRange=" + ageRange
				+ ", password=" + password + ", nickname=" + nickname + ", userCode=" + userCode + ", status=" + status
				+ ", memEnrolldate=" + memEnrolldate + ", enrollType=" + enrollType + "]";
	}
	
	
}
