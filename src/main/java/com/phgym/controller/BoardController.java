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
		request.setCharacterEncoding("utf-8");
		String searchKeyword = request.getParameter("searchKeyword");
		doAction(request, response);
	}
	
	protected void doAction(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		request.setCharacterEncoding("utf-8");
		
		String uri = request.getRequestURI();
		String path = request.getContextPath();
		String command = uri.substring( path.length() );

		BoardService service = new BoardServiceImpl();
		
		if(command.equals("/board/main_exe_list.board")) { // 목록
			
			service = new BoardServiceImpl();
			service.getList(request, response);
			request.getRequestDispatcher("main-exerciseinfo-list.jsp").forward(request, response);
			
		} else if(command.equals("/board/main_exe_post.board")) { // 작성
			
			request.getRequestDispatcher("main-exerciseinfo-post.jsp").forward(request, response);
			
		} else if(command.equals("/board/main_exe_post_regist.board")) { // 등록
			
			service = new BoardServiceImpl();
			service.regist(request, response);
			
		} else if(command.equals("main_exe_search.board")) { // 검색
			
			String searchKeyword = request.getParameter("searchKeyword");
			service = new BoardServiceImpl();
			service.searchList(request, response, searchKeyword);
			
		}
		
		
	}
}



















