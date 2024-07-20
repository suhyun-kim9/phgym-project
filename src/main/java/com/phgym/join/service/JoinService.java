package com.phgym.join.service;

import java.io.IOException;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

public interface JoinService {

	void adminIdFind(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException; // 관리자 아이디찾기
	
	void adminPwFind(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException; // 관리자 비밀번호찾기
	
	void userIdFind(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException; // 회원 아이디찾기

	void userPwFind(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException; // 회원 비밀번호찾기

	void adminLogin(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException; // 관리자 로그인
	
}