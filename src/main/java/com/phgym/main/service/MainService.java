package com.phgym.main.service;

import java.io.IOException;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

public interface MainService {
	
	/* 헤더의 메인 카테고리 */
	// 0.홈화면으로 이동(메인 로고 누르면)
	void goMain(HttpServletRequest request, HttpServletResponse response)throws ServletException, IOException;
	
	// 1.헬스장 소개로 이동
	void goIntroduction(HttpServletRequest request, HttpServletResponse response)throws ServletException, IOException;
	
	// 2.프로모션으로 이동
	void goPromotionList(HttpServletRequest request, HttpServletResponse response)throws ServletException, IOException;
	
	// 3.문의/고객센터로 이동
	
	// 4.오시는길로 이동
	void goMap(HttpServletRequest request, HttpServletResponse response)throws ServletException, IOException;
	
	//프로모션 선택 후 결제하러가기
	void goPromotionPay1(HttpServletRequest request, HttpServletResponse response)throws ServletException, IOException;
	void goPromotionPay2(HttpServletRequest request, HttpServletResponse response)throws ServletException, IOException;
	void goPromotionPay3(HttpServletRequest request, HttpServletResponse response)throws ServletException, IOException;
	void goPromotionPay4(HttpServletRequest request, HttpServletResponse response)throws ServletException, IOException;
	
	//프로모션 최종결제하기
	void buyPromotion(HttpServletRequest request, HttpServletResponse response)throws ServletException, IOException;

	
	/* 헬스장소개 - 트레이너소개 선택하기 */
	void goTrainer(HttpServletRequest request, HttpServletResponse response)throws ServletException, IOException;
	
}
