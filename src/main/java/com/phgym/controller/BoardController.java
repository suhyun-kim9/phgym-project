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
		doAction(request, response);
	}
	
	protected void doAction(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		
		String uri = request.getRequestURI();
		String path = request.getContextPath();
		String command = uri.substring( path.length() );

		BoardService service = new BoardServiceImpl();
		
		if(command.equals("/board/main_exe_list.board")) { // 메인 운동정보 목록
			
			service = new BoardServiceImpl();
			service.getList(request, response);
			
		} else if(command.equals("/board/main_exe_post.board")) { // 작성
			
			request.getRequestDispatcher("main-exerciseinfo-post.jsp").forward(request, response);
			
		} else if(command.equals("/board/main_exe_post_regist.board")) { // 등록
			
			service = new BoardServiceImpl();
			service.regist(request, response);
			
		} else if(command.equals("/board/main_exe_search.board")) { // 검색
			
			String searchKeyword = request.getParameter("searchKeyword");
			service.searchList(request, response, searchKeyword);
			
		} else if(command.equals("/board/main_exe_content.board")) { // 글 내용
			
			service = new BoardServiceImpl();
			service.getContent(request, response);
			request.getRequestDispatcher("main-exerciseinfo-content.jsp").forward(request, response);
			
		} else if(command.equals("/board/main_exe_delete.board")) { // 삭제
			
			service.delete(request, response);
			//=================================================================================
		} else if(command.equals("/board/main_qna_list.board")) { // QNA 목록
			
			service = new BoardServiceImpl();
			service.getList1(request, response);
			request.getRequestDispatcher("main-qna-list.jsp").forward(request, response);
			
		} else if(command.equals("/board/main_qna_post.board")) { // 작성
			
			request.getRequestDispatcher("main-qna-post.jsp").forward(request, response);
			
		} else if(command.equals("/board/main_qna_post_regist.board")) { // 등록
			
			service = new BoardServiceImpl();
			service.regist1(request, response);
			
		} else if(command.equals("/board/main_qna_search.board")) { // 검색
			service = new BoardServiceImpl();
			String searchKeywords = request.getParameter("searchKeywords");
			service.searchList1(request, response, searchKeywords);
			
		} else if(command.equals("/board/main_qna_content.board")) { // 글 내용
			
			service = new BoardServiceImpl();
			service.getContent1(request, response);
			request.getRequestDispatcher("main-qna-content.jsp").forward(request, response);
			
		} else if(command.equals("/board/main_qna_delete.board")) { // 삭제
			service = new BoardServiceImpl();
			service.delete1(request, response);
			//=========================댓 글========================================================
		} else if(command.equals("/board/replyRegist.board")) { // 댓글 등록
			service = new BoardServiceImpl();
			service.replyRegist(request, response);
		} else if(command.equals("/board/deleteReply.board")) {
            service.deleteReply(request, response);
        } else if(command.equals("/board/updateReply.board")) {
            service.updateReply(request, response);
            
            //========================공지사항
        } else if(command.equals("/board/main_notice_list.board")) { // 공지사항 목록

        	service = new BoardServiceImpl();
			service.getListN(request, response);
			
//			request.getRequestDispatcher("main-notice-list.jsp").forward(request, response);
        	
        } else if(command.equals("/board/main_notice_post.board")) { // 작성
			request.getRequestDispatcher("main-notice-post.jsp").forward(request, response);
			
		} else if(command.equals("/board/main_notice_post2.board")) { // 작성 (admin)
			request.getRequestDispatcher("../admin/admin-notice-post.jsp").forward(request, response);
			
		} else if(command.equals("/board/main_notice_post_regist.board")) { // 등록
			
			service = new BoardServiceImpl();
			service.registN(request, response);
			
		} else if(command.equals("/board/main_notice_search.board")) { // 검색
			service = new BoardServiceImpl();
			String searchKeywordn = request.getParameter("searchKeywordn");
			service.searchListN(request, response, searchKeywordn);
			
		} else if(command.equals("/board/main_notice_content.board")) { // 글 내용
			
			service = new BoardServiceImpl();
			service.getContentN(request, response);
//			request.getRequestDispatcher("main-notice-content.jsp").forward(request, response);
			
		} else if(command.equals("/board/main_notice_delete.board")) { // 삭제
			service = new BoardServiceImpl();
			service.deleteN(request, response);
			//=================================================================================
		}
		
		
	}
}


