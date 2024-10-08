package com.phgym.main.service;

import java.io.IOException;
import java.time.LocalDate;
import java.time.format.DateTimeFormatter;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import com.phgym.main.model.UserInfoDTO;
import com.phgym.util.mybatis.MybatisUtil;
import com.phgym.main.model.MainMapper;
import com.phgym.main.model.MembershipPayHisDTO;
import com.phgym.main.model.PtPayHisDTO;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

public class MainServiceImpl implements MainService {
	
	private SqlSessionFactory sqlSessionFactory = MybatisUtil.getSqlSessionFactory();

	
	@Override
	public void buyPromotion1(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		int sessionUserNo = (int)request.getSession().getAttribute("sessionUserNo");
        
        String payMethod =  request.getParameter("payMethod"); //결제방법(input)
        String methodBox = request.getParameter("methodBox"); //결제방법(select)
        String refundBackname = request.getParameter("refundBankname"); //환불(은행명)
        String nameBox = request.getParameter("nameBox"); //환불(select)
        String refundBankAccount =  request.getParameter("refundBankAccount"); //환불(계좌번호)
        int payAmount = Integer.parseInt(request.getParameter("payAmount")); //상품금액
        LocalDate startDate = LocalDate.parse(request.getParameter("startDate"), DateTimeFormatter.ISO_DATE);
        LocalDate endDate = LocalDate.parse(request.getParameter("endDate"), DateTimeFormatter.ISO_DATE);
        
        MembershipPayHisDTO dto = new MembershipPayHisDTO();
        dto.setUserNo(sessionUserNo);
        if(payMethod == null || payMethod == "") {
        	dto.setPayMethod(methodBox);
        } else {
        	dto.setPayMethod(payMethod);
        }
        if(refundBackname == null || refundBackname == "") {
        	dto.setRefundBankname(nameBox);
        } else {
        	dto.setRefundBankname(refundBackname);
        }
        dto.setRefundBankAccount(refundBankAccount);
        dto.setPayAmount(payAmount);
        dto.setStartDate(startDate);
        dto.setEndDate(endDate);
        System.out.println(dto);
        
        SqlSession sql = sqlSessionFactory.openSession(true);
        MainMapper main = sql.getMapper(MainMapper.class);
        
        main.buyPromotion1(dto);
        
        request.getSession().setAttribute("msg", "y");
        response.sendRedirect("/PHGYM/main/main-userhome.jsp"); 
	}
	

	@Override
	public void buyPromotion2(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int sessionUserNo = (int)request.getSession().getAttribute("sessionUserNo");
        
        
        String payMethod =  request.getParameter("payMethod"); //결제방법
        String methodBox = request.getParameter("methodBox"); //결제방법(select)
        String nameBox = request.getParameter("nameBox"); //환불(select)
        String refundBackname = request.getParameter("refundBankname"); //환불(은행명)
        String refundBankAccount =  request.getParameter("refundBankAccount"); //환불(계좌번호)
        int payAmount = Integer.parseInt(request.getParameter("payAmount")); //상품금액
        LocalDate startDate = LocalDate.parse(request.getParameter("startDate"), DateTimeFormatter.ISO_DATE);
        LocalDate endDate = LocalDate.parse(request.getParameter("endDate"), DateTimeFormatter.ISO_DATE);
        
        System.out.println("작동1");
        
        MembershipPayHisDTO dto = new MembershipPayHisDTO();
        dto.setUserNo(sessionUserNo);
        if(payMethod == null || payMethod == "") {
        	dto.setPayMethod(methodBox);
        } else {
        	dto.setPayMethod(payMethod);
        }
        if(refundBackname == null || refundBackname == "") {
        	dto.setRefundBankname(nameBox);
        } else {
        	dto.setRefundBankname(refundBackname);
        }
        
        
        dto.setRefundBankAccount(refundBankAccount);
        dto.setPayAmount(payAmount);
        dto.setStartDate(startDate);
        dto.setEndDate(endDate);
        System.out.println(dto);
        
        System.out.print("작동됨 서비스0");


        SqlSession sql = sqlSessionFactory.openSession(true);
        System.out.print("작동됨 서비스1");
        MainMapper main = sql.getMapper(MainMapper.class);
        System.out.print("작동됨 서비스2");
        
        int result = main.buyPromotion2(dto);
        System.out.println("성공:" + result);
        
        request.getSession().setAttribute("msg", "y");
        response.sendRedirect("/PHGYM/main/main-userhome.jsp"); //
		
	}

