package com.phgym.join.model;

import java.time.LocalDateTime;

public class JoinDTO {

	private int adminNo;
	private String adminId;
	private String pw;
	private String name;
	private LocalDateTime birth;
	private String gender;
	private String email;
	private LocalDateTime hireDate;
	private String jobTitle;
	private String careerHis;
	private String profile;
	
	public JoinDTO() {
		super();
	}

	public JoinDTO(int adminNo, String adminId, String pw, String name, LocalDateTime birth, String gender,
				   String email, LocalDateTime hireDate, String jobTitle, String careerHis, String profile) {
		super();
		this.adminNo = adminNo;
		this.adminId = adminId;
		this.pw = pw;
		this.name = name;
		this.birth = birth;
		this.gender = gender;
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
