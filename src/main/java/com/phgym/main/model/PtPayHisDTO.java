package com.phgym.main.model;

import java.time.LocalDate;

public class PtPayHisDTO {
	private int ptPayNo; //PT구매번호
	private int userNo; //회원번호
	private LocalDate payDate; //결제일
	private String payMethod; //결제방법
	private int payCnt; //구매개수
	private int payPrice; //결제금액
	private String refundBankname; //환불(은행명)
	private String refundBankAccount; //환불(계좌번호)
	
	
	public PtPayHisDTO() {
		super();
	}


	public PtPayHisDTO(int ptPayNo, int userNo, LocalDate payDate, String payMethod, int payCnt, int payPrice,
			String refundBankname, String refundBankAccount) {
		super();
		this.ptPayNo = ptPayNo;
		this.userNo = userNo;
		this.payDate = payDate;
		this.payMethod = payMethod;
		this.payCnt = payCnt;
		this.payPrice = payPrice;
		this.refundBankname = refundBankname;
		this.refundBankAccount = refundBankAccount;
	}


	public int getPtPayNo() {
		return ptPayNo;
	}


	public void setPtPayNo(int ptPayNo) {
		this.ptPayNo = ptPayNo;
	}


	public int getUserNo() {
		return userNo;
	}


	public void setUserNo(int userNo) {
		this.userNo = userNo;
	}


	public LocalDate getPayDate() {
		return payDate;
	}


	public void setPayDate(LocalDate payDate) {
		this.payDate = payDate;
	}


	public String getPayMethod() {
		return payMethod;
	}


	public void setPayMethod(String payMethod) {
		this.payMethod = payMethod;
	}


	public int getPayCnt() {
		return payCnt;
	}


	public void setPayCnt(int payCnt) {
		this.payCnt = payCnt;
	}


	public int getPayPrice() {
		return payPrice;
	}


	public void setPayPrice(int payPrice) {
		this.payPrice = payPrice;
	}


	public String getRefundBankname() {
		return refundBankname;
	}


	public void setRefundBankname(String refundBankname) {
		this.refundBankname = refundBankname;
	}


	public String getRefundBankAccount() {
		return refundBankAccount;
	}


	public void setRefundBankAccount(String refundBankAccount) {
		this.refundBankAccount = refundBankAccount;
	}


	@Override
	public String toString() {
		return "PtPayHisDTO [ptPayNo=" + ptPayNo + ", userNo=" + userNo + ", payDate=" + payDate + ", payMethod="
				+ payMethod + ", payCnt=" + payCnt + ", payPrice=" + payPrice + ", refundBankname=" + refundBankname
				+ ", refundBankAccount=" + refundBankAccount + "]";
	}
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
}
