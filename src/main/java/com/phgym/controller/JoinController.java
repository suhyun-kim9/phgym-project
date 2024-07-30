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
		
		if(request.getSession().getAttribute("sessionAdminNo") != null) {
        	request.getSession().setAttribute("LogoutMsg", "Y");
        	response.sendRedirect("/PHGYM/admin/account.admin");
        	return;
        }

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
			
		} else if(command.equals("/join/userLogin.join")) { // 회원 로그인
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
			
		} else if(command.equals("/join/Logout.join")) { // 로그인 성공시 로그아웃하기
			service = new JoinServiceImpl();
			service.logoutUser(request,response);
			
		} else if(command.equals("/join/adminJoinPage.join")) { // 관리자 로그인 -> 꽌리자 회원가입
			service = new JoinServiceImpl();
			service.adminJoinPage(request,response);
			
		} else if(command.equals("/join/ChangeAdmin.join")) { // 관리자 로그인 -> 회원 로그인으로 변경
			service = new JoinServiceImpl();
			service.ChangeAdmin(request,response);
			
		} else if(command.equals("/join/LogoutUser.join")) { // 회원 로그인 성공시 로그아웃 하기
			service = new JoinServiceImpl();
			service.logoutUser(request,response);
			
		} else if(command.equals("/join/LogoutAdmin.join")) { // 관리자 로그인 성공시 로그아웃 하기
			service = new JoinServiceImpl();
			service.logoutAdmin(request,response);
			
		} else if(command.equals("/join/findAdminId.join")) { // 관리자 로그인 페이지에서 아이디찾기 클릭
			service = new JoinServiceImpl();
			service.findAdminId(request,response);
			
		} else if(command.equals("/join/findAdminPw.join")) { // 관리자 로그인 페이지에서 비밀번호 찾기 클릭
			service = new JoinServiceImpl();
			service.findAdminPw(request,response);
			
		} else if(command.equals("/join/findUserId.join")) { // 회원 로그인 페이지에서 아이디찾기 클릭
			service = new JoinServiceImpl();
			service.findUserId(request,response);
			
		} else if(command.equals("/join/findUserPw.join")) { // 관리자 로그인 페이지에서 비밀번호 찾기 클릭
			service = new JoinServiceImpl();
			service.findUserPw(request,response);
		
		} else if(command.equals("/join/LoginUserPage.join")) { // 유저 홈 -> 로그인
			service = new JoinServiceImpl();
			service.LoginPage(request,response);

		} else if(command.equals("/join/JoinUserPage.join")) { // 유저 홈 -> 유저 회원가입
			service = new JoinServiceImpl();
			service.JoinUserPage(request,response);
			
		} else if(command.equals("/join/JoinAdminPage.join")) { // 유저 홈 -> 관리자 회원가입
			service = new JoinServiceImpl();
			service.JoinAdminPage(request,response);
		}
	}
}
