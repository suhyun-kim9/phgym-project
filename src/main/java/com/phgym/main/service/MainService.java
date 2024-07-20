package com.phgym.main.service;

import java.io.IOException;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

public interface MainService {

	//프로모션 결제하기
	void buyPromotion(HttpServletRequest request, HttpServletResponse response)throws ServletException, IOException;

	//프로모션 카테고리 이동
	void goPromotionList(HttpServletRequest request, HttpServletResponse response)throws ServletException, IOException;
	
	void goIntroduction(HttpServletRequest request, HttpServletResponse response)throws ServletException, IOException;
	
	
	//프로모션 선택 후 결제하러가기
	void goPromotionPay(HttpServletRequest request, HttpServletResponse response)throws ServletException, IOException;
}
