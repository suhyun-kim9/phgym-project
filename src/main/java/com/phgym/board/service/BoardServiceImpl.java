package com.phgym.board.service;

import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.catalina.mapper.Mapper;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.phgym.board.model.BoardDTO;
import com.phgym.board.model.BoardMapper;
import com.phgym.board.model.NoticeDTO;
import com.phgym.board.model.QnaDTO;
import com.phgym.util.mybatis.MybatisUtil;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

public class BoardServiceImpl implements BoardService {
	
	private SqlSessionFactory sqlSessionFactory = MybatisUtil.getSqlSessionFactory();
	private BoardDTO board;
	
	// mainExerciseInfo
	@Override
	public void regist(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		int adminNo = Integer.parseInt(request.getParameter("adminNo"));
		String title = request.getParameter("title");
		String content = request.getParameter("content");
		
		BoardDTO dto = new BoardDTO();
		dto.setAdminNo(adminNo);
		dto.setTitle(title);
		dto.setContent(content);
		
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
		
		int startIndex = (page - 1) * pageSize + 1;
		int endIndex = page * pageSize;
		
		SqlSession sql = sqlSessionFactory.openSession();
		BoardMapper board = sql.getMapper(BoardMapper.class);
		
		Map<String, Object> params = new HashMap<>();
	    params.put("startIndex", startIndex);
	    params.put("endIndex", endIndex);
		
		ArrayList<BoardDTO> list = board.getList(startIndex, endIndex);
		
		int totalCount = board.getTotalCount();
		
		sql.close();
		
		int totalPages = (int) Math.ceil((double) totalCount / pageSize);
		
		request.setAttribute("list", list);
		request.setAttribute("page", page);
		request.setAttribute("totalPages", totalPages);
		request.setAttribute("totalCount", totalCount);
		
		if (request.getSession().getAttribute("sessionAdminNo") != null) {
			request.getRequestDispatcher("../admin/admin-exerciseinfo-list.jsp").forward(request, response);
		} else {
			request.getRequestDispatcher("main-exerciseinfo-list.jsp").forward(request, response);
		}
		
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
		
		int startIndex = (page - 1) * pageSize + 1;
		int endIndex = page * pageSize;
		
		SqlSession sql = sqlSessionFactory.openSession();
		BoardMapper board = sql.getMapper(BoardMapper.class);
		
		Map<String, Object> params = new HashMap<>();
		params.put("searchKeyword", searchKeyword);
		params.put("startIndex", startIndex);
		params.put("pageSize", pageSize);
		
		ArrayList<BoardDTO> list = board.searchList(searchKeyword, startIndex, endIndex);
		int totalCount = board.getSearchCount(searchKeyword);
		
		sql.close();
		
		int totalPages = (int) Math.ceil((double) totalCount / pageSize);
		
		request.setAttribute("list", list);
		request.setAttribute("page", page);
		request.setAttribute("totalPages", totalPages);
		request.setAttribute("searchKeyword", searchKeyword);
		request.setAttribute("totalCount", totalCount);
		
		request.getRequestDispatcher("main-exerciseinfo-list.jsp").forward(request, response);
		
	}

	@Override
	public void getContent(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int infoNo = Integer.parseInt(request.getParameter("infoNo"));
		
		SqlSession sql = sqlSessionFactory.openSession(true);
	    BoardMapper board = sql.getMapper(BoardMapper.class);
	    board.increaseHit(infoNo);
	    BoardDTO dto = board.getContent(infoNo);
	    sql.close();
	    
	    request.setAttribute("dto", dto);
	    if (request.getSession().getAttribute("sessionAdminNo") != null) {
			request.getRequestDispatcher("../admin/admin-exerciseinfo-content.jsp").forward(request, response);
		} else {
			request.getRequestDispatcher("main-exerciseinfo-content.jsp").forward(request, response);
		}
	}

	@Override
	public void delete(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int infoNo = Integer.parseInt(request.getParameter("infoNo"));
		System.out.println("infoNo = " + infoNo);
		
	    SqlSession sql = sqlSessionFactory.openSession(true);
	    BoardMapper mapper = sql.getMapper(BoardMapper.class);
	    mapper.delete(infoNo);
	    sql.close();
	    
	    response.sendRedirect("main_exe_list.board");
	}

