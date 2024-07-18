package com.phgym.main.model;

import java.time.LocalDate;

public class UserDTO {

	private int userNo; //회원번호
	private String userId; //아이디
	private String pw; //비밀번호
	private String name; //이름
	private LocalDate birth; //생년월일
	private String gender; //성별
	private String phone; //연락처
	private String address; //주소
	private LocalDate regDate; //가입일
	private String profile; //프로필
	
	public UserDTO() {
		
	}

	public UserDTO(int userNo, String userId, String pw, String name, LocalDate birth, String gender, String phone,
			String address, LocalDate regDate, String profile) {
		super();
		this.userNo = userNo;
		this.userId = userId;
		this.pw = pw;
		this.name = name;
		this.birth = birth;
		this.gender = gender;
		this.phone = phone;
		this.address = address;
		this.regDate = regDate;
		this.profile = profile;
	}
	
	//getter,setter
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

	public String getPw() {
		return pw;
	}

	public void setPw(String pw) {
		this.pw = pw;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public LocalDate getBirth() {
		return birth;
	}

	public void setBirth(LocalDate birth) {
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

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public LocalDate getRegDate() {
		return regDate;
	}

	public void setRegDate(LocalDate regDate) {
		this.regDate = regDate;
	}

	public String getProfile() {
		return profile;
	}

	public void setProfile(String profile) {
		this.profile = profile;
	}

	@Override
	public String toString() {
		return "UserDTO [userNo=" + userNo + ", userId=" + userId + ", pw=" + pw + ", name=" + name + ", birth=" + birth
				+ ", gender=" + gender + ", phone=" + phone + ", address=" + address + ", regDate=" + regDate
				+ ", profile=" + profile + "]";
	}
	
	
}
