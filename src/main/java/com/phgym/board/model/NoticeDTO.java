package com.phgym.board.model;

import java.sql.Timestamp;

public class NoticeDTO {

	private int noticeNo;
	private int adminNo;
	private String title;
	private Timestamp writeDate;
	private String content;
	private int hit;
	
	public NoticeDTO() {
		super();
	}

	public NoticeDTO(int noticeNo, int adminNo, String title, Timestamp writeDate, String content, int hit) {
		super();
		this.noticeNo = noticeNo;
		this.adminNo = adminNo;
		this.title = title;
		this.writeDate = writeDate;
		this.content = content;
		this.hit = hit;
	}

	@Override
	public String toString() {
		return "NoticeNoDTO [noticeNo=" + noticeNo + ", adminNo=" + adminNo + ", title=" + title + ", writeDate=" + writeDate
				+ ", content=" + content + ", hit=" + hit  + "]";
	}

	public int getNoticeNo() {
		return noticeNo;
	}

	public void setNoticeNo(int noticeNo) {
		this.noticeNo = noticeNo;
	}

	public int getAdminNo() {
		return adminNo;
	}

	public void setAdminNo(int adminNo) {
		this.adminNo = adminNo;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public Timestamp getWriteDate() {
		return writeDate;
	}

	public void setWriteDate(Timestamp writeDate) {
		this.writeDate = writeDate;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public int getHit() {
		return hit;
	}

	public void setHit(int hit) {
		this.hit = hit;
	}

}
