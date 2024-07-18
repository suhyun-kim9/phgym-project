package com.phgym.join.model;

public interface JoinMapper {
	
	public String adminPwFind(AdminJoinDTO dto);
	
	public String userPwFind(UserJoinDTO dto);

	public String adminIdFind(AdminJoinDTO dto);

	public String userIdFind(UserJoinDTO dto);
}
