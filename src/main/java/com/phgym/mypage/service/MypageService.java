package com.phgym.mypage.service;

import java.io.IOException;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

public interface MypageService {

	public void checkin(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException;

	public String checkedin(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException;
}
