package com.phgym.mypage.service;

import java.io.IOException;
import java.io.PrintWriter;
import java.time.LocalDate;
import java.time.LocalDateTime;
import java.time.LocalTime;
import java.time.format.DateTimeFormatter;
import java.util.ArrayList;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.google.gson.Gson;
import com.phgym.mypage.model.CheckinHisDTO;
import com.phgym.mypage.model.CheckinListDTO;
import com.phgym.mypage.model.MembershipPayHisDTO;
import com.phgym.mypage.model.MypageMapper;
import com.phgym.mypage.model.MypageQuery;
import com.phgym.mypage.model.MypageUserInfoDTO;
import com.phgym.mypage.model.PtReservationDTO;
import com.phgym.mypage.model.PtReservationDTO2;
import com.phgym.mypage.model.PtReservationHisDTO;
import com.phgym.mypage.util.MypageStatisticsUtil;
import com.phgym.util.mybatis.MybatisUtil;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

public class MypageServiceImpl implements MypageService {
	
	private SqlSessionFactory sqlSessionFactory = MybatisUtil.getSqlSessionFactory();
	private static final int PAGE_SIZE = 5; // 페이지당 항목 수

	@Override
	public void doCheckin(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int sessionUserNo = (int)request.getSession().getAttribute("sessionUserNo");
		
		SqlSession sql = sqlSessionFactory.openSession(true);
		MypageMapper mypage = sql.getMapper(MypageMapper.class);
		mypage.doCheckin(sessionUserNo);
		sql.close();
		
		request.getSession().setAttribute("confettiMsg", "Y");
		response.sendRedirect("/PHGYM/mypage/checkin.mypage");
	}

	@Override
	public void checkCheckin(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		int sessionUserNo = (int)request.getSession().getAttribute("sessionUserNo");
		
		SqlSession sql = sqlSessionFactory.openSession(true);
		MypageMapper mypage = sql.getMapper(MypageMapper.class);
		int cnt = mypage.checkCheckin(sessionUserNo);
		if(cnt != 0) {
			request.setAttribute("msg", "Y"); //출석완료
		}
		
		List<CheckinHisDTO> list = mypage.getCheckinList(sessionUserNo);
		List<LocalDate> dates = new ArrayList<>();
		for(CheckinHisDTO dto : list) {
			dates.add(dto.getCheckinDate().toLocalDate());
		}
		request.setAttribute("dates", dates);
		sql.close();
		
		request.getRequestDispatcher("mypage-checkin.jsp").forward(request, response);
	}

	@Override
	public void doTransfer(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		int sessionUserNo = (int)request.getSession().getAttribute("sessionUserNo");
		int userNo = Integer.parseInt(request.getParameter("userNo"));
		int membershipPayNo = Integer.parseInt(request.getParameter("membershipPayNo"));
		
		SqlSession sql = sqlSessionFactory.openSession(true);
		MypageMapper mypage = sql.getMapper(MypageMapper.class);
		
		//회원 유무 기능
		MypageUserInfoDTO userInfoDto = mypage.checkUserInfo(userNo);
		if(userInfoDto == null) {
			System.out.println("===checkUserInfo fail===");
			request.getSession().setAttribute("checkUserInfoMsg", "false");
			response.sendRedirect("/PHGYM/mypage/transfer.mypage");
			return;
		}
		
		//회원권 양도 기능
		MembershipPayHisDTO memberShipHisdto = new MembershipPayHisDTO();
		memberShipHisdto.setMembershipPayNo(membershipPayNo);
		memberShipHisdto.setUserNo(sessionUserNo);
		
		mypage.updateRemarkTransferState(memberShipHisdto);
		LocalDate dt = mypage.selectEndDate(membershipPayNo);
		
		memberShipHisdto = new MembershipPayHisDTO();
		memberShipHisdto.setUserNo(userNo);
		memberShipHisdto.setMembershipPayNo(membershipPayNo);
		memberShipHisdto.setEndDate(dt);
		
		int result = mypage.doTransfer(memberShipHisdto);
		if(result == 1) {
			System.out.println("===doTransfer success===");
			request.getSession().setAttribute("doTransferMsg", "true");
		} else {
			System.out.println("===doTransfer fail===");
		}
		sql.close();
		
		response.sendRedirect("/PHGYM/mypage/transfer.mypage");
	}

	@Override
	public void checkTransfer(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		int sessionUserNo = (int)request.getSession().getAttribute("sessionUserNo");
		
		SqlSession sql = sqlSessionFactory.openSession(true);
		MypageMapper mypage = sql.getMapper(MypageMapper.class);
		List<MembershipPayHisDTO> list = mypage.checkTransfer(sessionUserNo);
		sql.close();
		
		request.setAttribute("list", list);
		request.getRequestDispatcher("mypage-transfer.jsp").forward(request, response);
	}

