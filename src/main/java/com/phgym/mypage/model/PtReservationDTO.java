package com.phgym.mypage.model;

import java.time.LocalDateTime;

public class PtReservationDTO {

	private int ptReservationHisNo;
	private LocalDateTime reservationDate;
	private String adminName;
	private String progressStatus;
	
	public PtReservationDTO() {
		super();
	}
	
	public PtReservationDTO(int ptReservationHisNo, LocalDateTime reservationDate, String adminName,
			String progressStatus) {
		super();
		this.ptReservationHisNo = ptReservationHisNo;
		this.reservationDate = reservationDate;
		this.adminName = adminName;
		this.progressStatus = progressStatus;
	}
	
	public int getPtReservationHisNo() {
		return ptReservationHisNo;
	}
	
	public void setPtReservationHisNo(int ptReservationHisNo) {
		this.ptReservationHisNo = ptReservationHisNo;
	}
	
	public LocalDateTime getReservationDate() {
		return reservationDate;
	}
	
	public void setReservationDate(LocalDateTime reservationDate) {
		this.reservationDate = reservationDate;
	}
	
	public String getAdminName() {
		return adminName;
	}
	
	public void setAdminName(String adminName) {
		this.adminName = adminName;
	}
	
	public String getProgressStatus() {
		return progressStatus;
	}
	
	public void setProgressStatus(String progressStatus) {
		this.progressStatus = progressStatus;
	}
	
	@Override
	public String toString() {
		return "getPtReservationDTO [ptReservationHisNo=" + ptReservationHisNo + ", reservationDate=" + reservationDate
				+ ", adminName=" + adminName + ", progressStatus=" + progressStatus + "]";
	}
}