	// ================================================================================================
	
	//mainQna
	@Override
	public void regist1(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String writer = request.getParameter("writer");
		String title = request.getParameter("title");
		String content = request.getParameter("content");
		String pw = request.getParameter("pw");
		
		QnaDTO dto = new QnaDTO();
		dto.setWriter(writer);
		dto.setTitle(title);
		dto.setContent(content);
		dto.setPw(pw);
		
		SqlSession sql = sqlSessionFactory.openSession(true);
		BoardMapper mapper = sql.getMapper(BoardMapper.class);
		mapper.regist1(dto);
		
		sql.close();
		
		response.sendRedirect("main_qna_list.board");
		
	}
	
	@Override
	public void getList1(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		int pages = 1;
		int pageSizes = 10;
		
		try {
			pages = Integer.parseInt(request.getParameter("pages"));
		} catch (NumberFormatException e) {
			e.printStackTrace();
		}
		
		int startIndexs = (pages - 1) * pageSizes + 1;
		int endIndexs = pages * pageSizes;
		
		SqlSession sql = sqlSessionFactory.openSession();
		BoardMapper board = sql.getMapper(BoardMapper.class);
		
		Map<String, Object> params = new HashMap<>();
	    params.put("startIndexs", startIndexs);
	    params.put("endIndexs", endIndexs);
		
		ArrayList<QnaDTO> lists = board.getList1(startIndexs, endIndexs);
		System.out.println("lists = " + lists);
		
		int totalCounts = board.getTotalCounts();
		
		sql.close();
		
		int totalPagess = (int) Math.ceil((double) totalCounts / pageSizes);
		
		request.setAttribute("lists", lists);
		request.setAttribute("pages", pages);
		request.setAttribute("totalPagess", totalPagess);
		request.setAttribute("totalCounts", totalCounts);
		
		if (request.getSession().getAttribute("sessionAdminNo") != null) {
			request.getRequestDispatcher("../admin/admin-qna-list.jsp").forward(request, response);
		} else {
			request.getRequestDispatcher("main-qna-list.jsp").forward(request, response);
		}
	}


	@Override
	public void searchList1(HttpServletRequest request, HttpServletResponse response, String searchKeywords) throws ServletException, IOException {
		System.out.println(1);
		int pages = 1;
		int pageSizes = 10;
		
		try {
			pages = Integer.parseInt(request.getParameter("pages"));
		} catch (NumberFormatException e) {
			e.printStackTrace();
		}
		
		int startIndexs = (pages - 1) * pageSizes + 1;
		int endIndexs = pages * pageSizes;
		
		SqlSession sql = sqlSessionFactory.openSession();
		BoardMapper board = sql.getMapper(BoardMapper.class);
		Map<String, Object> params = new HashMap<>();
		params.put("searchKeywords", searchKeywords);
		params.put("startIndexs", startIndexs);
		params.put("pageSizes", pageSizes);
		ArrayList<QnaDTO> lists = board.searchList1(searchKeywords, startIndexs, endIndexs);
		int totalCounts = board.getSearchCounts(searchKeywords);
		
		sql.close();

		int totalPagess = (int) Math.ceil((double) totalCounts / pageSizes);
		
		request.setAttribute("lists", lists);
		request.setAttribute("pages", pages);
		request.setAttribute("totalPagess", totalPagess);
		request.setAttribute("searchKeywords", searchKeywords);
		request.setAttribute("totalCounts", totalCounts);
		
		request.getRequestDispatcher("main-qna-list.jsp").forward(request, response);
		
	}

	@Override
	public void getContent1(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int inquiryNo = Integer.parseInt(request.getParameter("inquiryNo"));
		
		SqlSession sql = sqlSessionFactory.openSession(true);
	    BoardMapper board = sql.getMapper(BoardMapper.class);
	    
	    board.increaseHit1(inquiryNo);
	    QnaDTO dto = board.getContent1(inquiryNo);
	    sql.close();
	    
	    request.setAttribute("dto", dto);
	    if (request.getSession().getAttribute("sessionAdminNo") != null) {
	    	request.getRequestDispatcher("../admin/admin-qna-content.jsp").forward(request, response);
		} else {
			request.getRequestDispatcher("main-qna-content.jsp").forward(request, response);
		}
	}

