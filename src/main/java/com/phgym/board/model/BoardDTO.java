package com.phgym.board.model;

import java.sql.Timestamp;

public class BoardDTO {
	
	private int infoNo;
	private int adminNo;
	private String title;
	private Timestamp writeDate;
	private String content;
	private int hit;
	private String file;
	
	public BoardDTO() {
		super();
	}

	public BoardDTO(int infoNo, int adminNo, String title, Timestamp writeDate, String content, int hit, String file) {
		super();
		this.infoNo = infoNo;
		this.adminNo = adminNo;
		this.title = title;
		this.writeDate = writeDate;
		this.content = content;
		this.hit = hit;
		this.file = file;
	}

	@Override
	public String toString() {
		return "BoardDTO [infoNo=" + infoNo + ", adminNo=" + adminNo + ", title=" + title + ", writeDate=" + writeDate
				+ ", content=" + content + ", hit=" + hit + ", file=" + file + "]";
	}

	public int getInfoNo() {
		return infoNo;
	}

	public void setInfoNo(int infoNo) {
		this.infoNo = infoNo;
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

	public String getFile() {
		return file;
	}

	public void setFile(String file) {
		this.file = file;
	}
	

}
