package com.phgym.join.service;

import java.io.IOException;
import java.time.LocalDate;
import java.time.format.DateTimeFormatter;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.phgym.join.model.AdminInfoDTO;
import com.phgym.join.model.JoinMapper;
import com.phgym.join.model.UserInfoDTO;
import com.phgym.util.mybatis.MybatisUtil;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

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

		AdminInfoDTO dto = new AdminInfoDTO();

		dto.setAdminId(adminid);
		dto.setAdminEmail(email);
		dto.setAdminPhone(number);

		SqlSession sql = sqlSessionFactory.openSession();
		JoinMapper mapper = sql.getMapper(JoinMapper.class);
		String adminPw = mapper.adminPwFind(dto);
		sql.close();

		request.setAttribute("adminPwFind", adminPw);
		request.getRequestDispatcher("main-find-adminpw.jsp").forward(request, response);
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

		SqlSession sql = sqlSessionFactory.openSession();
		JoinMapper mapper = sql.getMapper(JoinMapper.class);
		String userPw = mapper.userPwFind(dto);
		sql.close();
		
		request.setAttribute("userPwFind", userPw);
		request.getRequestDispatcher("main-find-userpw.jsp").forward(request, response);

	}

	@Override
	public void adminIdFind(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		String adminName = request.getParameter("adminName");
		String email = request.getParameter("email");
		String number = request.getParameter("number");

		AdminInfoDTO dto = new AdminInfoDTO();

		dto.setAdminName(adminName);
		dto.setAdminEmail(email);
		dto.setAdminPhone(number);
		
		SqlSession sql = sqlSessionFactory.openSession();
		JoinMapper mapper = sql.getMapper(JoinMapper.class);
		String adminId = mapper.adminIdFind(dto);
		sql.close();
		
		request.setAttribute("adminIdFind", adminId);
		request.getRequestDispatcher("main-find-adminid.jsp").forward(request, response);
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
		
		SqlSession sql = sqlSessionFactory.openSession();
		JoinMapper mapper = sql.getMapper(JoinMapper.class);
		String userId = mapper.userIdFind(dto);
		sql.close();
		
		request.setAttribute("userIdFind", userId);
		request.getRequestDispatcher("main-find-userid.jsp").forward(request, response);
		
	}

	@Override
	public void adminLogin(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		String adminid = request.getParameter("adminId");
		String adminpw = request.getParameter("adminPw");
		
		AdminInfoDTO dto = new AdminInfoDTO();		
		
		dto.setAdminId(adminid);
		dto.setAdminPw(adminpw);
		
		SqlSession sql = sqlSessionFactory.openSession(true);
		JoinMapper mapper = sql.getMapper(JoinMapper.class);
		AdminInfoDTO adminLogin = mapper.adminLogin(dto);
		sql.close();
		
		if(adminLogin == null) { //로그인 실패
			request.setAttribute("msg", "아이디 또는 비밀번호를 확인하세요.");
			//request.setAttribute("flag", adminLogin);
			//response.sendRedirect("/PHGYM/join/main-login-admin.jsp"); //수정필요
			request.getRequestDispatcher("main-login-admin.jsp").forward(request, response);;
			
			
		} else { //로그인 성공
			request.setAttribute("adminLogin", adminLogin); // 1회용
			request.getSession().setAttribute("adminName", adminLogin.getAdminName()); //필요한 세션값은 혜주님과 이야기 해보고 추가하기
			request.getRequestDispatcher("/admin/admin-account.jsp").forward(request, response);
		}
		
	}

	@Override
	public void userLogin(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		String userid = request.getParameter("userId");
		String userpw = request.getParameter("userPw");
		
		UserInfoDTO dto = new UserInfoDTO();
		
		dto.setUserId(userid);
		dto.setUserPw(userpw);
		
		SqlSession sql = sqlSessionFactory.openSession(true);
		JoinMapper mapper = sql.getMapper(JoinMapper.class);
		UserInfoDTO userLogin = mapper.userLogin(dto);
		sql.close();
		
		if(userLogin == null) { // 로그인 실패
			request.setAttribute("msg", "아이디 또는 비밀번호를 확인하세요.");
			request.getRequestDispatcher("main-login-user.jsp").forward(request, response);
			
		} else { // 로그인 성공
			request.setAttribute("userLogin", userLogin);
			request.getSession().setAttribute("userName", userLogin.getName());
			request.getRequestDispatcher("/main/main-userhome.jsp").forward(request, response);
			
			HttpSession session = request.getSession();
			session.setAttribute("sessionUserId", dto.getUserId());
			session.setAttribute("sessionUserName", dto.getName());
			session.setAttribute("sessionUserNo",dto.getUserNo());
		}
		
	}

	@Override
	public void adminJoin(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		String adminname = request.getParameter("adminName");
		LocalDate adminbirth = LocalDate.parse(request.getParameter("adminBirth"), DateTimeFormatter.ISO_DATE);
		String adminphone = request.getParameter("adminPhone");
		String adminid = request.getParameter("adminId");
		String adminpw = request.getParameter("adminPw");
		String admingender = request.getParameter("adminGender");
		String adminpwre = request.getParameter("adminPwre");
		LocalDate adminhiredate = LocalDate.parse(request.getParameter("adminHireDate"), DateTimeFormatter.ISO_DATE);
		String adminemail = request.getParameter("adminEmail");
		String adminCareerHis = request.getParameter("adminCareerHis");
		String adminJobTitle = request.getParameter("adminJobTitle");
		
		AdminInfoDTO dto = new AdminInfoDTO();
		
		dto.setAdminName(adminname);
		dto.setAdminBirth(adminbirth);
		dto.setAdminPhone(adminphone);
		dto.setAdminId(adminid);
		dto.setAdminPw(adminpw);
		dto.setAdminHireDate(adminhiredate);
		dto.setAdminEmail(adminemail);
		dto.setAdminGender(admingender);
		dto.setAdminCareerHis(adminCareerHis);
		dto.setAdminJobTitle(adminJobTitle);
		System.out.println(dto);
		
		SqlSession sql = sqlSessionFactory.openSession(true);
		JoinMapper mapper = sql.getMapper(JoinMapper.class);
		int adminResult = mapper.adminJoin(dto);
		System.out.println("adminResult = " + adminResult);
		sql.close();
		
		if(adminResult == 1) { // 아이디중복
			
			request.setAttribute("msg", "이미 존재하는 회원입니다.");
			request.getRequestDispatcher("main-join-admin.jsp").forward(request, response);
			
			HttpSession session = request.getSession();
			session.setAttribute("admin_no",dto.getAdminNo());
			
			
		} else { // 중복 x - 회원가입
			
			response.sendRedirect("main-login-admin.jsp");
			
		}
	}

	@Override
	public void adminIdCheck(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		String adminId = request.getParameter("adminId");
		
		SqlSession sql = sqlSessionFactory.openSession(true);
		JoinMapper mapper = sql.getMapper(JoinMapper.class);
		
		AdminInfoDTO adminIdCheck = mapper.adminIdCheck(adminId);
		System.out.println(adminIdCheck);
		
		if(adminIdCheck == null) { //회원가입 가능
			request.setAttribute("msg", "Y");
		} else { //회원가입 불가능
			request.setAttribute("msg", "N");
		}
		
		request.getRequestDispatcher("main-join-admin.jsp").forward(request, response);
	}
}
