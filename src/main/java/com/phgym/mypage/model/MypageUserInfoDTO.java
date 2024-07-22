package com.phgym.mypage.model;

import java.time.LocalDate;

public class MypageUserInfoDTO {

	private int userNo;
	private String userId;
	private String userPw;
	private String userName;
	private LocalDate userBirth;
	private String userGender;
	private String userPhone;
	private String userEmail;
	private String userAddress;
	private LocalDate userRegDate;
	
	public MypageUserInfoDTO() {
		super();
	}
	
	public MypageUserInfoDTO(int userNo, String userId, String userPw, String userName, LocalDate userBirth,
			String userGender, String userPhone, String userEmail, String userAddress, LocalDate userRegDate) {
		super();
		this.userNo = userNo;
		this.userId = userId;
		this.userPw = userPw;
		this.userName = userName;
		this.userBirth = userBirth;
		this.userGender = userGender;
		this.userPhone = userPhone;
		this.userEmail = userEmail;
		this.userAddress = userAddress;
		this.userRegDate = userRegDate;
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
	
	public String getUserName() {
		return userName;
	}
	
	public void setUserName(String userName) {
		this.userName = userName;
	}
	
	public LocalDate getUserBirth() {
		return userBirth;
	}
	
	public void setUserBirth(LocalDate userBirth) {
		this.userBirth = userBirth;
	}
	
	public String getUserGender() {
		return userGender;
	}
	
	public void setUserGender(String userGender) {
		this.userGender = userGender;
	}
	
	public String getUserPhone() {
		return userPhone;
	}
	
	public void setUserPhone(String userPhone) {
		this.userPhone = userPhone;
	}
	
	public String getUserEmail() {
		return userEmail;
	}
	
	public void setUserEmail(String userEmail) {
		this.userEmail = userEmail;
	}
	
	public String getUserAddress() {
		return userAddress;
	}
	
	public void setUserAddress(String userAddress) {
		this.userAddress = userAddress;
	}
	
	public LocalDate getUserRegDate() {
		return userRegDate;
	}
	
	public void setUserRegDate(LocalDate userRegDate) {
		this.userRegDate = userRegDate;
	}
	
	@Override
	public String toString() {
		return "UserInfoDto [userNo=" + userNo + ", userId=" + userId + ", userPw=" + userPw + ", userName=" + userName
				+ ", userBirth=" + userBirth + ", userGender=" + userGender + ", userPhone=" + userPhone
				+ ", userEmail=" + userEmail + ", userAddress=" + userAddress + ", userRegDate=" + userRegDate + "]";
	}
}