package com.phgym.join.service;

import java.io.IOException;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

import com.phgym.join.model.JoinDTO;
import com.phgym.join.model.JoinMapper;
import com.phgym.util.mybatis.MybatisUtil;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

public class JoinServiceImpl implements JoinService {
	
	private SqlSessionFactory sqlSessionFactory = MybatisUtil.getSqlSessionFactory();
	
	@Override
	public void pwFind(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("serviceimpl");
		String adminid = request.getParameter("adminid");
		String email = request.getParameter("email");
		String number = request.getParameter("number");
		System.out.println("adminid = " + adminid);
		System.out.println("email = " + email);
		System.out.println("number = " + number);
		
		JoinDTO dto = new JoinDTO();
		
		try {
			SqlSession sql = sqlSessionFactory.openSession();
			JoinMapper mapper = sql.getMapper(JoinMapper.class);
			String pw = mapper.pwFind();
			
			request.setAttribute("pwFind", pw);
			request.getRequestDispatcher("main-find-adminpw.jsp").forward(request, response);
			
		} catch (Exception e) {
			
			e.printStackTrace();
		}
	}
	
}
