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
import com.phgym.mypage.model.MypageUserInfoDTO;
import com.phgym.mypage.model.PtReservationHisDTO;
import com.phgym.mypage.util.MypageStatisticsUtil;
import com.phgym.util.mybatis.MybatisUtil;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

public class MypageServiceImpl implements MypageService {
	
	private SqlSessionFactory sqlSessionFactory = MybatisUtil.getSqlSessionFactory();

	@Override
	public void doCheckin(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int sessionUserNo = (int)request.getSession().getAttribute("sessionUserNo");
		
		SqlSession sql = sqlSessionFactory.openSession(true);
		MypageMapper mypage = sql.getMapper(MypageMapper.class);
		mypage.doCheckin(sessionUserNo);
		sql.close();
		
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
		
		//출석내역 가져오기
		List<CheckinListDTO> checkinList = new ArrayList<>();
		List<CheckinHisDTO> checkinHisList = mypage.getCheckinList(sessionUserNo);
		int i = 1;
		for(CheckinHisDTO checkinHisDTO : checkinHisList) {
			CheckinListDTO checkinListDTO = new CheckinListDTO();
			checkinListDTO.setNo(i++);
			checkinListDTO.setCheckinDate(checkinHisDTO.getCheckinDate().toLocalDate());
			checkinListDTO.setCheckinTime(checkinHisDTO.getCheckinDate().toLocalTime());
			checkinList.add(checkinListDTO);
		}
		
		MypageStatisticsUtil util = new MypageStatisticsUtil();
		//요일별 출석률 가져오기
		double[] dayPercent = util.dayPercent(checkinHisList);
		
		//시간별 출석률 가져오기
		double[] timePercnet = util.timePercnet(checkinHisList);
		
		sql.close();
				
		request.setAttribute("timePercnet", timePercnet);
		request.setAttribute("dayPercent", dayPercent);
		request.setAttribute("checkinList", checkinList);
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
}
