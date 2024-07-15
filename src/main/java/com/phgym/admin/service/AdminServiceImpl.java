package com.phgym.admin.service;

import org.apache.ibatis.session.SqlSessionFactory;

import com.phgym.util.mybatis.MybatisUtil;

public class AdminServiceImpl implements AdminService {
	
	private SqlSessionFactory sqlSessionFactory = MybatisUtil.getSqlSessionFactory();

	//코드 작성
}
