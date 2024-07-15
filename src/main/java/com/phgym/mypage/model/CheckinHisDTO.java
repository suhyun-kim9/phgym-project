package com.phgym.mypage.model;

import java.time.LocalDateTime;

public class CheckinHisDTO {
	
	private int userNo;
	private LocalDateTime checkinDate;
	
	public CheckinHisDTO() {
		super();
	}

	public CheckinHisDTO(int userNo, LocalDateTime checkinDate) {
		super();
		this.userNo = userNo;
		this.checkinDate = checkinDate;
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
		return "CheckinHisDTO [userNo=" + userNo + ", checkinDate=" + checkinDate + "]";
	}
}
