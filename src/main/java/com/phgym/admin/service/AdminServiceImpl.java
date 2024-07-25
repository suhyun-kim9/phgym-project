package com.phgym.admin.service;

import java.io.IOException;
import java.time.LocalDate;
import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;
import java.util.ArrayList;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.phgym.admin.model.AdminAccountDTO;
import com.phgym.admin.model.AdminMapper;
import com.phgym.admin.model.UserAccountDTO;
import com.phgym.mypage.model.MypageMapper;
import com.phgym.mypage.model.PtReservationHisDTO;
import com.phgym.mypage.model.PtReservationHisDTO2;
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
		List<UserAccountDTO> list = admin.getUserAccount(userName);
		sql.close();
		System.out.println(list.size());
		                       
		if(list.size() == 1) {
			for(UserAccountDTO dto : list) {
				request.setAttribute("dto", dto);  
			}
			request.getRequestDispatcher("admin-user-find-info.jsp").forward(request, response);
		} else if(list.size() >= 2) {
			request.setAttribute("list", list);  
			request.getRequestDispatcher("admin-user-find.jsp").forward(request, response);
		}
		
		
	}
	
	// 회원 정보 조회 (중복)
	@Override
	public void getUserAccount2(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		int userNo = Integer.parseInt(request.getParameter("userNo"));
		
		SqlSession sql = sqlSessionFactory.openSession(true); //db
		AdminMapper admin = sql.getMapper(AdminMapper.class);
		UserAccountDTO dto = admin.getUserAccount2(userNo);
		sql.close();
		
		request.setAttribute("dto", dto);
		request.getRequestDispatcher("admin-user-find-info.jsp").forward(request, response);
	}


	// 회원 스케쥴 조회 (1)
	@Override
	public void getUserPt(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		String userName = request.getParameter("userName");
		
		SqlSession sql = sqlSessionFactory.openSession(true); //db
		AdminMapper admin = sql.getMapper(AdminMapper.class);
		List<UserAccountDTO> list = admin.getUserAccount(userName);
		sql.close();
		System.out.println(list.size());
		                       
		if(list.size() == 1) {
			for(UserAccountDTO dto : list) {
				request.setAttribute("dto", dto);
				request.getSession().setAttribute("doPtPlanCheckUserNo", dto.getUserNo());
			}
			request.getRequestDispatcher("admin-pt-check-info.jsp").forward(request, response);
		} else if(list.size() >= 2) {
			request.setAttribute("list", list);  
			request.getRequestDispatcher("admin-pt-check.jsp").forward(request, response);
		}
		
		
	}

	// 회원 스케쥴 조회 (중복) 
	@Override
	public void getUserPt2(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		int sessionAdminNo = (int)request.getSession().getAttribute("sessionAdminNo"); //controller
		int userNo = Integer.parseInt(request.getParameter("userNo"));
		request.getSession().setAttribute("doPtPlanCheckUserNo", userNo);
		
		SqlSession sql = sqlSessionFactory.openSession(true); //db
		AdminMapper admin = sql.getMapper(AdminMapper.class);
		UserAccountDTO dto = admin.getUserAccount2(userNo);
		AdminAccountDTO admin_dto = admin.getAdminAccount(sessionAdminNo);
		sql.close();
		
		request.setAttribute("dto", dto); //회원
		request.setAttribute("adminDto", admin_dto); //담당트레이너정보
		request.getRequestDispatcher("admin-pt-check-info.jsp").forward(request, response);
		
	}
	

	
	//회원 스케쥴 조회 (플래너)
	@Override
	public void doPtPlanCheck(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		//지윤 수정
		int doPtPlanCheckUserNo = (int)request.getSession().getAttribute("doPtPlanCheckUserNo");
		int sessionAdminNo = (Integer)request.getSession().getAttribute("sessionAdminNo");
		String reservationDate = request.getParameter("date");
		
		PtReservationHisDTO2 dto = new PtReservationHisDTO2();
		dto.setUserNo(doPtPlanCheckUserNo);
		dto.setAdminNo(sessionAdminNo);
		dto.setReservationDate(reservationDate);

		SqlSession sql = sqlSessionFactory.openSession(true);
		AdminMapper admin = sql.getMapper(AdminMapper.class);
		PtReservationHisDTO2 result = admin.doPtPlanCheck(dto);
		System.out.println(result);
		
		request.setAttribute("result", result);
		request.getRequestDispatcher("admin-pt-check-info.jsp").forward(request, response);
	}

	
	// 관리자 스케쥴 확인 (트레이너 스케쥴 확인)
	@Override
	public void getTrainerPtCheck(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		int sessionAdminNo = (int)request.getSession().getAttribute("sessionAdminNo"); 
	
		SqlSession sql = sqlSessionFactory.openSession(true);
		AdminMapper admin = sql.getMapper(AdminMapper.class);
		List<PtReservationHisDTO2> dateDto = admin.doTrainerPtCheck2(sessionAdminNo); // 관리자 정보 가져오기doTrainerPtCheck2
		AdminAccountDTO adDto = admin.getAdminAccount(sessionAdminNo); // 관리자 정보 가져오기
		
		request.setAttribute("adDto", adDto); // 관리자 정보 조회
		request.setAttribute("dateDto", dateDto); // 관리자 정보 조회

		sql.close();
		request.getRequestDispatcher("admin-trainer-pt-check.jsp").forward(request, response);
	}

	
	
	
	
	//관리자 스케쥴 조회 (플래너)
	@Override
	public void doTrainerPtCheck(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		
		System.out.println("이힝히잏이힝힝히이");
		int sessionAdminNo = (int)request.getSession().getAttribute("sessionAdminNo"); 
		String reservationDate = request.getParameter("date"); // 클릭한 날짜값

		SqlSession sql = sqlSessionFactory.openSession(true);
		AdminMapper admin = sql.getMapper(AdminMapper.class);
		
		PtReservationHisDTO2 dto = new PtReservationHisDTO2();
		dto.setAdminNo(sessionAdminNo);
		dto.setReservationDate(reservationDate);
		
		List<PtReservationHisDTO2> reserDto = admin.doTrainerPtCheck(dto);
		
		AdminAccountDTO adDto = admin.getAdminAccount(sessionAdminNo); // 관리자 정보 가져오기
		
		request.setAttribute("adDto", adDto); // 관리자 정보 조회
		
		System.out.println(reserDto);
		request.setAttribute("reserDto", reserDto);
		
		request.getRequestDispatcher("admin-trainer-pt-check.jsp").forward(request, response);
		
	}
	
	

	
	
	@Override
	public void goUserFind(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.getRequestDispatcher("admin-user-find.jsp").forward(request, response);
		
	}


	@Override
	public void goPtCheckInfo(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.getRequestDispatcher("admin-pt-check-info.jsp").forward(request, response);
		
	}



	// 회원 스케쥴 조회하기
	@Override
	public void getPtCheck(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		SqlSession sql = sqlSessionFactory.openSession(true); //db
		
		AdminMapper admin = sql.getMapper(AdminMapper.class);
		
		request.getRequestDispatcher("admin-pt-check-info.jsp").forward(request, response);
	}

	







}