	@Override
	public void delete1(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		int inquiryNo = Integer.parseInt(request.getParameter("inquiryNo"));
		String pw = request.getParameter("pw");
		
		QnaDTO dto = new QnaDTO();
		dto.setInquiryNo(inquiryNo);
		dto.setPw(pw);

	    SqlSession sql = sqlSessionFactory.openSession(true);
	    BoardMapper mapper = sql.getMapper(BoardMapper.class);
	    int result = mapper.delete1(dto);
	    System.out.println("result = " + result);
	    sql.close();
	    if(result == 0) { //삭제 실패
	    	request.getSession().setAttribute("msg", "fail");
	    	response.sendRedirect("main_qna_content.board?inquiryNo=" + inquiryNo);
	    } else {
	    	response.sendRedirect("main_qna_list.board");
	    }
	}

	@Override
	public void replyRegist(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int adminNo = Integer.parseInt(request.getParameter("adminNo"));
		int inquiryNo = Integer.parseInt(request.getParameter("inquiryNo"));
		String replyContent = request.getParameter("replyContent");
		
		QnaDTO dto = new QnaDTO();
		dto.setAdminNo(adminNo);
		dto.setInquiryNo(inquiryNo);
		dto.setReplyContent(replyContent);
		
		SqlSession sql = sqlSessionFactory.openSession(true);
	    BoardMapper mapper = sql.getMapper(BoardMapper.class);
	    mapper.replyRegist(dto);
	    sql.close(); 
	    
	    response.sendRedirect("/PHGYM/board/main_qna_content.board?inquiryNo=" + inquiryNo);
	}

	@Override
	public void deleteReply(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		int inquiryNo = Integer.parseInt(request.getParameter("inquiryNo"));
        int adminNo = (int)request.getSession().getAttribute("sessionAdminNo");
        
        QnaDTO dto = new QnaDTO();
        dto.setAdminNo(adminNo);
        dto.setInquiryNo(inquiryNo);

        SqlSession sql = sqlSessionFactory.openSession(true);
        BoardMapper mapper = sql.getMapper(BoardMapper.class);
        int result = mapper.deleteReply(dto);
        sql.close();

        response.sendRedirect("/PHGYM/board/main_qna_content.board?inquiryNo=" + inquiryNo);
	}

	@Override
	public void updateReply(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int inquiryNo = Integer.parseInt(request.getParameter("inquiryNo"));
        String replyContent = request.getParameter("content");
        int adminNo = (int) request.getSession().getAttribute("sessionAdminNo");

        SqlSession sql = sqlSessionFactory.openSession(true);
        BoardMapper mapper = sql.getMapper(BoardMapper.class);
        
        QnaDTO dto = new QnaDTO();
        dto.setAdminNo(adminNo);
        dto.setInquiryNo(inquiryNo);
        dto.setReplyContent(replyContent);
        System.out.println(dto.toString());
        
        mapper.updateReply(dto);
        sql.close();
        
        response.sendRedirect("/PHGYM/board/main_qna_content.board?inquiryNo=" + inquiryNo);
    }

	// ================================================================================================
	
	// mainNotice
	@Override
	public void registN(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		int adminNo = Integer.parseInt(request.getParameter("adminNo"));
		String title = request.getParameter("title");
		String content = request.getParameter("content");
		
		NoticeDTO dto = new NoticeDTO();
		dto.setAdminNo(adminNo);
		dto.setTitle(title);
		dto.setContent(content);
		
		SqlSession sql = sqlSessionFactory.openSession(true);
		BoardMapper mapper = sql.getMapper(BoardMapper.class);
        int result = mapper.registN(dto);

		sql.close();
		
		response.sendRedirect("main_notice_list.board");
		
	}

