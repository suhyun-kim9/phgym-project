package com.phgym.controller;

import java.io.IOException;

import com.phgym.board.service.BoardService;
import com.phgym.board.service.BoardServiceImpl;
import com.phgym.mypage.service.MypageService;
import com.phgym.mypage.service.MypageServiceImpl;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("*.board")
public class BoardController extends HttpServlet {
	
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
		
		// 24.07.17
		request.setCharacterEncoding("utf-8");
		
		String uri = request.getRequestURI();
		String path = request.getContextPath();
		String command = uri.substring( path.length() );
		
		BoardService service;
		
		if(command.equals("/board/list.board")) { // 목록화면
			
			service = new BoardServiceImpl();
			service.getList(request, response);
			
		}
		
	}
}


