	@Override
	public void statistics(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		int sessionUserNo = (int)request.getSession().getAttribute("sessionUserNo");
		
		SqlSession sql = sqlSessionFactory.openSession(true);
		MypageMapper mypage = sql.getMapper(MypageMapper.class);
		
		//페이징
		String pageParam = request.getParameter("page");
        int currentPage = (pageParam != null) ? Integer.parseInt(pageParam) : 1;
		int startRow = (currentPage - 1) * PAGE_SIZE;
        int endRow = currentPage * PAGE_SIZE;
        
        MypageQuery query = new MypageQuery(startRow, endRow, sessionUserNo);
        int totalRecords  = mypage.countCheckinList(sessionUserNo);
        List<CheckinHisDTO> checkinHisList = mypage.selectCheckinList(query);
        List<CheckinListDTO> checkinList = new ArrayList<>();
        for(CheckinHisDTO checkinHisDTO : checkinHisList) {
			CheckinListDTO checkinListDTO = new CheckinListDTO();
			checkinListDTO.setNo(checkinHisDTO.getRn());
			checkinListDTO.setCheckinDate(checkinHisDTO.getCheckinDate().toLocalDate());
			checkinListDTO.setCheckinTime(checkinHisDTO.getCheckinDate().toLocalTime());
			checkinList.add(checkinListDTO);
		}
        
        int totalPages = (int) Math.ceil((double) totalRecords / PAGE_SIZE);
        
        List<CheckinHisDTO> checkinHisList2 = mypage.getCheckinList(sessionUserNo);
        MypageStatisticsUtil util = new MypageStatisticsUtil();
		//요일별 출석률 가져오기
		double[] dayPercent = util.dayPercent(checkinHisList2);
		
		//시간별 출석률 가져오기
		double[] timePercnet = util.timePercnet(checkinHisList2);
		
		sql.close();
				
		request.setAttribute("checkinList", checkinList);
		request.setAttribute("currentPage", currentPage);
        request.setAttribute("totalPages", totalPages);
		
		request.setAttribute("dayPercent", dayPercent);
		request.setAttribute("timePercnet", timePercnet);
		request.getRequestDispatcher("mypage-statistics.jsp").forward(request, response);
	}

	@Override
	public void reservationTrainer(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		int sessionUserNo = (int)request.getSession().getAttribute("sessionUserNo");
		
		SqlSession sql = sqlSessionFactory.openSession(true);
		MypageMapper mypage = sql.getMapper(MypageMapper.class);
		int totalPtCnt = mypage.getTotalPtCnt(sessionUserNo);
		System.out.println("totalPtCnt = " + totalPtCnt);
		int didPtCnt = mypage.getDidPtCnt(sessionUserNo);
		System.out.println("didPtCnt = " + didPtCnt);
		int remainingPtCnt = totalPtCnt - didPtCnt;
		
		request.setAttribute("remainingPtCnt", remainingPtCnt);
		request.getRequestDispatcher("mypage-reservation-trainer.jsp").forward(request, response);
	}

	@Override
	public void reservationDate(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		int adminNo = Integer.parseInt(request.getParameter("adminNo"));
		
		request.setAttribute("adminNo", adminNo);
		request.getRequestDispatcher("mypage-reservation-date.jsp").forward(request, response);
	}

	//시간예약화면로직
	@Override
	public void reservationTime(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		int adminNo = Integer.parseInt(request.getParameter("adminNo"));
		String date = request.getParameter("date");
		
		 // 날짜 형식을 정의
        DateTimeFormatter dateFormatter = DateTimeFormatter.ofPattern("yyyy-MM-dd");
        // 문자열을 LocalDate로 변환
        LocalDate localDate = LocalDate.parse(date, dateFormatter);
        // LocalDate를 LocalDateTime으로 변환 (시간 부분은 00:00:00으로 설정됨)
        LocalDateTime localDateTime = localDate.atStartOfDay();
        
        PtReservationHisDTO dto = new PtReservationHisDTO();
        dto.setAdminNo(adminNo);
        dto.setReservationDate(localDateTime);
        
        SqlSession sql = sqlSessionFactory.openSession(true);
		MypageMapper mypage = sql.getMapper(MypageMapper.class);
		List<PtReservationHisDTO> list = mypage.getTimeList(dto);
		System.out.println(list.toString());
		sql.close();
		
		List<Integer> times = new ArrayList<>();
		for(PtReservationHisDTO ptReservationHisDto : list) {
			times.add(ptReservationHisDto.getReservationDate().toLocalTime().getHour());
		}
		
		PrintWriter out = response.getWriter();
		out.println(times);
	}