	@Override
	public void getListN(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		int pagen = 1;
		int pageSizen = 10;
		
		try {
			pagen = Integer.parseInt(request.getParameter("pagen"));
		} catch (NumberFormatException e) {
			e.printStackTrace();
		}
		
		int startIndexn = (pagen - 1) * pageSizen + 1;
		int endIndexn = pagen * pageSizen;
		
		SqlSession sql = sqlSessionFactory.openSession();
		BoardMapper board = sql.getMapper(BoardMapper.class);
		
		Map<String, Object> params = new HashMap<>();
	    params.put("startIndexn", startIndexn);
	    params.put("endIndexn", endIndexn);
		
		ArrayList<NoticeDTO> listn = board.getListN(startIndexn, endIndexn);
		
		int totalCountn = board.getTotalCountN();
		
		sql.close();
		
		int totalPagesn = (int) Math.ceil((double) totalCountn / pageSizen);
		
		request.setAttribute("listn", listn);
		request.setAttribute("pagen", pagen);
		request.setAttribute("totalPagesn", totalPagesn);
		request.setAttribute("totalCountn", totalCountn);
		
		if (request.getSession().getAttribute("sessionAdminNo") != null) {
			request.getRequestDispatcher("../admin/admin-notice-list.jsp").forward(request, response);	
			return;	
		} else {
			request.getRequestDispatcher("main-notice-list.jsp").forward(request, response);
			return;	
		}
		
		
		
	}

	@Override
	public void searchListN(HttpServletRequest request, HttpServletResponse response, String searchKeywordn) throws ServletException, IOException {
		System.out.println("searchKeywordn = " + searchKeywordn);
		int pagen = 1;
		int pageSizen = 10;
		
		try {
			pagen = Integer.parseInt(request.getParameter("pagen"));
		} catch (NumberFormatException e) {
			e.printStackTrace();
		}
		
		int startIndexn = (pagen - 1) * pageSizen + 1;
		int endIndexn = pagen * pageSizen;
		
		SqlSession sql = sqlSessionFactory.openSession();
		BoardMapper board = sql.getMapper(BoardMapper.class);
		
		List<NoticeDTO> listn = board.searchListN(searchKeywordn, startIndexn, endIndexn);
		System.out.println("listn = " + listn);
		int totalCountn = board.getSearchCountN(searchKeywordn);
		
		sql.close();
		
		int totalPagesn = (int) Math.ceil((double) totalCountn / pageSizen);
		
		request.setAttribute("listn", listn);
		request.setAttribute("pagen", pagen);
		request.setAttribute("totalPagesn", totalPagesn);
		request.setAttribute("searchKeywordn", searchKeywordn);
		request.setAttribute("totalCountn", totalCountn);
		
		
		if(request.getSession().getAttribute("sessionAdminNo") != null) {
			request.getRequestDispatcher("../admin/admin-notice-list.jsp").forward(request, response);
			return;
		} else {
			request.getRequestDispatcher("main-notice-list.jsp").forward(request, response);
		}
		
		
	}

	@Override
	public void getContentN(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		int noticeNo = Integer.parseInt(request.getParameter("noticeNo"));
		
		SqlSession sql = sqlSessionFactory.openSession();
	    BoardMapper board = sql.getMapper(BoardMapper.class);
	    
	    board.increaseHitN(noticeNo);
	    
	    sql.commit();
	    
	    NoticeDTO dto = board.getContentN(noticeNo);

	    sql.close();
	    
	    request.setAttribute("dto", dto);
		if (request.getSession().getAttribute("sessionAdminNo") != null) {
			 request.getRequestDispatcher("../admin/admin-notice-content.jsp").forward(request, response);
			return;	
		}else {
			 request.getRequestDispatcher("main-notice-content.jsp").forward(request, response);
			return;	
		}
	   
	   
		
	}

	@Override
	public void deleteN(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		int noticeNo = Integer.parseInt(request.getParameter("noticeNo"));
		System.out.println("noticeNo = " + noticeNo);
	    SqlSession sql = sqlSessionFactory.openSession(true);
	    BoardMapper mapper = sql.getMapper(BoardMapper.class);
	    mapper.deleteN(noticeNo);
	    sql.close();
	    
	    response.sendRedirect("main_notice_list.board");
		
	}	
	
}
