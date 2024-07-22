package com.phgym.admin.service;

import java.io.IOException;
import java.time.LocalDate;
import java.time.format.DateTimeFormatter;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.phgym.admin.model.AdminAccountDTO;
import com.phgym.admin.model.AdminMapper;
import com.phgym.admin.model.UserAccountDTO;
import com.phgym.util.mybatis.MybatisUtil;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

public class AdminServiceImpl implements AdminService {
	
	private SqlSessionFactory sqlSessionFactory = MybatisUtil.getSqlSessionFactory();
	
	//관리자 정보 수정하기
	@Override
	public void modifyAdminAccount(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("serviceImpl 도착!!");
		int sessionAdminNo = (int)request.getSession().getAttribute("sessionAdminNo"); //controller
		
		String adminName = request.getParameter("adminName");
		LocalDate adminBirth = LocalDate.parse(request.getParameter("adminBirth"), DateTimeFormatter.ISO_DATE);
		String adminGender = request.getParameter("adminGender");
		String adminPhone = request.getParameter("adminPhone");
		String adminPw = request.getParameter("adminPw");
		String adminJobTitle = request.getParameter("adminJobTitle");
		LocalDate adminHireDate =  LocalDate.parse(request.getParameter("adminHireDate"), DateTimeFormatter.ISO_DATE);
		String adminEmail = request.getParameter("adminEmail");
		String adminCareerHis = request.getParameter("adminCareerHis");
		
		
		AdminAccountDTO dto = new AdminAccountDTO();
		dto.setAdminNo(sessionAdminNo);
		dto.setAdminName(adminName);
		dto.setAdminBirth(adminBirth);
		dto.setAdminGender(adminGender);
		dto.setAdminPhone(adminPhone);
		dto.setAdminPw(adminPw);
		dto.setAdminJobTitle(adminJobTitle);
		dto.setAdminHireDate(adminHireDate);
		dto.setAdminEmail(adminEmail);
		dto.setAdminCareerHis(adminCareerHis);
				
		SqlSession sql = sqlSessionFactory.openSession(true); //db
		AdminMapper admin = sql.getMapper(AdminMapper.class);
		int result = admin.modifyAdminAccount(dto);
		
//		if (result == 1) {
//			request.setAttribute("updateMsg", true);
//			System.out.println("업데이트 성공");
//		}else {
//			
//		}
		sql.close();
		
		response.sendRedirect("/PHGYM/admin/doModifyAdminAccount.admin");
	}	


	// 관리자 정보 수정하기 (값 보내주는 용도)
	@Override
	public void doModifyAdminAccount(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		int sessionAdminNo = (int)request.getSession().getAttribute("sessionAdminNo"); //controller
		
		SqlSession sql = sqlSessionFactory.openSession(true); //db
		AdminMapper admin = sql.getMapper(AdminMapper.class);
		AdminAccountDTO dto = admin.getAdminAccount(sessionAdminNo);
		sql.close();
		request.setAttribute("dto", dto);
//		response.sendRedirect("/PHGYM/admin/admin-account-modify.jsp");
		request.getRequestDispatcher("admin-account-modify.jsp").forward(request, response);
		
	}
	
	
	// 관리자 정보 조회하기
	@Override
	public void getAdminAccount(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		int sessionAdminNo = (int)request.getSession().getAttribute("sessionAdminNo"); //controller
		
		SqlSession sql = sqlSessionFactory.openSession(true); //db
		AdminMapper admin = sql.getMapper(AdminMapper.class);
		AdminAccountDTO dto = admin.getAdminAccount(sessionAdminNo);
		System.out.println(dto);
		sql.close();
		request.setAttribute("dto", dto);
		request.getRequestDispatcher("admin-account.jsp").forward(request, response);
	}
	
	
	// 회원 정보 조회하기
	@Override
	public void getUserAccount(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		String userName = request.getParameter("userName");
		
		SqlSession sql = sqlSessionFactory.openSession(true); //db
		AdminMapper admin = sql.getMapper(AdminMapper.class);
		System.out.println("2");
		UserAccountDTO dto = admin.getUserAccount(userName);
		sql.close();
		request.setAttribute("dto", dto);
		request.getRequestDispatcher("admin-user-find-info.jsp").forward(request, response);
		
		
		
	}


	//
	@Override
	public void getPtCheck(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		
		String userName = request.getParameter("userName");
		SqlSession sql = sqlSessionFactory.openSession(true); //db
		
		AdminMapper admin = sql.getMapper(AdminMapper.class);
		
		// 유저 정보 가져오기
		UserAccountDTO user_dto = admin.getUserAccount(userName);
		int userNo = admin.getUserId(userName);
	
		// (담당트레이너) 관리자 정보 가져오기
		AdminAccountDTO admin_dto = admin.getAdminAccountForUserId(userNo);
		
		//------------ pt 스케쥴 관련 db
		
		
		
		//------------ pt 스케쥴 관련 db
		
		request.setAttribute("userDto", user_dto); // 유저정보
		request.setAttribute("adminDto", admin_dto); //담당트레이너정보
		
		request.getRequestDispatcher("admin-pt-check-info.jsp").forward(request, response);
		
	}



	@Override
	public void getptCheckList(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
	}






}
