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

	void userLogin(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException; // 유저 로그인

	void adminJoin(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException; // 관리자 회원가입

	void adminIdCheck(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException; // 관리자 아이디 중복체크

	void userJoin(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException; // 회원 회원가입

	void userIdCheck(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException; // 회원 아이디 중복체크

	void logoutAdmin(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException; // 로그인 성공시 로그아웃 하기

	void ChangeAdmin(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException; // 회원로그인 -> 관리자로그인으로 변경

	void adminJoinPage(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException; // 관리자로그인 -> 관리자 회원가입

	void logoutUser(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException; // 회원 로그인 성공시 로그아웃 하기
	
	void findAdminId(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException; // 관리자 로그인 페이지에서 아이디 찾기

	void findAdminPw(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException; // 관리자 로그인 페이지에서 비밀번호 찾기

	void findUserId(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException; // 회원 로그인 페이지에서 아이디 찾기

	void findUserPw(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException; // 회원 로그인 페이지에서 비밀번호 찾기

	void LoginPage(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException; // 유저 홈 -> 로그인

	void JoinUserPage(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException; // 유저 홈 -> 회원 회원가입

	void JoinAdminPage(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException; //유저 홈 -> 관리자 회원가입

	
}
