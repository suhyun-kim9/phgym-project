package com.phgym.admin.service;

import java.io.IOException;
import java.io.PrintWriter;
import java.time.LocalDate;
import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;
import java.util.ArrayList;
import java.util.List;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.google.gson.Gson;
import com.phgym.admin.model.AdminAccountDTO;
import com.phgym.admin.model.AdminMapper;
import com.phgym.admin.model.PageVo;
import com.phgym.admin.model.PtPerDayDTO;
import com.phgym.admin.model.PtReservationHisDTO3;
import com.phgym.admin.model.UserAccountDTO;
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
		String adminPhone = request.getParameter("adminPhone");
		String adminPw = request.getParameter("adminPw");
		String adminJobTitle = request.getParameter("adminJobTitle");
		String adminEmail = request.getParameter("adminEmail");
		String adminCareerHis = request.getParameter("adminCareerHis");
		
		
		AdminAccountDTO dto = new AdminAccountDTO();
		dto.setAdminNo(sessionAdminNo);
		dto.setAdminName(adminName);
		dto.setAdminPhone(adminPhone);
		dto.setAdminPw(adminPw);
		dto.setAdminJobTitle(adminJobTitle);
		dto.setAdminEmail(adminEmail);
		dto.setAdminCareerHis(adminCareerHis);
		System.out.println("dto = " + dto);
				
		SqlSession sql = sqlSessionFactory.openSession(true); //db
		AdminMapper admin = sql.getMapper(AdminMapper.class);
		int result = admin.modifyAdminAccount(dto);
		
		if (result == 1) {
			request.setAttribute("updateMsg", true);
			System.out.println("업데이트 성공");
		}else {
			
		}
		sql.close();
		
		response.sendRedirect("/PHGYM/admin/account.admin");
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
	
	
	//---------------------------------------------
	// 회원 정보 조회하기
	@Override
	public void getUserAccount(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		String userName = request.getParameter("userName");
		
		SqlSession sql = sqlSessionFactory.openSession(true); //db
		AdminMapper admin = sql.getMapper(AdminMapper.class);
		List<UserAccountDTO> list = admin.getUserAccount(userName);
		sql.close();
		System.out.println(list.size());
		                       
		if(list.size() == 0) { // 조회 실패
			request.setAttribute("result", "N");
			/* response.sendRedirect("/PHGYM/admin/user-find.admin"); */
			request.getRequestDispatcher("goUserFind.admin").forward(request, response);
			
		} else {
			request.setAttribute("list1", list);  
			request.getRequestDispatcher("admin-user-find.jsp").forward(request, response);
		}
	}
	
	
	//---------------------------------------------
	// 회원 정보 조회 (중복)
	@Override
	public void getUserAccount2(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		int userNo = Integer.parseInt(request.getParameter("userNo"));
		
		SqlSession sql = sqlSessionFactory.openSession(true); //db
		AdminMapper admin = sql.getMapper(AdminMapper.class);
		UserAccountDTO dto = admin.getUserAccount2(userNo);
		
		// --------------pt 진행내역
		List<PtReservationHisDTO2> list= admin.getUserPt3(userNo); //날짜, 시간, 예약번호, 트레이너명, pt여부
		
		
		int num1 = admin.getTotalPtCnt2(userNo); 
		int num2 = admin.getDidPtCnt2(userNo); 
		int num3 = num1 - num2 ;
		
		sql.close();
		
		request.setAttribute("list", list);
		request.setAttribute("dto", dto);
		request.setAttribute("num", num3);
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
		
		if (list.size() == 0) {
			request.setAttribute("msg", "N");
			request.getRequestDispatcher("admin-pt-check.jsp").forward(request, response);
		}else {
			for(UserAccountDTO dto : list) {
				request.setAttribute("dto", dto);
				request.getSession().setAttribute("doPtPlanCheckUserNo", dto.getUserNo());
			}
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
		System.out.println("doPtPlanCheckUserNo = " + doPtPlanCheckUserNo);
		int sessionAdminNo = (Integer)request.getSession().getAttribute("sessionAdminNo");
		System.out.println("sessionAdminNo = " + sessionAdminNo);
		String reservationDate = request.getParameter("date");
		System.out.println("reservationDate = " + reservationDate);
		
		PtReservationHisDTO2 dto = new PtReservationHisDTO2();
		dto.setUserNo(doPtPlanCheckUserNo);
		dto.setAdminNo(sessionAdminNo);
		dto.setReservationDate(reservationDate);

		SqlSession sql = sqlSessionFactory.openSession(true);
		AdminMapper admin = sql.getMapper(AdminMapper.class);
		List<PtReservationHisDTO2> result = admin.doPtPlanCheck(dto);
		System.out.println(result.toString());
		
		request.setAttribute("result", result);
		request.getRequestDispatcher("admin-pt-check-info.jsp").forward(request, response);
	}

	
	// 관리자 스케쥴 확인 (트레이너 스케쥴 확인)
	@Override
	public void getTrainerPtCheck(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		int sessionAdminNo = (int)request.getSession().getAttribute("sessionAdminNo");
		System.out.println("sessionAdminNo = " + sessionAdminNo);
	
		SqlSession sql = sqlSessionFactory.openSession(true);
		AdminMapper admin = sql.getMapper(AdminMapper.class);
		List<PtReservationHisDTO2> dateDto = admin.doTrainerPtCheck2(sessionAdminNo); // 관리자 정보 가져오기doTrainerPtCheck2
		AdminAccountDTO adDto = admin.getAdminAccount(sessionAdminNo); // 관리자 정보 가져오기
		List<PtPerDayDTO> ptPerDayList = admin.getPtPerDay(sessionAdminNo); //하루 PT 횟수
		System.out.println("ptPerDayList = " + ptPerDayList.toString());
		for(PtPerDayDTO dto : ptPerDayList) {
			System.out.println(dto.toString());
		}
		
		request.setAttribute("ptPerDayList", ptPerDayList);
		request.setAttribute("adDto", adDto); // 관리자 정보 조회
		request.setAttribute("dateDto", dateDto); // 관리자 정보 조회

		sql.close();
		request.getRequestDispatcher("admin-trainer-pt-check.jsp").forward(request, response);
	}

	
	
	
	
	//관리자 스케쥴 조회 (플래너)
	@Override
	public void doTrainerPtCheck(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		
//		System.out.println("이힝히잏이힝힝히이");
//		int sessionAdminNo = (int)request.getSession().getAttribute("sessionAdminNo"); 
//		String reservationDate = request.getParameter("date"); // 클릭한 날짜값
//
//		SqlSession sql = sqlSessionFactory.openSession(true);
//		AdminMapper admin = sql.getMapper(AdminMapper.class);
//		
//		PtReservationHisDTO2 dto = new PtReservationHisDTO2();
//		dto.setAdminNo(sessionAdminNo);
//		dto.setReservationDate(reservationDate);
//		
//		List<PtReservationHisDTO2> reserDto = admin.doTrainerPtCheck(dto);
//		
//		AdminAccountDTO adDto = admin.getAdminAccount(sessionAdminNo); // 관리자 정보 가져오기
//		
//		request.setAttribute("adDto", adDto); // 관리자 정보 조회
//		
//		System.out.println(reserDto);
//		request.setAttribute("reserDto", reserDto);
//		
//		request.getRequestDispatcher("admin-trainer-pt-check.jsp").forward(request, response);
		
		int sessionAdminNo = (int)request.getSession().getAttribute("sessionAdminNo"); 
		String reservationDate = request.getParameter("date"); // 클릭한 날짜값
		
		SqlSession sql = sqlSessionFactory.openSession(true);
		AdminMapper admin = sql.getMapper(AdminMapper.class);
		
		PtReservationHisDTO2 dto = new PtReservationHisDTO2();
		dto.setAdminNo(sessionAdminNo);
		dto.setReservationDate(reservationDate);
		
		List<PtReservationHisDTO3> reserDto = admin.doTrainerPtCheck(dto);
		System.out.println(reserDto);
		Gson gson = new Gson();
		String reserJson = gson.toJson(reserDto);
		
		PrintWriter out = response.getWriter();
		out.println(reserJson);
	}


	@Override
	public void goPtCheckInfo(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.getRequestDispatcher("admin-pt-check-info.jsp").forward(request, response);
		
	}


	//

	// 회원 스케쥴 조회하기
	@Override
	public void getPtCheck(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		SqlSession sql = sqlSessionFactory.openSession(true); //db
		AdminMapper admin = sql.getMapper(AdminMapper.class);
		
		request.getRequestDispatcher("admin-pt-check.jsp").forward(request, response);
	}



	@Override
	public void doUserAccount(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		SqlSession sql = sqlSessionFactory.openSession(true);
		AdminMapper admin = sql.getMapper(AdminMapper.class);
		
		List<UserAccountDTO> list = admin.doUserAccount();
		
	
		sql.close();
		request.setAttribute("list", list);
		request.getRequestDispatcher("admin-user-find.jsp").forward(request, response);
		
	}


	@Override
	public void doPtCheck(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		
	}

	private static final int PAGE_SIZE = 10;
	@Override
	public void select1(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String pageParam = request.getParameter("page");
        int currentPage = (pageParam != null) ? Integer.parseInt(pageParam) : 1;

        int startRow = (currentPage - 1) * PAGE_SIZE;
        int endRow = currentPage * PAGE_SIZE;
        
        PageVo query = new PageVo(startRow, endRow);
		
		SqlSession sql = sqlSessionFactory.openSession(true);
		AdminMapper admin = sql.getMapper(AdminMapper.class);
		
		int totalRecords = admin.countUsers();
        List<UserAccountDTO> list = admin.selectUsers(query);
        sql.close();
        
        int totalPages = (int) Math.ceil((double) totalRecords / PAGE_SIZE);

        request.setAttribute("list1", list);
        request.setAttribute("currentPage", currentPage);
        request.setAttribute("totalPages", totalPages);
		request.getRequestDispatcher("admin-user-find.jsp").forward(request, response);
	}


	@Override
	public void select2(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String pageParam = request.getParameter("page");
        int currentPage = (pageParam != null) ? Integer.parseInt(pageParam) : 1;

        int startRow = (currentPage - 1) * PAGE_SIZE;
        int endRow = currentPage * PAGE_SIZE;
        
        PageVo query = new PageVo(startRow, endRow);
		
		SqlSession sql = sqlSessionFactory.openSession(true);
		AdminMapper admin = sql.getMapper(AdminMapper.class);
		
		int totalRecords = admin.countUsers();
        List<UserAccountDTO> list = admin.select2(query);
        sql.close();
        
        int totalPages = (int) Math.ceil((double) totalRecords / PAGE_SIZE);

        request.setAttribute("list2", list);
        request.setAttribute("currentPage", currentPage);
        request.setAttribute("totalPages", totalPages);
		request.getRequestDispatcher("admin-user-find.jsp").forward(request, response);
	}


	@Override
	public void select3(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String pageParam = request.getParameter("page");
        int currentPage = (pageParam != null) ? Integer.parseInt(pageParam) : 1;

        int startRow = (currentPage - 1) * PAGE_SIZE;
        int endRow = currentPage * PAGE_SIZE;
        
        PageVo query = new PageVo(startRow, endRow);
		
		SqlSession sql = sqlSessionFactory.openSession(true);
		AdminMapper admin = sql.getMapper(AdminMapper.class);
		
		int totalRecords = admin.countPtUsers();
        List<UserAccountDTO> list = admin.select3(query);
        sql.close();
        
        int totalPages = (int) Math.ceil((double) totalRecords / PAGE_SIZE);

        request.setAttribute("list3", list);
        request.setAttribute("currentPage", currentPage);
        request.setAttribute("totalPages", totalPages);
		request.getRequestDispatcher("admin-user-find.jsp").forward(request, response);
	}


	@Override
	public void modiProg(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		int sessionAdminNo = (int)request.getSession().getAttribute("sessionAdminNo"); 
		String reservationDate = request.getParameter("date"); // 클릭한 날짜값
		
	
		
		
		
	}


	@Override
	public void ptReservationCancel(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		int hisNo = Integer.parseInt(request.getParameter("hisNo"));
		
		SqlSession sql = sqlSessionFactory.openSession(true);
		AdminMapper admin = sql.getMapper(AdminMapper.class);
		int result = admin.ptReservationCancel(hisNo);
		sql.close();
		
		response.sendRedirect("/PHGYM/admin/trainer-pt-check.admin");
	}


	@Override
	public void getList(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
	}


	@Override
	public void regist(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
	}


	@Override
	public void getContent(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		
	}


	@Override
	public void delete(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
	}
}
