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
import jakarta.websocket.Session;

public class JoinServiceImpl implements JoinService {

	private SqlSessionFactory sqlSessionFactory = MybatisUtil.getSqlSessionFactory();

	@Override
	public void adminPwFind(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String adminid = request.getParameter("adminId");
		String adminemail = request.getParameter("adminEmail");
		String adminphone = request.getParameter("adminPhone");
		System.out.println("adminid = " + adminid);
		System.out.println("email = " + adminemail);
		System.out.println("number = " + adminphone);

		AdminInfoDTO dto = new AdminInfoDTO();

		dto.setAdminId(adminid);
		dto.setAdminEmail(adminemail);
		dto.setAdminPhone(adminphone);

		SqlSession sql = sqlSessionFactory.openSession();
		JoinMapper mapper = sql.getMapper(JoinMapper.class);
		String adminPwFind = mapper.adminPwFind(dto);
		
		System.out.println("adminPwFind = " + adminPwFind);
		if(adminPwFind == null) {
			adminPwFind = "fail";
			request.setAttribute("adminPwFind", adminPwFind);
			request.getRequestDispatcher("main-find-adminpw.jsp").forward(request, response);
		} else {
			request.setAttribute("adminPwFind", adminPwFind);
			request.getRequestDispatcher("main-login-admin.jsp").forward(request, response);
			
			sql.close();
		}
		

		request.setAttribute("adminPwFind", adminPwFind);
		request.getRequestDispatcher("main-login-admin.jsp").forward(request, response);
	}

	@Override
	public void userPwFind(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		String userid = request.getParameter("userId");
		String useremail = request.getParameter("userEmail");
		String userphone = request.getParameter("userPhone");
		System.out.println("userid = " + userid);
		System.out.println("email = " + useremail);
		System.out.println("number = " + userphone);

		UserInfoDTO dto = new UserInfoDTO();
		dto.setUserId(userid);
		dto.setUserEmail(useremail);
		dto.setUserPhone(userphone);

		SqlSession sql = sqlSessionFactory.openSession();
		JoinMapper mapper = sql.getMapper(JoinMapper.class);
		String userPwFind = mapper.userPwFind(dto);
		
		
		if(userPwFind == null) {
			userPwFind = "fail";
			request.setAttribute("userPwFind", userPwFind);
			request.getRequestDispatcher("main-find-userpw.jsp").forward(request, response);
		} else {
			request.setAttribute("userPwFind", userPwFind);
			request.getRequestDispatcher("main-login-user.jsp").forward(request, response);
			
			sql.close();
		}

	}

	@Override
	public void adminIdFind(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		String adminName = request.getParameter("adminName");
		String adminEmail = request.getParameter("adminEmail");
		String adminPhone = request.getParameter("adminPhone");

		AdminInfoDTO dto = new AdminInfoDTO();

		dto.setAdminName(adminName);
		dto.setAdminEmail(adminEmail);
		dto.setAdminPhone(adminPhone);
		
		SqlSession sql = sqlSessionFactory.openSession();
		JoinMapper mapper = sql.getMapper(JoinMapper.class);
		String adminIdFind = mapper.adminIdFind(dto);
		System.out.println("adminIdFind = " + adminIdFind);
		
		if(adminIdFind == null) {
			adminIdFind = "fail";
			request.setAttribute("adminIdFind", adminIdFind);
			request.getRequestDispatcher("main-find-adminid.jsp").forward(request, response);
			
		} else {
			request.setAttribute("adminIdFind", adminIdFind);
			request.getRequestDispatcher("main-login-admin.jsp").forward(request, response);
			
			sql.close();
		}
		
	}

	@Override
	public void userIdFind(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		String username = request.getParameter("userName");
		String useremail = request.getParameter("userEmail");
		String userphone = request.getParameter("userPhone");
		
		UserInfoDTO dto = new UserInfoDTO();
		
		dto.setUserName(username);
		dto.setUserEmail(useremail);
		dto.setUserPhone(userphone);
		
		SqlSession sql = sqlSessionFactory.openSession();
		JoinMapper mapper = sql.getMapper(JoinMapper.class);
		String userIdFind = mapper.userIdFind(dto);
		
		if(userIdFind == null) {
			userIdFind = "fail";
			request.setAttribute("userIdFind", userIdFind);
			request.getRequestDispatcher("main-find-userid.jsp").forward(request, response);
			
		} else {
			request.setAttribute("userIdFind", userIdFind);
			request.getRequestDispatcher("main-login-user.jsp").forward(request, response);
			
			sql.close();
		}
		
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
			HttpSession session = request.getSession();
			session.setAttribute("sessionAdminNo", adminLogin.getAdminNo());
			session.setAttribute("sessionAdminId", adminLogin.getAdminId());
			session.setAttribute("sessionAdminName", adminLogin.getAdminName());
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
			HttpSession session = request.getSession();
			session.setAttribute("sessionUserNo",userLogin.getUserNo());
			session.setAttribute("sessionUserId", userLogin.getUserId());
			session.setAttribute("sessionUserName", userLogin.getUserName());

			request.getRequestDispatcher("/main/main-userhome.jsp").forward(request, response);
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
	    
	    int idCheckResult = mapper.checkAdminIdExists(adminid);
	    
	    if(idCheckResult == 1) { // 아이디 중복
	        sql.close();
	        request.setAttribute("msg", "이미 존재하는 회원입니다.");
	        request.getRequestDispatcher("main-join-admin.jsp").forward(request, response);
	    } else { // 중복 x - 회원가입 진행
	        int userResult = mapper.adminJoin(dto);
	        sql.close();
	        
	        if(userResult == 1) { // 회원가입 성공
	            HttpSession session = request.getSession();
	            session.setAttribute("user_no", dto.getAdminNo());
	            request.getRequestDispatcher("main-login-admin.jsp").forward(request, response);
	            
	        } else { // 회원가입 실패
	            request.setAttribute("msg", "회원가입에 실패했습니다. 다시 시도해주세요.");
	            request.getRequestDispatcher("main-join-admin.jsp").forward(request, response);
	        }
	    }
	}

