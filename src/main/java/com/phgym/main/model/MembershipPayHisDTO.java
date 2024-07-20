package com.phgym.main.model;

import java.time.LocalDate;

public class MembershipPayHisDTO {

	private int membershipPayNo; //구매번호
	private int userNo; //회원번호
	private LocalDate payDate; //결제일
	private LocalDate startDate; //시작일
	private LocalDate endDate; //종료일
	private String payMethod; //결제방법
	private int payAmount; //결제금액
	private String refundBankname; //환불(은행명)
	private String refundBankAccount; //환불(계좌번호)
	private int remarkTransferStatus; //비고(양도여부)
	private LocalDate remarkTransferDate; //비고(양도일)
	private int remarkPayNo; //비고(구매번호)
	
	public MembershipPayHisDTO() {
		super();
	}

	public MembershipPayHisDTO(int membershipPayNo, int userNo, LocalDate payDate, LocalDate startDate,
			LocalDate endDate, String payMethod, int payAmount, String refundBankname,
			String refundBankAccount, int remarkTransferStatus, LocalDate remarkTransferDate, int remarkPayNo) {
		super();
		this.membershipPayNo = membershipPayNo;
		this.userNo = userNo;
		this.payDate = payDate;
		this.startDate = startDate;
		this.endDate = endDate;
		this.payMethod = payMethod;
		this.payAmount = payAmount;
		this.refundBankname = refundBankname;
		this.refundBankAccount = refundBankAccount;
		this.remarkTransferStatus = remarkTransferStatus;
		this.remarkTransferDate = remarkTransferDate;
		this.remarkPayNo = remarkPayNo;
	}

	public int getMembershipPayNo() {
		return membershipPayNo;
	}

	public void setMembershipPayNo(int membershipPayNo) {
		this.membershipPayNo = membershipPayNo;
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

	public LocalDate getStartDate() {
		return startDate;
	}

	public void setStartDate(LocalDate startDate) {
		this.startDate = startDate;
	}

	public LocalDate getEndDate() {
		return endDate;
	}

	public void setEndDate(LocalDate endDate) {
		this.endDate = endDate;
	}

	public String getPayMethod() {
		return payMethod;
	}

	public void setPayMethod(String payMethod) {
		this.payMethod = payMethod;
	}

	public int getPayAmount() {
		return payAmount;
	}

	public void setPayAmount(int payAmount) {
		this.payAmount = payAmount;
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

	public int getRemarkTransferStatus() {
		return remarkTransferStatus;
	}

	public void setRemarkTransferStatus(int remarkTransferStatus) {
		this.remarkTransferStatus = remarkTransferStatus;
	}

	public LocalDate getRemarkTransferDate() {
		return remarkTransferDate;
	}

	public void setRemarkTransferDate(LocalDate remarkTransferDate) {
		this.remarkTransferDate = remarkTransferDate;
	}

	public int getRemarkPayNo() {
		return remarkPayNo;
	}

	public void setRemarkPayNo(int remarkPayNo) {
		this.remarkPayNo = remarkPayNo;
	}

	@Override
	public String toString() {
		return "MembershipPayHisDTO [membershipPayNo=" + membershipPayNo + ", userNo=" + userNo + ", payDate=" + payDate
				+ ", startDate=" + startDate + ", endDate=" + endDate + ", payMethod=" + payMethod + ", payAmount="
				+ payAmount + ", refundBankname=" + refundBankname + ", refundBankAccount=" + refundBankAccount
				+ ", remarkTransferStatus=" + remarkTransferStatus + ", remarkTransferDate=" + remarkTransferDate
				+ ", remarkPayNo=" + remarkPayNo + "]";
	}

	
}
