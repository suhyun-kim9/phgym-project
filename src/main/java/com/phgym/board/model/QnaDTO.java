package com.phgym.board.model;

import java.sql.Date;

public class QnaDTO {
    private int inquiryNo;
    private String title;
    private String pw;
    private Date writeDate;
    private String writer;
    private String phone;
    private String content;
    private int hit;
    private int adminNo;
    private Date replyDate;
    private String replyContent;

    public QnaDTO() {
        super();
    }

    public QnaDTO(int inquiryNo, String title, String pw, Date writeDate, String writer, String phone, String content, int hit, int adminNo, Date replyDate, String replyContent) {
        this.inquiryNo = inquiryNo;
        this.title = title;
        this.pw = pw;
        this.writeDate = writeDate;
        this.writer = writer;
        this.phone = phone;
        this.content = content;
        this.hit = hit;
        this.adminNo = adminNo;
        this.replyDate = replyDate;
        this.replyContent = replyContent;
    }

    public int getInquiryNo() {
        return inquiryNo;
    }

    public void setInquiryNo(int inquiryNo) {
        this.inquiryNo = inquiryNo;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getPw() {
        return pw;
    }

    public void setPw(String pw) {
        this.pw = pw;
    }

    public Date getWriteDate() {
        return writeDate;
    }

    public void setWriteDate(Date writeDate) {
        this.writeDate = writeDate;
    }

    public String getWriter() {
        return writer;
    }

    public void setWriter(String writer) {
        this.writer = writer;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
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

    public int getAdminNo() {
        return adminNo;
    }

    public void setAdminNo(int adminNo) {
        this.adminNo = adminNo;
    }

    public Date getReplyDate() {
        return replyDate;
    }

    public void setReplyDate(Date replyDate) {
        this.replyDate = replyDate;
    }

    public String getReplyContent() {
        return replyContent;
    }

    public void setReplyContent(String replyContent) {
        this.replyContent = replyContent;
    }

    @Override
    public String toString() {
        return "InquiryDTO{" +
                "inquiryNo=" + inquiryNo +
                ", title='" + title + '\'' +
                ", pw='" + pw + '\'' +
                ", writeDate=" + writeDate +
                ", writer='" + writer + '\'' +
                ", phone='" + phone + '\'' +
                ", content='" + content + '\'' +
                ", hit=" + hit +
                ", adminNo=" + adminNo +
                ", replyDate=" + replyDate +
                ", replyContent='" + replyContent + '\'' +
                '}';
    }
}
