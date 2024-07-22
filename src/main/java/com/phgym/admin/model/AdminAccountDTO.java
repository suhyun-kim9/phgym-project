package com.phgym.admin.model;
import java.time.LocalDate;


public class AdminAccountDTO {

		private int adminNo; // 관리자번호
		private String adminId; // 아이디
		private String adminPw; // 비밀번호
		private String adminName; // 이름
		private LocalDate adminBirth; // 생년월일
		private String adminGender; // 성별
		private String adminPhone; // 연락처
		private String adminEmail; // 이메일
		private LocalDate adminHireDate; // 입사일
		private String adminJobTitle; // 직책
		private String adminCareerHis; // 경력사항
		
		public AdminAccountDTO() {
			
		}

		public AdminAccountDTO(int adminNo, String adminId, String adminPw, String adminName, LocalDate adminBirth,
				String adminGender, String adminPhone, String adminEmail, LocalDate adminHireDate,
				String adminJobTitle, String adminCareerHis) {
			super();
			this.adminNo = adminNo;
			this.adminId = adminId;
			this.adminPw = adminPw;
			this.adminName = adminName;
			this.adminBirth = adminBirth;
			this.adminGender = adminGender;
			this.adminPhone = adminPhone;
			this.adminEmail = adminEmail;
			this.adminHireDate = adminHireDate;
			this.adminJobTitle = adminJobTitle;
			this.adminCareerHis = adminCareerHis;
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

		public String getAdminName() {
			return adminName;
		}

		public void setAdminName(String adminName) {
			this.adminName = adminName;
		}

		public LocalDate getAdminBirth() {
			return adminBirth;
		}

		public void setAdminBirth(LocalDate adminBirth) {
			this.adminBirth = adminBirth;
		}

		public String getAdminGender() {
			return adminGender;
		}

		public void setAdminGender(String adminGender) {
			this.adminGender = adminGender;
		}

		public String getAdminPhone() {
			return adminPhone;
		}

		public void setAdminPhone(String adminPhone) {
			this.adminPhone = adminPhone;
		}

		public String getAdminEmail() {
			return adminEmail;
		}

		public void setAdminEmail(String adminEmail) {
			this.adminEmail = adminEmail;
		}

		public LocalDate getAdminHireDate() {
			return adminHireDate;
		}

		public void setAdminHireDate(LocalDate adminHireDate) {
			this.adminHireDate = adminHireDate;
		}

		public String getAdminJobTitle() {
			return adminJobTitle;
		}

		public void setAdminJobTitle(String adminJobTitle) {
			this.adminJobTitle = adminJobTitle;
		}

		public String getAdminCareerHis() {
			return adminCareerHis;
		}

		public void setAdminCareerHis(String adminCareerHis) {
			this.adminCareerHis = adminCareerHis;
		}

		@Override
		public String toString() {
			return "AdminAccountDTO [adminNo=" + adminNo + ", adminId=" + adminId + ", adminPw=" + adminPw
					+ ", adminName=" + adminName + ", adminBirth=" + adminBirth + ", adminGender=" + adminGender
					+ ", adminPhone=" + adminPhone + ", adminEmail=" + adminEmail + ", adminHireDate=" + adminHireDate
					+ ", adminJobTitle=" + adminJobTitle + ", adminCareerHis=" + adminCareerHis + "]";
		}
	}
