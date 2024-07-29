package com.phgym.admin.service;

import java.io.IOException;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

public interface AdminService {

	
	
	// ***관리자 정보 페이지***
	//불러오기
	public void getAdminAccount(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException; 
	//이동
	public void doModifyAdminAccount(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException; 
	//수정
	public void modifyAdminAccount(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException; 
	
	
	//***회원 정보 조회 페이지***
	// 회원 정보 조회
	public void getUserAccount(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException;
	public void getUserAccount2(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException;
	
	//***회원 스케쥴 조회 페이지***
	// 회원 스케쥴 조회
    public void getPtCheck(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException;
	public void getUserPt(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException;
	public void getUserPt2(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException;
    // 회원 스케쥴 조회 (플래너)
    public void doPtPlanCheck(HttpServletRequest request, HttpServletResponse response)  throws ServletException, IOException;
    
	//*** 트레이너 스케쥴 확인 페이지 ***
	public void getTrainerPtCheck(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException;
	public void doTrainerPtCheck(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException;
	
	// *** 페이지 전환 ***
	public void goUserFind(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException;
	public void goPtCheckInfo(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException;
	public void doPtCheck(HttpServletRequest request, HttpServletResponse response)  throws ServletException, IOException;
	public void doUserAccount(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException;
	public void select2(HttpServletRequest request, HttpServletResponse response)  throws ServletException, IOException;
	public void select3(HttpServletRequest request, HttpServletResponse response)  throws ServletException, IOException;
	
	
	

	
	
	
	
}
