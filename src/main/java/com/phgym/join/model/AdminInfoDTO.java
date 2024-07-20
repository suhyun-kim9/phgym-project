package com.phgym.join.model;

import java.time.LocalDateTime;

public class AdminInfoDTO {

	private int adminNo; // 관리자번호
	private String adminId; // 아이디
	private String adminPw; // 비밀번호
	private String name; // 이름
	private LocalDateTime birth; // 생년월일
	private String gender; // 성별
	private String phone; // 연락처
	private String email; // 이메일
	private LocalDateTime hireDate; // 입사일
	private String jobTitle; // 직책
	private String careerHis; // 경력사항
	private String profile; // 프로필
	
	public AdminInfoDTO() {
		
	}

	public AdminInfoDTO(int adminNo, String adminId, String adminPw, String name, LocalDateTime birth, String gender,
			String phone, String email, LocalDateTime hireDate, String jobTitle, String careerHis, String profile) {
		super();
		this.adminNo = adminNo;
		this.adminId = adminId;
		this.adminPw = adminPw;
		this.name = name;
		this.birth = birth;
		this.gender = gender;
		this.phone = phone;
		this.email = email;
		this.hireDate = hireDate;
		this.jobTitle = jobTitle;
		this.careerHis = careerHis;
		this.profile = profile;
	}

	public int getAdminNo() {
		return adminNo;
	}

	public void setAdminNo(int adminNo) {
		this.adminNo = adminNo;
	}

	public String getAdminId() {
		return adminId;
	}

	public void setAdminId(String adminId) {
		this.adminId = adminId;
	}

	public String getAdminPw() {
		return adminPw;
	}

	public void setAdminPw(String adminPw) {
		this.adminPw = adminPw;
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

	public LocalDateTime getHireDate() {
		return hireDate;
	}

	public void setHireDate(LocalDateTime hireDate) {
		this.hireDate = hireDate;
	}

	public String getJobTitle() {
		return jobTitle;
	}

	public void setJobTitle(String jobTitle) {
		this.jobTitle = jobTitle;
	}

	public String getCareerHis() {
		return careerHis;
	}

	public void setCareerHis(String careerHis) {
		this.careerHis = careerHis;
	}

	public String getProfile() {
		return profile;
	}

	public void setProfile(String profile) {
		this.profile = profile;
	}
	
}