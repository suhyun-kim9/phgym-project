package com.phgym.mypage.service;

import java.io.IOException;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

public interface MypageService {

	public void doCheckin(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException;

	public void checkCheckin(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException;
	
	public void doTransfer(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException;
	
	public void checkTransfer(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException;
	
	public void statistics(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException;

	public void reservationTrainer(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException;

	public void reservationDate(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException;

	public void reservationTime(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException;

	public void doReservation(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException;
}
