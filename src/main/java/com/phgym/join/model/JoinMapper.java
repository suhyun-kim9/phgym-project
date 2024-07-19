package com.phgym.join.model;

public interface JoinMapper {
	
	public String adminPwFind(AdminJoinDTO dto);
	
	public String userPwFind(UserInfoDTO dto);

	public String adminIdFind(AdminJoinDTO dto);

	public String userIdFind(UserInfoDTO dto);
}
