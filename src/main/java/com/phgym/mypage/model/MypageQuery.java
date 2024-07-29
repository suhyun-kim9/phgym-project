package com.phgym.mypage.model;

public class MypageQuery {

	private int startRow;
    private int endRow;
    private int userNo;
	
    public MypageQuery() {
		super();
	}

	public MypageQuery(int startRow, int endRow, int userNo) {
		super();
		this.startRow = startRow;
		this.endRow = endRow;
		this.userNo = userNo;
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

	public int getUserNo() {
		return userNo;
	}

	public void setUserNo(int userNo) {
		this.userNo = userNo;
	}

	@Override
	public String toString() {
		return "MypageQuery [startRow=" + startRow + ", endRow=" + endRow + ", userNo=" + userNo + "]";
	}
}
