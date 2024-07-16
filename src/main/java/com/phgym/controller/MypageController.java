package com.phgym.controller;

import java.io.IOException;

import com.phgym.mypage.service.MypageService;
import com.phgym.mypage.service.MypageServiceImpl;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("*.mypage")
public class MypageController extends HttpServlet {
	
	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doAction(request, response);
	}
	
	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doAction(request, response);
	}
	
	protected void doAction(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		
		String uri = request.getRequestURI();
		String path = request.getContextPath();
		String command = uri.substring(path.length());
		System.out.println("command = " + command);
		
		request.getSession().setAttribute("userNo", 3); //삭제예정
		
		MypageService service = null;
		if(command.equals("/mypage/checkin.mypage")) {
			service = new MypageServiceImpl();
			String result = service.checkedin(request, response);
			if(result.equals("Y")) {
				request.setAttribute("msg", "Y");
			}
			request.getRequestDispatcher("mypage-checkin.jsp").forward(request, response);
		} else if(command.equals("/mypage/checkingin.mypage")) {
			service = new MypageServiceImpl();
			service.checkingin(request, response);
		}
	}
}