	//예약로직
	@Override
	public void doPtReservation(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		int sessionUserNo = (int)request.getSession().getAttribute("sessionUserNo");
		int adminNo = Integer.parseInt(request.getParameter("adminNo"));
		String date = request.getParameter("date");
		String[] split = date.split("-");
		int hour = Integer.parseInt(request.getParameter("hour"));
		LocalDateTime dateTime = LocalDateTime.of(Integer.parseInt(split[0]), Integer.parseInt(split[1]), Integer.parseInt(split[2]), hour, 0);
		
		PtReservationHisDTO dto = new PtReservationHisDTO();
		dto.setUserNo(sessionUserNo);
		dto.setAdminNo(adminNo);
		dto.setReservationDate(dateTime);
		
		SqlSession sql = sqlSessionFactory.openSession(true);
		MypageMapper mypage = sql.getMapper(MypageMapper.class);
		int result = mypage.doPtReservation(dto);
		if(result == 1) {
			System.out.println("===doPtReservation success===");
			request.getSession().setAttribute("doPtReservationMsg", "true");
		} else {
			System.out.println("===doPtReservation fail===");
		}
		sql.close();
		
		request.getSession().removeAttribute("adminNo");
		request.getSession().removeAttribute("year");
		request.getSession().removeAttribute("month");
		request.getSession().removeAttribute("day");
		
		request.getSession().setAttribute("ptReservationResult", result);
		response.sendRedirect("/PHGYM/mypage/reservationTrainer.mypage");
	}

	@Override
	public void userInfo(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		int sessionUserNo = (int)request.getSession().getAttribute("sessionUserNo");
		
		SqlSession sql = sqlSessionFactory.openSession(true);
		MypageMapper mypage = sql.getMapper(MypageMapper.class);
		MypageUserInfoDTO dto = mypage.getUserInfo(sessionUserNo);
		List<MembershipPayHisDTO> list = mypage.getMembershipList(sessionUserNo);
		
		//페이징
		String pageParam = request.getParameter("page");
        int currentPage = (pageParam != null) ? Integer.parseInt(pageParam) : 1;
		int startRow = (currentPage - 1) * PAGE_SIZE;
        int endRow = currentPage * PAGE_SIZE;
        
        MypageQuery query = new MypageQuery(startRow, endRow, sessionUserNo);
        int totalRecords  = mypage.countPtReservationList(sessionUserNo);
        List<PtReservationDTO> list2 = mypage.selectPtReservationList(query);
        sql.close();

        List<PtReservationDTO2> list3 = new ArrayList<>();
		for(PtReservationDTO dto2 : list2) {
			PtReservationDTO2 dto3 = new PtReservationDTO2();
			dto3.setPtReservationHisNo(dto2.getPtReservationHisNo());
			dto3.setReservationDate(dto2.getReservationDate().toLocalDate());
			dto3.setReservationTime(dto2.getReservationDate().toLocalTime());
			dto3.setAdminName(dto2.getAdminName());
			dto3.setProgressStatus(dto2.getProgressStatus());
			list3.add(dto3);
		}
        
        int totalPages = (int) Math.ceil((double) totalRecords / PAGE_SIZE);
        
        request.setAttribute("list3", list3);
        request.setAttribute("currentPage", currentPage);
        request.setAttribute("totalPages", totalPages);
		//
		
		request.setAttribute("list", list);
		request.setAttribute("dto", dto);
		request.getRequestDispatcher("mypage-userInfo.jsp").forward(request, response);
	}

	@Override
	public void userInfoContent(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		int sessionUserNo = (int)request.getSession().getAttribute("sessionUserNo");
		
		SqlSession sql = sqlSessionFactory.openSession(true);
		MypageMapper mypage = sql.getMapper(MypageMapper.class);
		MypageUserInfoDTO dto = mypage.getUserInfo(sessionUserNo);
		sql.close();
		
		request.setAttribute("dto", dto);
		request.getRequestDispatcher("mypage-userInfoContent.jsp").forward(request, response);
	}

	@Override
	public void userInfoUpdate(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		int sessionUserNo = (int)request.getSession().getAttribute("sessionUserNo");
		String userPw = request.getParameter("userPw");
		String userName = request.getParameter("userName");
		String userGender = request.getParameter("userGender");
		String userPhone = request.getParameter("userPhone");
		String userEmail = request.getParameter("userEmail");
		String userAddress = request.getParameter("userAddress");
		
		MypageUserInfoDTO dto = new MypageUserInfoDTO();
		dto.setUserNo(sessionUserNo);
		dto.setUserPw(userPw);
		dto.setUserName(userName);
		dto.setUserGender(userGender);
		dto.setUserPhone(userPhone);
		dto.setUserEmail(userEmail);
		dto.setUserAddress(userAddress);
		
		SqlSession sql = sqlSessionFactory.openSession(true);
		MypageMapper mypage = sql.getMapper(MypageMapper.class);
		mypage.userInfoUpdate(dto);
		
		request.getSession().setAttribute("msg", "Y");
		response.sendRedirect("/PHGYM/mypage/userInfo.mypage");
	}
}
