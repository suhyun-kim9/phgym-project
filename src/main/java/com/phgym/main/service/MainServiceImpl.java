package com.phgym.main.service;

import java.io.IOException;
import java.sql.Date;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.time.LocalDate;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.phgym.main.model.MainMapper;
import com.phgym.main.model.MembershipPayHisDTO;
import com.phgym.util.mybatis.MybatisUtil;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

public class MainServiceImpl implements MainService {
	
	private SqlSessionFactory sqlSessionFactory = MybatisUtil.getSqlSessionFactory();

	@Override
	public void buy(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.print("작동됨 서비스"); // 작동 성공
		int sessionUserNo = (int)request.getSession().getAttribute("sessionUserNo");
		
		String name = request.getParameter("userNo");
        String phone = request.getParameter("phone");
//        String email = request.getParameter("email");
        String paymethod =  request.getParameter("payMethod");

        String bankname = request.getParameter("refundBackname");
        String bankaccount =  request.getParameter("refundBankAccount");
//
//        int payCnt = Integer.parseInt(request.getParameter("payCnt"));
//        int payAmount = Integer.parseInt(request.getParameter("payAmount"));

        String membershipPayNo = request.getParameter("membershipPayNo"); // 구매번호(PK)
//        String startDate = request.getParameter("startDate"); //시작일
//        SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dds");
//        try {
//			Date date = (Date)sdf.parse(startDate);
//			LocalDate startdate = new java.sql.Date(date.getTime()).toLocalDate();
//		} catch (ParseException e) {
//			e.printStackTrace();
//		} //string->date->localdate
//        
//        
//        
//        String enddate = request.getParameter("endDate");
        
        MembershipPayHisDTO dto = new MembershipPayHisDTO();
//        dto.setUserNo(sessionUserNo);
        dto.setRefundBankname(bankname);
        dto.setRefundBankAccount(bankaccount);
        System.out.print("작동됨 서비스0");
//        dto.setPayAmount(payAmount);
//        dto.setPayCnt(payCnt);

        
        
//        dto.setStartDate(startdate);
        

        SqlSession sql = sqlSessionFactory.openSession(true);
        System.out.print("작동됨 서비스1");
        MainMapper main = sql.getMapper(MainMapper.class);
        System.out.print("작동됨 서비스2");
        
        int result = main.buy(dto);
        System.out.println("성공:" + result);
        response.sendRedirect("/PHGYM/main/main-promotion-list.jsp"); //
	}
	
}
