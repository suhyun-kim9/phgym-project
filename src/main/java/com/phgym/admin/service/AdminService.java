package com.phgym.admin.service;

import java.io.IOException;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

public interface AdminService {

	
	
	// ***관리자 정보 페이지***
	
	//**불러오기
	public void getAdminAccount(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException; 
	//**이동
	public void doModifyAdminAccount(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException; 
	//**수정
	public void modifyAdminAccount(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException; 
	
	
	//***회원 정보 조회 페이지***
	public void getUserAccount(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException;
	
	
	//***회원 스케쥴 확인 페이지***
    public void getPtCheck(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException;
	public void getptCheckList(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException;
	
	
}
