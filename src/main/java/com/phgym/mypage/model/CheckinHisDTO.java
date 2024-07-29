package com.phgym.mypage.model;

import java.time.LocalDateTime;

public class CheckinHisDTO {
	
	private int rn;
	private int userNo;
	private LocalDateTime checkinDate;
	
	public CheckinHisDTO() {
		super();
	}

	public CheckinHisDTO(int rn, int userNo, LocalDateTime checkinDate) {
		super();
		this.rn = rn;
		this.userNo = userNo;
		this.checkinDate = checkinDate;
	}

	public int getRn() {
		return rn;
	}

	public void setRn(int rn) {
		this.rn = rn;
	}

	public int getUserNo() {
		return userNo;
	}

	public void setUserNo(int userNo) {
		this.userNo = userNo;
	}

	public LocalDateTime getCheckinDate() {
		return checkinDate;
	}

	public void setCheckinDate(LocalDateTime checkinDate) {
		this.checkinDate = checkinDate;
	}

	@Override
	public String toString() {
		return "CheckinHisDTO [rn=" + rn + ", userNo=" + userNo + ", checkinDate=" + checkinDate + "]";
	}
}