	@Override
	public void buyPromotion3(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		int sessionUserNo = (int)request.getSession().getAttribute("sessionUserNo");

        String payMethod =  request.getParameter("payMethod"); //결제방법
        String methodBox = request.getParameter("methodBox"); //결제방법(select)
        String nameBox = request.getParameter("nameBox"); //환불(select)
        String refundBackname = request.getParameter("refundBankname"); //환불(은행명)
        String refundBankAccount =  request.getParameter("refundBankAccount"); //환불(계좌번호)
        int payAmount = Integer.parseInt(request.getParameter("payAmount")); //상품금액
        LocalDate startDate = LocalDate.parse(request.getParameter("startDate"), DateTimeFormatter.ISO_DATE);
        

        
        System.out.println("작동1");
        
        MembershipPayHisDTO dto = new MembershipPayHisDTO();
        dto.setUserNo(sessionUserNo);
        if(payMethod == null || payMethod == "") {
        	dto.setPayMethod(methodBox);
        } else {
        	dto.setPayMethod(payMethod);
        }
        if(refundBackname == null || refundBackname == "") {
        	dto.setRefundBankname(nameBox);
        } else {
        	dto.setRefundBankname(refundBackname);
        }
        
        
        dto.setRefundBankAccount(refundBankAccount);
        dto.setPayAmount(payAmount);
        dto.setStartDate(startDate);
        System.out.println(dto);
        
        System.out.println(dto.toString());
        System.out.print("작동됨 서비스0");


        SqlSession sql = sqlSessionFactory.openSession(true);
        System.out.print("작동됨 서비스1");
        MainMapper main = sql.getMapper(MainMapper.class);
        System.out.print("작동됨 서비스2");
        
        int result = main.buyPromotion3(dto);
        System.out.println("성공:" + result);
        
        request.getSession().setAttribute("msg", "y");
        response.sendRedirect("/PHGYM/main/main-userhome.jsp"); //
		
	}




	@Override
	public void buyPromotion4(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("impl 도착!!");
		int sessionUserNo = (int)request.getSession().getAttribute("sessionUserNo"); //회원번호

        String payMethod =  request.getParameter("payMethod"); //결제방법
        String methodBox = request.getParameter("methodBox"); //결제방법(select)
        String nameBox = request.getParameter("nameBox"); //환불(select)
        int payCnt =  Integer.parseInt(request.getParameter("payCnt")); //구매개수
        int payPrice = Integer.parseInt(request.getParameter("payPrice")); //결제금액
        String refundBackname = request.getParameter("refundBankname"); //환불(은행명)
        String refundBankAccount =  request.getParameter("refundBankAccount"); //환불(계좌번호)
        
        
        System.out.println("작동1");
        
        PtPayHisDTO dto = new PtPayHisDTO();
        dto.setUserNo(sessionUserNo);
        if(payMethod == null || payMethod == "") {
        	dto.setPayMethod(methodBox);
        } else {
        	dto.setPayMethod(payMethod);
        }
        if(refundBackname == null || refundBackname == "") {
        	dto.setRefundBankname(nameBox);
        } else {
        	dto.setRefundBankname(refundBackname);
        }
        
        
        dto.setPayCnt(payCnt);
        dto.setPayPrice(payPrice);
        
        dto.setRefundBankAccount(refundBankAccount);
        
        System.out.println(dto);
        
        System.out.print("작동됨 서비스0");


        SqlSession sql = sqlSessionFactory.openSession(true);
        System.out.print("작동됨 서비스1");
        MainMapper main = sql.getMapper(MainMapper.class);
        System.out.print("작동됨 서비스2");
        
        int result = main.buyPromotion4(dto);
        System.out.println("성공:" + result);
        
        request.getSession().setAttribute("msg", "y");
        response.sendRedirect("/PHGYM/main/main-userhome.jsp"); //
		
	}
	
	
	@Override //main-promotion-list로 이동하기
	public void goPromotionList(HttpServletRequest request, HttpServletResponse response)
		   throws ServletException, IOException {
		request.getRequestDispatcher("main-promotion-list.jsp").forward(request, response);
		
	}
/*----------------------------------------------------------------------------------------------------------------*/
	@Override //프로모션 1 결제하러가기
	public void goPromotionPay1(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int sessionUserNo = (int)request.getSession().getAttribute("sessionUserNo");
		
		SqlSession sql = sqlSessionFactory.openSession(true);
		MainMapper main = sql.getMapper(MainMapper.class);
		UserInfoDTO result = main.goPromotionPay1(sessionUserNo);
		System.out.println("result = " + result);
		
		request.setAttribute("result", result);
		request.getRequestDispatcher("main-promotion-payment1.jsp").forward(request, response);
	}
	
