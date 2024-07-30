package com.phgym.admin.model;

public class PtReservationHisDTO2 {

	private int ptReservationHisNo;
	private String reservationDate;
	private String reservationTime;
	private String adminName;
	private String progressStatus;
	
	public PtReservationHisDTO2() {
		super();
	}
	
	public PtReservationHisDTO2(int ptReservationHisNo, String reservationDate, String reservationTime,
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
		return "PtReservationHisDTO2 [ptReservationHisNo=" + ptReservationHisNo + ", reservationDate=" + reservationDate
				+ ", reservationTime=" + reservationTime + ", adminName=" + adminName + ", progressStatus="
				+ progressStatus + "]";
	}
}
