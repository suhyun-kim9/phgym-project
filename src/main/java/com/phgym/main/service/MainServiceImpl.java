package com.phgym.main.service;

import java.io.IOException;
import java.sql.Date;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.time.LocalDate;
import java.time.format.DateTimeFormatter;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.phgym.join.model.UserInfoDTO;
import com.phgym.main.model.MainMapper;
import com.phgym.main.model.MembershipPayHisDTO;
import com.phgym.mypage.model.MypageMapper;
import com.phgym.util.mybatis.MybatisUtil;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

public class MainServiceImpl implements MainService {
	
	private SqlSessionFactory sqlSessionFactory = MybatisUtil.getSqlSessionFactory();

	@Override
	public void buyPromotion(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.print("작동됨 서비스"); // 작동 성공
		int sessionUserNo = (int)request.getSession().getAttribute("sessionUserNo");
        
        
        String payMethod =  request.getParameter("payMethod"); //결제방법
        String refundBackname = request.getParameter("refundBankname"); //환불(은행명)
        String refundBankAccount =  request.getParameter("refundBankAccount"); //환불(계좌번호)
        int payCnt = Integer.parseInt(request.getParameter("payCnt")); //구매수량
        int payAmount = Integer.parseInt(request.getParameter("payAmount")); //상품금액
        LocalDate startDate = LocalDate.parse(request.getParameter("startDate"), DateTimeFormatter.ISO_DATE);
        LocalDate endDate = LocalDate.parse(request.getParameter("endDate"), DateTimeFormatter.ISO_DATE);
        
        System.out.println("작동1");
        
        MembershipPayHisDTO dto = new MembershipPayHisDTO();
        dto.setUserNo(sessionUserNo);
        dto.setPayMethod(payMethod);
        dto.setRefundBankname(refundBackname);
        dto.setRefundBankAccount(refundBankAccount);
        dto.setPayCnt(payCnt);
        dto.setPayAmount(payAmount);
        dto.setStartDate(startDate);
        dto.setEndDate(endDate);
        System.out.println(dto);
        
        System.out.print("작동됨 서비스0");


        SqlSession sql = sqlSessionFactory.openSession(true);
        System.out.print("작동됨 서비스1");
        MainMapper main = sql.getMapper(MainMapper.class);
        System.out.print("작동됨 서비스2");
        
        int result = main.buyPromotion(dto);
        System.out.println("성공:" + result);
        response.sendRedirect("/PHGYM/main/main-promotion-list.jsp"); //
	}

	@Override //main-promotion-list로 이동하기
	public void goPromotionList(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.getRequestDispatcher("main-promotion-list.jsp").forward(request, response);
		
	}

	@Override
	public void goPromotionPay(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		int sessionUserNo = (int)request.getSession().getAttribute("sessionUserNo");
		
		SqlSession sql = sqlSessionFactory.openSession(true);
		MainMapper main = sql.getMapper(MainMapper.class);
		UserInfoDTO result = main.goPromotionPay(sessionUserNo);
		System.out.println("result = " + result);
		
		request.setAttribute("result", result);
		request.getRequestDispatcher("main-promotion-payment.jsp").forward(request, response);
	}

	@Override //main-introduction으로 이동하기
	public void goIntroduction(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		System.out.println("gointroduction동작됨");
		request.getRequestDispatcher("main-introduction.jsp").forward(request, response);
		
	}
	
}