	@Override //프로모션 2 결제하러가기
	public void goPromotionPay2(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int sessionUserNo = (int)request.getSession().getAttribute("sessionUserNo");
		
		SqlSession sql = sqlSessionFactory.openSession(true);
		MainMapper main = sql.getMapper(MainMapper.class);
		UserInfoDTO result = main.goPromotionPay2(sessionUserNo);
		System.out.println("result = " + result);
		
		request.setAttribute("result", result);
		request.getRequestDispatcher("main-promotion-payment2.jsp").forward(request, response);
		
	}

	@Override //프로모션 3 결제하러가기
	public void goPromotionPay3(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int sessionUserNo = (int)request.getSession().getAttribute("sessionUserNo");
		
		SqlSession sql = sqlSessionFactory.openSession(true);
		MainMapper main = sql.getMapper(MainMapper.class);
		UserInfoDTO result = main.goPromotionPay3(sessionUserNo);
		System.out.println("result = " + result);
		
		request.setAttribute("result", result);
		request.getRequestDispatcher("main-promotion-payment3.jsp").forward(request, response);
		
	}

	@Override //프로모션 4 결제하러가기
	public void goPromotionPay4(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int sessionUserNo = (int)request.getSession().getAttribute("sessionUserNo");
		
		SqlSession sql = sqlSessionFactory.openSession(true);
		MainMapper main = sql.getMapper(MainMapper.class);
		UserInfoDTO result = main.goPromotionPay4(sessionUserNo);
		System.out.println("result = " + result);
		
		request.setAttribute("result", result);
		request.getRequestDispatcher("main-promotion-payment4.jsp").forward(request, response);
		
	}
/*----------------------------------------------------------------------------------------------------------------*/	
	
	
	@Override //main-introduction으로 이동하기
	public void goIntroduction(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.getRequestDispatcher("main-introduction.jsp").forward(request, response);
	}

	@Override //main-map으로 이동하기
	public void goMap(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.getRequestDispatcher("main-map.jsp").forward(request, response);
	}

	@Override //main-userhome으로 이동하기
	public void goMain(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.getRequestDispatcher("main-userhome.jsp").forward(request, response);
		
	}
	/*----------------------------------------------------------------------------------------------------------------*/	
	
	@Override //main-trainer으로 이동
	public void goTrainer(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.getRequestDispatcher("main-trainer.jsp").forward(request, response);
	}


	@Override
	public void getUserPeriod(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		int sessionUserNo = (int)request.getSession().getAttribute("sessionUserNo");
        SqlSession sql = sqlSessionFactory.openSession(true);
        System.out.print("작동됨 서비스1");
        MainMapper main = sql.getMapper(MainMapper.class);
        System.out.print("작동됨 서비스2");

        LocalDate endDate = main.getUserPeriod(sessionUserNo);
        
    	request.setAttribute("endDate", endDate);
		request.getRequestDispatcher("main-promotion-payment1.jsp").forward(request, response);
		
        

	}

	/* 트레이너 reservation */
	@Override
	public void goReservation(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.getRequestDispatcher("reservationTrainer.mypage.jsp").forward(request, response);
		
	}








	

	
	
}
