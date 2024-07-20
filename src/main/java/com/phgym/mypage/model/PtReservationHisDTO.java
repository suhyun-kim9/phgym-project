package com.phgym.mypage.model;

import java.time.LocalDateTime;

public class PtReservationHisDTO {

	private int userNo;
	private int adminNo;
	private LocalDateTime reservationDate;
	private String progressStatus;
	private String content;
	
	public PtReservationHisDTO() {
		super();
	}
	
	public PtReservationHisDTO(int userNo, int adminNo, LocalDateTime reservationDate, String progressStatus,
			String content) {
		super();
		this.userNo = userNo;
		this.adminNo = adminNo;
		this.reservationDate = reservationDate;
		this.progressStatus = progressStatus;
		this.content = content;
	}
	
	public int getUserNo() {
		return userNo;
	}
	
	public void setUserNo(int userNo) {
		this.userNo = userNo;
	}
	
	public int getAdminNo() {
		return adminNo;
	}
	
	public void setAdminNo(int adminNo) {
		this.adminNo = adminNo;
	}
	
	public LocalDateTime getReservationDate() {
		return reservationDate;
	}
	
	public void setReservationDate(LocalDateTime reservationDate) {
		this.reservationDate = reservationDate;
	}
	
	public String getProgressStatus() {
		return progressStatus;
	}
	
	public void setProgressStatus(String progressStatus) {
		this.progressStatus = progressStatus;
	}
	
	public String getContent() {
		return content;
	}
	
	public void setContent(String content) {
		this.content = content;
	}
	
	@Override
	public String toString() {
		return "PtReservationHis [userNo=" + userNo + ", adminNo=" + adminNo + ", reservationDate=" + reservationDate
				+ ", progressStatus=" + progressStatus + ", content=" + content + "]";
	}
}
