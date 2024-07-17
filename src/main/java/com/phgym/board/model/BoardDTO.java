package com.phgym.board.model;

import java.sql.Timestamp;

public class BoardDTO {
	
	private int info_no;
	private int admin_no;
	private String title;
	private Timestamp write_date;
	private String content;
	private int hit;
	private String file;
	
	public BoardDTO() {
		super();
	}
	
	public BoardDTO(int info_no, int admin_no, String title, Timestamp write_date, String content, int hit,
			String file) {
		super();
		this.info_no = info_no;
		this.admin_no = admin_no;
		this.title = title;
		this.write_date = write_date;
		this.content = content;
		this.hit = hit;
		this.file = file;
	}

	public int getInfo_no() {
		return info_no;
	}

	public void setInfo_no(int info_no) {
		this.info_no = info_no;
	}

	public int getAdmin_no() {
		return admin_no;
	}

	public void setAdmin_no(int admin_no) {
		this.admin_no = admin_no;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public Timestamp getWrite_date() {
		return write_date;
	}

	public void setWrite_date(Timestamp write_date) {
		this.write_date = write_date;
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
