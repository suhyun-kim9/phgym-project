package com.phgym.controller;

import java.io.IOException;

import com.phgym.board.service.BoardService;
import com.phgym.main.service.MainService;
import com.phgym.main.service.MainServiceImpl;
import com.phgym.mypage.service.MypageService;
import com.phgym.mypage.service.MypageServiceImpl;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("*.main")
public class MainController extends HttpServlet {

	
	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doAction(request, response);
	}
	
	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doAction(request, response);
	}
	
	protected void doAction(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//코드 작성
		request.getSession().setAttribute("sessionUserNo", 123);
		
		request.setCharacterEncoding("utf-8");
        String uri = request.getRequestURI();
        String path = request.getContextPath();
        String command = uri.substring(path.length());
        System.out.println(command);
        MainService service;
        
        if(command.equals("/main/promotion-payment.main")) {
            service = new MainServiceImpl();
            service.buy(request,response);
            System.out.print("작동됨 컨트롤러");
        }
		
		
	}
}



//모델에 dto만들기
