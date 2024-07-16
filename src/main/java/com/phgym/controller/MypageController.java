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
		
		request.getSession().setAttribute("sessionUserNo", 1); //삭제예정
		
		MypageService service = null;
		if(command.equals("/mypage/checkin.mypage")) {
			service = new MypageServiceImpl();
			service.checkCheckin(request, response);
		} else if(command.equals("/mypage/doCheckin.mypage")) {
			service = new MypageServiceImpl();
			service.doCheckin(request, response);
		} else if(command.equals("/mypage/transfer.mypage")) {
			service = new MypageServiceImpl();
			service.checkTransfer(request, response);
		} else if(command.equals("/mypage/doTransfer.mypage")) {
			service = new MypageServiceImpl();
			service.doTransfer(request, response);
		}
	}
}
