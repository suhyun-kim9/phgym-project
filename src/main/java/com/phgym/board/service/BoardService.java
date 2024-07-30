package com.phgym.board.service;

import java.io.IOException;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

public interface BoardService {
	
	// ExerciseInfo
	void getList(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException;

	void regist(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException;

	void searchList(HttpServletRequest request, HttpServletResponse response, String searchKeyword) throws ServletException, IOException;

	void getContent(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException;

	void delete(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException;

	//================================================================================
	
	// mainQna
	void getList1(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException;

	void regist1(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException;

	void searchList1(HttpServletRequest request, HttpServletResponse response, String searchKeyword) throws ServletException, IOException;

	void getContent1(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException;

	void delete1(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException;
	
	void replyRegist(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException;
	
	void deleteReply(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException;
	
    void updateReply(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException;

    //================================================================================
    
    // mainNotice
    void getListN(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException;

	void registN(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException;

	void searchListN(HttpServletRequest request, HttpServletResponse response, String searchKeyword) throws ServletException, IOException;

	void getContentN(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException;

	void deleteN(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException;


}