package com.phgym.include.filter;

import java.io.IOException;

import jakarta.servlet.Filter;
import jakarta.servlet.FilterChain;
import jakarta.servlet.ServletException;
import jakarta.servlet.ServletRequest;
import jakarta.servlet.ServletResponse;
import jakarta.servlet.annotation.WebFilter;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebFilter("/*")
public class NavFilter implements Filter {

	@Override
	public void doFilter(ServletRequest req, ServletResponse res, FilterChain chain)
			throws IOException, ServletException {
		HttpServletRequest request = (HttpServletRequest)req;
		HttpServletResponse response = (HttpServletResponse)res;
		
		String uri = request.getRequestURI();
		if(uri.equals("/PHGYM/mypage/checkin.mypage")) {
			request.setAttribute("left", "808px");
			request.setAttribute("width", "119px");
		} else if(uri.equals("/PHGYM/mypage/statistics.mypage")) {
			request.setAttribute("left", "808px");
			request.setAttribute("width", "119px");
		} else if(uri.equals("/PHGYM/mypage/reservationTrainer.mypage")) {
			request.setAttribute("left", "808px");
			request.setAttribute("width", "119px");
		} else if(uri.equals("/PHGYM/mypage/transfer.mypage")) {
			request.setAttribute("left", "808px");
			request.setAttribute("width", "119px");
		} else if(uri.equals("/PHGYM/main/map.main")) {
			request.setAttribute("left", "660px");
			request.setAttribute("width", "110px");
		} else if(uri.equals("/PHGYM/main/promotionList.main")) {
			request.setAttribute("left", "357px");
			request.setAttribute("width", "115px");
		} else if(uri.equals("/PHGYM/main/introduction.main")) {
			request.setAttribute("left", "200px");
			request.setAttribute("width", "130px");
		} else if(uri.equals("/PHGYM/board/main_exe_list.board")) {
			request.setAttribute("left", "490px");
			request.setAttribute("width", "150px");
		} else if(uri.equals("/PHGYM/board/main_qna_list.board")) {
			request.setAttribute("left", "490px");
			request.setAttribute("width", "150px");
		} else if(uri.equals("/PHGYM/admin/account.admin")) {
			request.setAttribute("color", "#ee6c4d");
			request.setAttribute("num", 2);
		} else if(uri.equals("/PHGYM/admin/user-find.admin")) {
			request.setAttribute("color", "#ee6c4d");
			request.setAttribute("num", 3);
		} else if(uri.equals("/PHGYM/admin/pt-check.admin")) {
			request.setAttribute("color", "#ee6c4d");
			request.setAttribute("num", 3);
		} else if(uri.equals("/PHGYM/admin/trainer-pt-check.admin")) {
			request.setAttribute("color", "#ee6c4d");
			request.setAttribute("num", 4);
		}
		
		chain.doFilter(request, response);
	}
}
