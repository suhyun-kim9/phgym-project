package com.phgym.admin.model;

import java.util.ArrayList;
import java.util.List;

import com.phgym.mypage.model.PtReservationHisDTO;
import com.phgym.mypage.model.PtReservationHisDTO2;

public interface AdminMapper {
	
		// 관리자 정보 조회
		public AdminAccountDTO getAdminAccount(int adminNo);
		
		
//		// (사용자이름)으로 유저 아이디 가져오기
//		public int getUserId(int userNo);
		
		// 유저 아이디로 관리자 정보 가져오기
		public AdminAccountDTO getAdminAccountForUserId(int userId);

		// 관리자 정보 수정하기
		public int modifyAdminAccount(AdminAccountDTO dto); 
		
		// 회원 정보 조회
		public ArrayList<UserAccountDTO> getUserAccount(String userName);
		
		//관리자 스케쥴 조회
		public List<PtReservationHisDTO> getTrainerPtCheck (int adminNo);

		// 중복 
		public UserAccountDTO getUserAccount2(int userNo);


		public PtReservationHisDTO2 doPtPlanCheck(PtReservationHisDTO2 dto);
}
