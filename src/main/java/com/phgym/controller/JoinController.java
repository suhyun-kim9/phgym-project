package com.phgym.controller;

import java.io.IOException;
import com.phgym.join.service.JoinService;
import com.phgym.join.service.JoinServiceImpl;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("*.join")
public class JoinController extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doAction(request, response);
	}

	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doAction(request, response);
	}

	protected void doAction(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		String uri = request.getRequestURI();
		String path = request.getContextPath();
		String command = uri.substring(path.length());

		System.out.println(command);

		JoinService service = null;

		if(command.equals("/join/adminPwFind.join")) { // 관리자 비밀번호찾기
			service = new JoinServiceImpl();
			service.adminPwFind(request, response);
			
		} else if(command.equals("/join/userPwFind.join")) { // 회원 비밀번호찾기
			service = new JoinServiceImpl();
			service.userPwFind(request, response);
			
		} else if(command.equals("/join/adminIdFind.join")) { // 관리자 아이디찾기
			service = new JoinServiceImpl();
			service.adminIdFind(request, response);
			
		} else if(command.equals("/join/userIdFind.join")) { // 회원 아이디찾기
			service = new JoinServiceImpl();
			service.userIdFind(request,response);
			
		} else if(command.equals("/join/adminLogin.join")) { // 관리자 로그인
			service = new JoinServiceImpl();
			service.adminLogin(request,response);
			
		} else if(command.equals("/join/userLogin.join")) { // 유저 로그인
			service = new JoinServiceImpl();
			service.userLogin(request,response);
			
		} else if(command.equals("/join/adminJoin.join")) { // 관리자 회원가입
			service = new JoinServiceImpl();
			service.adminJoin(request,response);
			
		} else if(command.equals("/join/adminIdCheck.join")) { // 관리자 아이디 중복체크
			service = new JoinServiceImpl();
			service.adminIdCheck(request,response);
			
		} else if(command.equals("/join/userJoin.join")) { // 회원 회원가입
			service = new JoinServiceImpl();
			service.userJoin(request,response);
			
		} else if(command.equals("/join/userIdCheck.join")) { // 회원 아이디 중복체크
			service = new JoinServiceImpl();
			service.userIdCheck(request,response);
		}
	}
}
