package com.phgym.mypage.model;

import java.time.LocalDate;
import java.time.LocalTime;

public class CheckinListDTO {

	private int no;
	private LocalDate checkinDate;
	private LocalTime checkinTime;
	
	public CheckinListDTO() {
		super();
	}

	public CheckinListDTO(int no, LocalDate checkinDate, LocalTime checkinTime) {
		super();
		this.no = no;
		this.checkinDate = checkinDate;
		this.checkinTime = checkinTime;
	}

	public int getNo() {
		return no;
	}

	public void setNo(int no) {
		this.no = no;
	}

	public LocalDate getCheckinDate() {
		return checkinDate;
	}

	public void setCheckinDate(LocalDate checkinDate) {
		this.checkinDate = checkinDate;
	}

	public LocalTime getCheckinTime() {
		return checkinTime;
	}

	public void setCheckinTime(LocalTime checkinTime) {
		this.checkinTime = checkinTime;
	}

	@Override
	public String toString() {
		return "CheckinListDTO [no=" + no + ", checkinDate=" + checkinDate + ", checkinTime=" + checkinTime + "]";
	}
}
