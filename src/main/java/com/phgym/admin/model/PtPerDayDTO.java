package com.phgym.admin.model;

import java.time.LocalDate;

public class PtPerDayDTO {

	private int cnt;
	private LocalDate localDate;
	
	public PtPerDayDTO() {
		super();
	}
	
	public PtPerDayDTO(int cnt, LocalDate localDate) {
		super();
		this.cnt = cnt;
		this.localDate = localDate;
	}
	
	public int getCnt() {
		return cnt;
	}
	
	public void setCnt(int cnt) {
		this.cnt = cnt;
	}
	
	public LocalDate getLocalDate() {
		return localDate;
	}
	
	public void setLocalDate(LocalDate localDate) {
		this.localDate = localDate;
	}
	
	@Override
	public String toString() {
		return "PtPerDayDTO [cnt=" + cnt + ", localDate=" + localDate + "]";
	}
}
