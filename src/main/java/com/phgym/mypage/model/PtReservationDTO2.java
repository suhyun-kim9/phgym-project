package com.phgym.mypage.model;

import java.time.LocalDate;
import java.time.LocalTime;

public class PtReservationDTO2 {

	private int ptReservationHisNo;
	private LocalDate reservationDate;
	private LocalTime reservationTime;
	private String adminName;
	private String progressStatus;
	
	public PtReservationDTO2() {
		super();
	}

	public PtReservationDTO2(int ptReservationHisNo, LocalDate reservationDate, LocalTime reservationTime,
			String adminName, String progressStatus) {
		super();
		this.ptReservationHisNo = ptReservationHisNo;
		this.reservationDate = reservationDate;
		this.reservationTime = reservationTime;
		this.adminName = adminName;
		this.progressStatus = progressStatus;
	}

	public int getPtReservationHisNo() {
		return ptReservationHisNo;
	}

	public void setPtReservationHisNo(int ptReservationHisNo) {
		this.ptReservationHisNo = ptReservationHisNo;
	}

	public LocalDate getReservationDate() {
		return reservationDate;
	}

	public void setReservationDate(LocalDate reservationDate) {
		this.reservationDate = reservationDate;
	}

	public LocalTime getReservationTime() {
		return reservationTime;
	}

	public void setReservationTime(LocalTime reservationTime) {
		this.reservationTime = reservationTime;
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
		return "PtReservationDTO2 [ptReservationHisNo=" + ptReservationHisNo + ", reservationDate=" + reservationDate
				+ ", reservationTime=" + reservationTime + ", adminName=" + adminName + ", progressStatus="
				+ progressStatus + "]";
	}
}
