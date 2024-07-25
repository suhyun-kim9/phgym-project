package com.phgym.controller;

import java.io.IOException;

import com.phgym.admin.service.AdminService;
import com.phgym.admin.service.AdminServiceImpl;
import com.phgym.mypage.service.MypageService;
import com.phgym.mypage.service.MypageServiceImpl;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;


@WebServlet("*.admin")
public class AdminController extends HttpServlet {
	
	public AdminController() {
		
	}
	
	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doAction(request, response);
	}
	
	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doAction(request, response);

		
	}
	
	protected void doAction(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
			//세션 임의 생성
			request.getSession().setAttribute("sessionAdminNo", 2); //삭제예정
			
		  	request.setCharacterEncoding("utf-8");
	        String uri = request.getRequestURI();
	        String path = request.getContextPath();
	        String command = uri.substring(path.length());
	        System.out.println(command);
	        
	        AdminService service = null;

	        if(command.equals("/admin/account.admin")) {
	            service = new AdminServiceImpl();
	            service.getAdminAccount(request, response);
	        }else if (command.equals("/admin/doModifyAdminAccount.admin")) {
	        	service = new AdminServiceImpl();
	            service.doModifyAdminAccount(request, response);
	        } else if(command.equals("/admin/modifyAdminAccount.admin")) {
	        	service = new AdminServiceImpl();
	        	service.modifyAdminAccount(request, response);
	        } else if(command.equals("/admin/getUserAccount.admin")) {
	        	service = new AdminServiceImpl();
	        	service.getUserAccount(request, response);
	        } else if(command.equals("/admin/getUserAccount2.admin")) {
	        	service = new AdminServiceImpl();
	        	service.getUserAccount2(request, response);
	        } else if(command.equals("/admin/user-find.admin")) {
	        	service = new AdminServiceImpl();
	        	service.goUserFind(request, response);
	        } else if(command.equals("/admin/doPtPlanCheck.admin")) {
	        	service = new AdminServiceImpl();
	        	service.doPtPlanCheck(request, response);
	        } else if(command.equals("/admin/getUserPt.admin")) {
	        	service = new AdminServiceImpl();
	        	service.getUserPt(request, response);
	        } else if(command.equals("/admin/getUserPt2.admin")) {
	        	service = new AdminServiceImpl();
	        	service.getUserPt2(request, response);
	        }  else if(command.equals("/admin/trainer-pt-check.admin")) {
	        	service = new AdminServiceImpl();
	        	service.getTrainerPtCheck(request, response);
	        } else if(command.equals("/admin/doTrainerPtCheck.admin")) {
	        	service = new AdminServiceImpl();
	        	service.doTrainerPtCheck(request, response);
	        }
	        
		
	}

}
