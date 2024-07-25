package com.phgym.mypage.model;

public class PtReservationHisDTO2 {

	private int userNo;
	private int adminNo;
	private String reservationDate;
	private String progressStatus;
	private String content;
	
	public PtReservationHisDTO2() {
		super();
	}
	
	public PtReservationHisDTO2(int userNo, int adminNo, String reservationDate, String progressStatus,
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
	
	public String getReservationDate() {
		return reservationDate;
	}
	
	public void setReservationDate(String reservationDate) {
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
