package com.phgym.mypage.model;

import java.time.LocalDate;
import java.util.List;

public interface MypageMapper {

	public int doCheckin(int sessionUserNo);
	
	public int checkCheckin(int sessionUserNo);
	
	public int doTransfer(MembershipPayHisDTO dto);
	
	public int updateRemarkTransferState(MembershipPayHisDTO dto);
	
	public LocalDate selectEndDate(int membershipPayNo);
	
	public List<MembershipPayHisDTO> checkTransfer(int membershipPayNo);
	
	public List<CheckinHisDTO> getCheckinList(int sessionUserNo);

	public List<PtReservationHisDTO> getTimeList(PtReservationHisDTO dto);

	public int doPtReservation(PtReservationHisDTO dto);

	public MypageUserInfoDTO checkUserInfo(int userNo);

	public int getTotalPtCnt(int sessionUserNo);

	public int getDidPtCnt(int sessionUserNo);

	public MypageUserInfoDTO getUserInfo(int sessionUserNo);

	public int userInfoUpdate(MypageUserInfoDTO dto);

	public List<MembershipPayHisDTO> getMembershipList(int sessionUserNo);

	public List<PtReservationDTO> getPtReservationList(int sessionUserNo);
}
