package com.phgym.admin.model;

import java.util.ArrayList;
import java.util.List;

import com.phgym.mypage.model.PtReservationHisDTO;
import com.phgym.mypage.model.PtReservationHisDTO2;

public interface AdminMapper {
	
		// 관리자 정보 조회
		public AdminAccountDTO getAdminAccount(int adminNo);
		
		
		// (사용자이름)으로 유저 아이디 가져오기
		public int getUserId(int userNo);
		
		// 유저 아이디로 관리자 정보 가져오기
		public AdminAccountDTO getAdminAccountForUserId(int userId);

		// 관리자 정보 수정하기
		public int modifyAdminAccount(AdminAccountDTO dto); 
		
		// 회원 정보 조회
		public ArrayList<UserAccountDTO> getUserAccount(String userName);
		public List<UserAccountDTO> doUserAccount();
		
		// 회원 정보 조회 (유저 아이디로)
		public UserAccountDTO getUserAccount2(int userNo);
		
		//관리자  (스케쥴)
		public List<PtReservationHisDTO2> doTrainerPtCheck (PtReservationHisDTO2 dto);
		
		//관리자 스케쥴 전부
		public List<PtReservationHisDTO2> doTrainerPtCheck2 (int sessionAdminNo);
		
		//관리자
		public List<PtReservationHisDTO2> getTrainerPtCheck2 (PtReservationHisDTO2 dto);
		
		// 회원 스케쥴 가져오기
		public List<PtReservationHisDTO2> doPtPlanCheck(PtReservationHisDTO2 dto);

		
		//관리자 하루 PT갯수
		public List<PtPerDayDTO> getPtPerDay(int sessionAdminNo);
		public List<PtReservationHisDTO> getUserPt3(int userNo);
		public int getTotalPtCnt2(int userNo);
		public int getDidPtCnt2(int userNo);


		
		
		
		
}
