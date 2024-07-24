package com.phgym.main.model;

import java.time.LocalDate;

public interface MainMapper {

	//코드 작성
	public int buyPromotion1(MembershipPayHisDTO dto);
	public int buyPromotion2(MembershipPayHisDTO dto);
	public int buyPromotion3(MembershipPayHisDTO dto);
	public int buyPromotion4(PtPayHisDTO dto);
	
	public UserInfoDTO goPromotionPay1(int sessionUserNo);
	public UserInfoDTO goPromotionPay2(int sessionUserNo);
	public UserInfoDTO goPromotionPay3(int sessionUserNo);
	public UserInfoDTO goPromotionPay4(int sessionUserNo);

	public LocalDate getUserPeriod(int sessionUserNo);
   
}
