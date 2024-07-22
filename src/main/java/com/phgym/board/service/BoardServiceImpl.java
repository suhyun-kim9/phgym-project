package com.phgym.board.service;

import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.phgym.board.model.BoardDTO;
import com.phgym.board.model.BoardMapper;
import com.phgym.util.mybatis.MybatisUtil;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

public class BoardServiceImpl implements BoardService {
	
	private SqlSessionFactory sqlSessionFactory = MybatisUtil.getSqlSessionFactory();
	private BoardDTO board;
	
	@Override
	public void regist(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		int admin_no = Integer.parseInt(request.getParameter("admin_no"));
		String title = request.getParameter("title");
		String content = request.getParameter("content");
		
		BoardDTO dto = new BoardDTO();
		dto.setAdmin_no(admin_no);
		dto.setTitle(title);
		dto.setContent(content);
		System.out.println(dto);
		
		SqlSession sql = sqlSessionFactory.openSession(true);
		BoardMapper mapper = sql.getMapper(BoardMapper.class);
        int result = mapper.regist(dto);

		sql.close();
		
		response.sendRedirect("main_exe_list.board");
		
	}

	@Override
	public void getList(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		int page = 1;
		int pageSize = 10;
		
		try {
			page = Integer.parseInt(request.getParameter("page"));
		} catch (NumberFormatException e) {
			e.printStackTrace();
		}
		
		int startIndex = (page - 1) * pageSize;
		
		SqlSession sql = sqlSessionFactory.openSession();
		BoardMapper board = sql.getMapper(BoardMapper.class);
		
		ArrayList<BoardDTO> list = board.getList(startIndex, pageSize);
		
		int totalCount = board.getTotalCount();
		
		sql.close();
		
		int totalPages = (int) Math.ceil((double) totalCount / pageSize);
		
		request.setAttribute("list", list);
		request.setAttribute("page", page);
		request.setAttribute("totalPages", totalPages);
		request.getRequestDispatcher("main-exerciseinfo-list.jsp").forward(request, response);
		
	}

	@Override
	public void searchList(HttpServletRequest request, HttpServletResponse response, String searchKeyword) throws ServletException, IOException {
		
		int page = 1;
		int pageSize = 10;
		
		try {
			page = Integer.parseInt(request.getParameter("page"));
		} catch (NumberFormatException e) {
			e.printStackTrace();
		}
		
		int startIndex = (page - 1) * pageSize;
		
		SqlSession sql = sqlSessionFactory.openSession();
		BoardMapper board = sql.getMapper(BoardMapper.class);
		
		Map<String, Object> params = new HashMap<>();
		params.put("searchKeyword", searchKeyword);
		params.put("startIndex", startIndex);
		params.put("pageSize", pageSize);
		
		ArrayList<BoardDTO> list = board.searchList(searchKeyword);
		int totalCount = board.getSearchCount(searchKeyword);
		
		sql.close();
		
		int totalPages = (int) Math.ceil((double) totalCount / pageSize);
		
		request.setAttribute("list", list);
		request.setAttribute("page", page);
		request.setAttribute("totalPages", totalPages);
		request.getRequestDispatcher("main-exerciseinfo-list.jsp").forward(request, response);
		
	}	
	
}