package com.phgym.admin.model;

public class PageVo {
	
	private int startRow;
	private int endRow;
	
	public PageVo() {
		super();
	}
	
	public PageVo(int startRow, int endRow) {
		super();
		this.startRow = startRow;
		this.endRow = endRow;
	}
	
	public int getStartRow() {
		return startRow;
	}
	
	public void setStartRow(int startRow) {
		this.startRow = startRow;
	}
	
	public int getEndRow() {
		return endRow;
	}
	
	public void setEndRow(int endRow) {
		this.endRow = endRow;
	}
	
	@Override
	public String toString() {
		return "PageVo [startRow=" + startRow + ", endRow=" + endRow + "]";
	}
}
