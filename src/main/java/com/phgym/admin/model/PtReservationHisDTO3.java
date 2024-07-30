package com.phgym.admin.model;

public class PtReservationHisDTO3 {

	private int ptReservationHisNo;
	private String reservationDate;
	private String reservationTime;
	private String userName;
	private String progressStatus;
	private String userNo;
	
	public PtReservationHisDTO3() {
		super();
	}

	public int getPtReservationHisNo() {
		return ptReservationHisNo;
	}

	public void setPtReservationHisNo(int ptReservationHisNo) {
		this.ptReservationHisNo = ptReservationHisNo;
	}

	public String getReservationDate() {
		return reservationDate;
	}

	public void setReservationDate(String reservationDate) {
		this.reservationDate = reservationDate;
	}

	public String getReservationTime() {
		return reservationTime;
	}

	public void setReservationTime(String reservationTime) {
		this.reservationTime = reservationTime;
	}

	public String getUserName() {
		return userName;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}

	public String getProgressStatus() {
		return progressStatus;
	}

	public void setProgressStatus(String progressStatus) {
		this.progressStatus = progressStatus;
	}

	public String getUserNo() {
		return userNo;
	}

	public void setUserNo(String userNo) {
		this.userNo = userNo;
	}

	@Override
	public String toString() {
		return "PtReservationHisDTO3 [ptReservationHisNo=" + ptReservationHisNo + ", reservationDate=" + reservationDate
				+ ", reservationTime=" + reservationTime + ", userName=" + userName + ", progressStatus="
				+ progressStatus + ", userNo=" + userNo + "]";
	}
	
	
	
}
