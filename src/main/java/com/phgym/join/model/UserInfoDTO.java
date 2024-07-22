package com.phgym.join.model;

import java.time.LocalDateTime;

public class UserInfoDTO {

	private int userNo;
	private String userId;
	private String userPw;
	private String name;
	private LocalDateTime birth;
	private String gender;
	private String phone;
	private String email;
	private String address;
	private LocalDateTime regDate;
	private String profile;
	
	public UserInfoDTO() {
		// TODO Auto-generated constructor stub
	}

	public UserInfoDTO(int userNo, String userId, String userPw, String name, LocalDateTime birth, String gender,
			String phone, String email, String address, LocalDateTime regDate, String profile) {
		super();
		this.userNo = userNo;
		this.userId = userId;
		this.userPw = userPw;
		this.name = name;
		this.birth = birth;
		this.gender = gender;
		this.phone = phone;
		this.email = email;
		this.address = address;
		this.regDate = regDate;
		this.profile = profile;
	}

	public int getUserNo() {
		return userNo;
	}

	public void setUserNo(int userNo) {
		this.userNo = userNo;
	}

	public String getUserId() {
		return userId;
	}

	public void setUserId(String userId) {
		this.userId = userId;
	}

	public String getUserPw() {
		return userPw;
	}

	public void setUserPw(String userPw) {
		this.userPw = userPw;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public LocalDateTime getBirth() {
		return birth;
	}

	public void setBirth(LocalDateTime birth) {
		this.birth = birth;
	}

	public String getGender() {
		return gender;
	}

	public void setGender(String gender) {
		this.gender = gender;
	}

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public LocalDateTime getRegDate() {
		return regDate;
	}

	public void setRegDate(LocalDateTime regDate) {
		this.regDate = regDate;
	}

	public String getProfile() {
		return profile;
	}

	public void setProfile(String profile) {
		this.profile = profile;
	}
	
}
