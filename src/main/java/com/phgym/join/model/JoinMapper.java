package com.phgym.join.model;

public interface JoinMapper {
	
	public String adminPwFind(AdminInfoDTO dto);
	
	public String userPwFind(UserInfoDTO dto);

	public String adminIdFind(AdminInfoDTO dto);

	public String userIdFind(UserInfoDTO dto);

	public AdminInfoDTO adminLogin(AdminInfoDTO dto);

	public UserInfoDTO userLogin(UserInfoDTO dto);

	public int adminJoin(AdminInfoDTO dto);

	public AdminInfoDTO adminIdCheck(String string);

	public UserInfoDTO userIdCheck(String string);

	public int checkUserIdExists(String userid);
	
	public int userJoin(UserInfoDTO dto);

	public int checkAdminIdExists(String adminid);
	
	
}
