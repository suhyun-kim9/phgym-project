package com.phgym.board.service;

import java.io.IOException;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

public interface BoardService {

	void getList(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException;

	void regist(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException;

	void searchList(HttpServletRequest request, HttpServletResponse response, String searchKeyword) throws ServletException, IOException;


	//코드 작성
	
}