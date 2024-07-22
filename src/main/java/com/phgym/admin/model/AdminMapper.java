package com.phgym.admin.model;

import java.util.List;

public interface AdminMapper {
	
		// 관리자 정보 조회
		public AdminAccountDTO getAdminAccount(int adminNo);
		
		// (사용자이름)으로 유저 아이디 가져오기
		public int getUserId(String userName);
		
		// 유저 아이디로 관리자 정보 가져오기
		public AdminAccountDTO getAdminAccountForUserId(int userId);

		// 관리자 정보 수정하기
		public int modifyAdminAccount(AdminAccountDTO dto); 
		
		// 회원 정보 조회
		public UserAccountDTO getUserAccount(String userName);
		
//		// 회원 스케쥴 조회
//		public List<UserAccountDTO> getPtcheck  (String userName);

}
