package com.phgym.main.service;

import java.io.IOException;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

public interface MainService {

	//프로모션 결제내역
	void buyPromotion(HttpServletRequest request, HttpServletResponse response)throws ServletException, IOException;

	void goPromotionList(HttpServletRequest request, HttpServletResponse response)throws ServletException, IOException;

	void goPromotionPay(HttpServletRequest request, HttpServletResponse response)throws ServletException, IOException;
}