	@Override
	public void adminIdCheck(HttpServletRequest request, HttpServletResponse response)
	        throws ServletException, IOException {
	    
	    String adminId = request.getParameter("adminId");
	    
	    SqlSession sql = sqlSessionFactory.openSession(true);
	    JoinMapper mapper = sql.getMapper(JoinMapper.class);
	    
	    UserInfoDTO adminIdCheck = mapper.userIdCheck(adminId);
	    
	    response.setContentType("text/plain");
	    response.setCharacterEncoding("UTF-8");
	    
	    if (adminIdCheck == null) { // 회원가입 가능
	        response.getWriter().write("Y");
	    } else { // 회원가입 불가능
	        response.getWriter().write("N");
	    }
	    
	    sql.close();
	}

	@Override
	public void userJoin(HttpServletRequest request, HttpServletResponse response)
	        throws ServletException, IOException {
	    
	    String username = request.getParameter("userName");
	    LocalDate userbirth = LocalDate.parse(request.getParameter("userBirth"), DateTimeFormatter.ISO_DATE);
	    String userphone = request.getParameter("userPhone");
	    String usergender = request.getParameter("userGender");
	    String userid = request.getParameter("userId");
	    String userpw = request.getParameter("userPw");
	    String userpwre = request.getParameter("userPwre");
	    String useraddress = request.getParameter("userAddress");
	    String useremail = request.getParameter("userEmail");
	    
	    UserInfoDTO dto = new UserInfoDTO();
	    
	    dto.setUserName(username);
	    dto.setUserBirth(userbirth);
	    dto.setUserPhone(userphone);
	    dto.setUserGender(usergender);
	    dto.setUserId(userid);
	    dto.setUserPw(userpw);
	    dto.setUserAddress(useraddress);
	    dto.setUserEmail(useremail);
	    
	    System.out.println(dto);
	    
	    SqlSession sql = sqlSessionFactory.openSession(true);
	    JoinMapper mapper = sql.getMapper(JoinMapper.class);
	    
	    // 아이디 중복 검사
	    int idCheckResult = mapper.checkUserIdExists(userid);
	    
	    if(idCheckResult == 1) { // 아이디 중복
	        sql.close();
	        request.setAttribute("msg", "이미 존재하는 회원입니다.");
	        request.getRequestDispatcher("main-join-user.jsp").forward(request, response);
	    } else { // 중복 x - 회원가입 진행
	        int userResult = mapper.userJoin(dto);
	        sql.close();
	        
	        if(userResult == 1) { // 회원가입 성공
	            HttpSession session = request.getSession();
	            session.setAttribute("user_no", dto.getUserNo());
	            request.getRequestDispatcher("main-login-user.jsp").forward(request, response);
	        } else { // 회원가입 실패
	            request.setAttribute("msg", "회원가입에 실패했습니다. 다시 시도해주세요.");
	            request.getRequestDispatcher("main-join-user.jsp").forward(request, response);
	        }
	    }
	}

	@Override
	public void userIdCheck(HttpServletRequest request, HttpServletResponse response)
	        throws ServletException, IOException {
	    
	    String userId = request.getParameter("userId");
	    
	    SqlSession sql = sqlSessionFactory.openSession(true);
	    JoinMapper mapper = sql.getMapper(JoinMapper.class);
	    
	    UserInfoDTO userIdCheck = mapper.userIdCheck(userId);
	    
	    response.setContentType("text/plain");
	    response.setCharacterEncoding("UTF-8");
	    
	    if (userIdCheck == null) { // 회원가입 가능
	        response.getWriter().write("Y");
	    } else { // 회원가입 불가능
	        response.getWriter().write("N");
	    }
	    
	    sql.close();
	}

	@Override
	public void logoutUser(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		request.getSession().removeAttribute("sessionUserNo");
		request.getSession().removeAttribute("sessionUserName");
		request.getSession().removeAttribute("sessionUserId");
		
		response.sendRedirect("/PHGYM/main/userhome.main");
		
	}

	@Override
	public void ChangeAdmin(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		request.getRequestDispatcher("main-login-admin.jsp").forward(request, response);
	}
	
	public void logoutAdmin(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		request.getSession().removeAttribute("sessionAdminNo");
		request.getSession().removeAttribute("sessionAdminId");
		request.getSession().removeAttribute("sessionAdminName");
		
		response.sendRedirect("/PHGYM/main/userhome.main");
	}
	
	public void findAdminId(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		request.getRequestDispatcher("main-find-adminid.jsp").forward(request, response);
		
	}

	@Override
	public void findAdminPw(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		request.getRequestDispatcher("main-find-adminpw.jsp").forward(request, response);
		
	}

	@Override
	public void findUserId(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		request.getRequestDispatcher("main-find-userid.jsp").forward(request, response);
		
	}

	@Override
	public void findUserPw(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		request.getRequestDispatcher("main-find-userpw.jsp").forward(request, response);
		
	}

	@Override
	public void LoginPage(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		request.getRequestDispatcher("main-login-user.jsp").forward(request, response);
		
	}

	@Override
	public void JoinPage(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		request.getRequestDispatcher("main-join-user.jsp").forward(request, response);
		
	}

	@Override
	public void adminJoinPage(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		request.getRequestDispatcher("main-join-admin.jsp").forward(request, response);
		
	}

}
