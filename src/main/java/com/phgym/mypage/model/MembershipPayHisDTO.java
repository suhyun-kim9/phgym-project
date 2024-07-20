package com.phgym.mypage.model;

import java.time.LocalDate;

public class MembershipPayHisDTO {

	private int membershipPayNo;
	private int userNo;
	private LocalDate payDate;
	private LocalDate startDate;
	private LocalDate endDate;
	private String payMethod;
	private int payAmount;
	private String refundBankname;
	private String refundBankAccount;
	private String remarkTransferStatus;
	private LocalDate remarkTransferDate;
	private int remarkPayNo;
	
	public MembershipPayHisDTO() {
		super();
	}

	public MembershipPayHisDTO(int membershipPayNo, int userNo, LocalDate payDate, LocalDate startDate,
			LocalDate endDate, String payMethod, int payAmount, String refundBankname,
			String refundBankAccount, String remarkTransferStatus, LocalDate remarkTransferDate, int remarkPayNo) {
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

	public String getRemarkTransferStatus() {
		return remarkTransferStatus;
	}

	public void setRemarkTransferStatus(String remarkTransferStatus) {
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
