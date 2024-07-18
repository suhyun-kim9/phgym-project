package com.phgym.mypage.model;

public class CheckinListDTO {

	private String checkinDate;
	private String checkinTime;
	private String startDate;
	private String endDate;
	
	public CheckinListDTO() {
		super();
	}
	
	public CheckinListDTO(String checkinDate, String checkinTime, String startDate, String endDate) {
		super();
		this.checkinDate = checkinDate;
		this.checkinTime = checkinTime;
		this.startDate = startDate;
		this.endDate = endDate;
	}
	
	public String getCheckinDate() {
		return checkinDate;
	}
	
	public void setCheckinDate(String checkinDate) {
		this.checkinDate = checkinDate;
	}
	
	public String getCheckinTime() {
		return checkinTime;
	}
	
	public void setCheckinTime(String checkinTime) {
		this.checkinTime = checkinTime;
	}
	
	public String getStartDate() {
		return startDate;
	}
	
	public void setStartDate(String startDate) {
		this.startDate = startDate;
	}
	
	public String getEndDate() {
		return endDate;
	}
	
	public void setEndDate(String endDate) {
		this.endDate = endDate;
	}
	
	@Override
	public String toString() {
		return "CheckinListDTO [checkinDate=" + checkinDate + ", checkinTime=" + checkinTime + ", startDate="
				+ startDate + ", endDate=" + endDate + "]";
	}
}
