package com.phgym.join.service;

import java.io.IOException;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

public interface JoinService {

	void pwFind(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException;
	
}
