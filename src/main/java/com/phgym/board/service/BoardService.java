package com.phgym.board.service;

import java.io.IOException;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

public interface BoardService {

	//코드 작성
	
	// 24.07.17
	void getList(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException;

	
}
