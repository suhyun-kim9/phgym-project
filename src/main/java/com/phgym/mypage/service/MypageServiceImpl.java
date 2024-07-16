package com.phgym.mypage.service;

import java.io.IOException;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.phgym.mypage.model.MypageMapper;
import com.phgym.util.mybatis.MybatisUtil;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

public class MypageServiceImpl implements MypageService {
	
	private SqlSessionFactory sqlSessionFactory = MybatisUtil.getSqlSessionFactory();

	@Override
	public void checkingin(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int userNo = (int)request.getSession().getAttribute("userNo");
		
		SqlSession sql = sqlSessionFactory.openSession(true);
		MypageMapper mypage = sql.getMapper(MypageMapper.class);
		int result = mypage.checkingin(userNo);
		if(result == 1) {
			System.out.println("성공");
		} else {
			System.out.println("실패");
		}
		sql.close();
		
		response.sendRedirect("/PHGYM/mypage/checkin.mypage");
	}

	@Override
	public String checkedin(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		int userNo = (int)request.getSession().getAttribute("userNo");
		
		SqlSession sql = sqlSessionFactory.openSession(true);
		MypageMapper mypage = sql.getMapper(MypageMapper.class);
		int count = mypage.checkedin(userNo);
		String result = "N";
		if(count != 0) {
			result = "Y"; //출석완료
		}
		sql.close();
		
		return result;
	}
}
