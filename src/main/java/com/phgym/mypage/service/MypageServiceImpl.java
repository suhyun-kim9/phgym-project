package com.phgym.mypage.service;

import java.io.IOException;
import java.time.LocalDate;
import java.time.LocalDateTime;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.phgym.mypage.model.MembershipPayHisDTO;
import com.phgym.mypage.model.MypageMapper;
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
		int result = mypage.doCheckin(sessionUserNo);
		if(result == 1) {
			System.out.println("===doCheckin success===");
		} else {
			System.out.println("===doCheckin fail===");
		}
		sql.close();
		
		response.sendRedirect("/PHGYM/mypage/checkin.mypage");
	}

	@Override
	public void checkCheckin(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		int sessionUserNo = (int)request.getSession().getAttribute("sessionUserNo");
		
		SqlSession sql = sqlSessionFactory.openSession(true);
		MypageMapper mypage = sql.getMapper(MypageMapper.class);
		int count = mypage.checkCheckin(sessionUserNo);
		if(count != 0) {
			request.setAttribute("msg", "Y"); //출석완료
		}
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
		mypage.updateRemarkTransferState(sessionUserNo);
		LocalDate dt = mypage.selectEndDate(membershipPayNo);
		
		MembershipPayHisDTO dto = new MembershipPayHisDTO();
		dto.setUserNo(userNo);
		dto.setMembershipPayNo(membershipPayNo);
		dto.setEndDate(dt);
		
		
		int result = mypage.doTransfer(dto);
		if(result == 1) {
			System.out.println("===doTransfer success===");
			//request.getSession().setAttribute("doTransferMsg", "회원권 양도가 완료되었습니다.");
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
		
		request.setAttribute("list", list);
		request.getRequestDispatcher("mypage-transfer.jsp").forward(request, response);
	}
}
