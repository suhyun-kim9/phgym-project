package com.phgym.main.model;

import com.phgym.join.model.UserInfoDTO;

public interface MainMapper {

	//코드 작성
	public int buyPromotion(MembershipPayHisDTO dto);
	
	
	public UserInfoDTO goPromotionPay(int sessionUserNo);
   
}
