package com.phgym.controller;

import java.io.IOException;

import com.phgym.mypage.service.MypageService;
import com.phgym.mypage.service.MypageServiceImpl;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("*.mypage")
public class MypageController extends HttpServlet {
	
	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doAction(request, response);
	}
	
	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doAction(request, response);
	}
	
	protected void doAction(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		
		String uri = request.getRequestURI();
		String path = request.getContextPath();
		String command = uri.substring(path.length());
		System.out.println("command = " + command);
		
		MypageService service = null;
		
		if(command.equals("/mypage/checkin.mypage")) { //출석체크 페이지 이동
			service = new MypageServiceImpl();
			service.checkCheckin(request, response);
		} else if(command.equals("/mypage/doCheckin.mypage")) { //출석체크 기능
			service = new MypageServiceImpl();
			service.doCheckin(request, response);
		} else if(command.equals("/mypage/transfer.mypage")) { //회원권양도 페이지 이동
			service = new MypageServiceImpl();
			service.checkTransfer(request, response);
		} else if(command.equals("/mypage/doTransfer.mypage")) { //회원권양도 기능
			service = new MypageServiceImpl();
			service.doTransfer(request, response);
		} else if(command.equals("/mypage/statistics.mypage")) { //통계확인 페이지 이동
			service = new MypageServiceImpl();
			service.statistics(request, response);
		} else if(command.equals("/mypage/reservationTrainer.mypage")) { //PT예약하기(트레이너) 페이지 이동
			service = new MypageServiceImpl();
			service.reservationTrainer(request, response);
		} else if(command.equals("/mypage/reservationDate.mypage")) { //PT예약하기(날짜) 페이지 이동
			service = new MypageServiceImpl();
			service.reservationDate(request, response);
		} else if(command.equals("/mypage/reservationTime.mypage")) { //PT예약하기(시간) 페이지 이동
			service = new MypageServiceImpl();
			service.reservationTime(request, response);
		} else if(command.equals("/mypage/doPtReservation.mypage")) { //PT예약하기 기능
			service = new MypageServiceImpl();
			service.doPtReservation(request, response);
		} else if(command.equals("/mypage/userInfo.mypage")) { //회원정보 페이지 이동
			service = new MypageServiceImpl();
			service.userInfo(request, response);
		} else if(command.equals("/mypage/userInfoContent.mypage")) { //회원정보 수정페이지 이동
			service = new MypageServiceImpl();
			service.userInfoContent(request, response);
		} else if(command.equals("/mypage/userInfoUpdate.mypage")) { //회원정보 수정 기능
			service = new MypageServiceImpl();
			service.userInfoUpdate(request, response);
		}
	}
}
