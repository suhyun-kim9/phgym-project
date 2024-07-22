package com.phgym.main.model;

import com.phgym.main.model.UserInfoDTO;

public interface MainMapper {

	//코드 작성
	public int buyPromotion(MembershipPayHisDTO dto);
	
	public UserInfoDTO goPromotionPay1(int sessionUserNo);
	public UserInfoDTO goPromotionPay2(int sessionUserNo);
	public UserInfoDTO goPromotionPay3(int sessionUserNo);
	public UserInfoDTO goPromotionPay4(int sessionUserNo);

   
}
