package com.phgym.join.service;

import java.io.IOException;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;
import com.phgym.join.model.AdminJoinDTO;
import com.phgym.join.model.JoinMapper;
import com.phgym.join.model.UserInfoDTO;
import com.phgym.util.mybatis.MybatisUtil;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

public class JoinServiceImpl implements JoinService {

	private SqlSessionFactory sqlSessionFactory = MybatisUtil.getSqlSessionFactory();

	@Override
	public void adminPwFind(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String adminid = request.getParameter("adminid");
		String email = request.getParameter("email");
		String number = request.getParameter("number");
		System.out.println("adminid = " + adminid);
		System.out.println("email = " + email);
		System.out.println("number = " + number);

		AdminJoinDTO dto = new AdminJoinDTO();

		dto.setAdminId(adminid);
		dto.setEmail(email);
		dto.setPhone(number);

		try {
			SqlSession sql = sqlSessionFactory.openSession();
			JoinMapper mapper = sql.getMapper(JoinMapper.class);
			String adminPw = mapper.adminPwFind(dto);

			request.setAttribute("adminPwFind", adminPw);
			request.getRequestDispatcher("main-find-adminpw.jsp").forward(request, response);

		} catch (Exception e) {

			e.printStackTrace();
		}
	}

	@Override
	public void userPwFind(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		String userid = request.getParameter("userid");
		String email = request.getParameter("email");
		String number = request.getParameter("number");
		System.out.println("userid = " + userid);
		System.out.println("email = " + email);
		System.out.println("number = " + number);

		UserInfoDTO dto = new UserInfoDTO();
		dto.setUserId(userid);
		dto.setEmail(email);
		dto.setPhone(number);

		try {
			SqlSession sql = sqlSessionFactory.openSession();
			JoinMapper mapper = sql.getMapper(JoinMapper.class);
			String userPw = mapper.userPwFind(dto);
			System.out.println(userPw);

			request.setAttribute("userPwFind", userPw);
			request.getRequestDispatcher("main-find-userpw.jsp").forward(request, response);

		} catch (Exception e) {

			e.printStackTrace();
		}

	}

	@Override
	public void adminIdFind(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		String adminName = request.getParameter("adminName");
		String email = request.getParameter("email");
		String number = request.getParameter("number");

		AdminJoinDTO dto = new AdminJoinDTO();

		dto.setName(adminName);
		dto.setEmail(email);
		dto.setPhone(number);
		
		try {

			SqlSession sql = sqlSessionFactory.openSession();
			JoinMapper mapper = sql.getMapper(JoinMapper.class);
			String adminId = mapper.adminIdFind(dto);
			
			System.out.println("adminId = " + adminId);
			
			request.setAttribute("adminIdFind", adminId);
			request.getRequestDispatcher("main-find-adminid.jsp").forward(request, response);

		} catch (Exception e) {
			
			e.printStackTrace();
			
		}
	}

	@Override
	public void userIdFind(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		String userName = request.getParameter("userName");
		String email = request.getParameter("email");
		String number = request.getParameter("number");
		
		UserInfoDTO dto = new UserInfoDTO();
		
		dto.setName(userName);
		dto.setEmail(email);
		dto.setPhone(number);
		
		try {
			
			SqlSession sql = sqlSessionFactory.openSession();
			JoinMapper mapper = sql.getMapper(JoinMapper.class);
			String userId = mapper.userIdFind(dto);
			
			request.setAttribute("userIdFind", userId);
			request.getRequestDispatcher("main-find-userid.jsp").forward(request, response);
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
	}

}
