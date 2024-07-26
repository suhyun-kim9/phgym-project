package com.phgym.controller;

import java.io.IOException;

import com.phgym.board.service.BoardService;
import com.phgym.main.service.MainService;
import com.phgym.main.service.MainServiceImpl;
import com.phgym.mypage.service.MypageService;
import com.phgym.mypage.service.MypageServiceImpl;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("*.main")
public class MainController extends HttpServlet {

	
	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doAction(request, response);
	}
	
	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doAction(request, response);
	}
	
	protected void doAction(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		request.setCharacterEncoding("utf-8");
        String uri = request.getRequestURI();
        String path = request.getContextPath();
        String command = uri.substring(path.length());
        System.out.println(command);
        MainService service;
        
        if(command.equals("/main/promotion-payment1.main")) {
            service = new MainServiceImpl();
            service.buyPromotion1(request,response);
            
        } else if(command.equals("/main/promotion-payment2.main")) {
        	service = new MainServiceImpl();
        	service.buyPromotion2(request,response);
	
		} else if(command.equals("/main/promotion-payment3.main")) {
	        service = new MainServiceImpl();
	        service.buyPromotion3(request,response);
        
		} else if(command.equals("/main/promotion-payment4.main")) {
        	service = new MainServiceImpl();
        	service.buyPromotion4(request,response);
    
		} else if(command.equals("/main/promotionList.main")) {
        	service = new MainServiceImpl();
            service.goPromotionList(request,response);
            
        } else if(command.equals("/main/goPromotionPay1.main")) {
        	service = new MainServiceImpl();
            service.goPromotionPay1(request,response);
            
        } else if(command.equals("/main/goPromotionPay2.main")) {
        	service = new MainServiceImpl();
            service.goPromotionPay2(request, response);    
        
        } else if(command.equals("/main/goPromotionPay3.main")) {
        	service = new MainServiceImpl();
            service.goPromotionPay3(request,response);
            
        } else if(command.equals("/main/goPromotionPay4.main")) {
        	service = new MainServiceImpl();
            service.goPromotionPay4(request,response);    
            
        } else if(command.equals("/main/introduction.main")) {
        	service = new MainServiceImpl();
            service.goIntroduction(request,response);
            
        } else if(command.equals("/main/map.main")) {
        	service = new MainServiceImpl();
            service.goMap(request,response);
            
        } else if(command.equals("/main/userhome.main")) {
        	service = new MainServiceImpl();
            service.goMain(request,response);
        
        } else if(command.equals("/main/trainer.main")) {
        	service = new MainServiceImpl();
            service.goTrainer(request,response);
        }
		
		
	}
}
