package com.phgym.main.service;

import org.apache.ibatis.session.SqlSessionFactory;

import com.phgym.util.mybatis.MybatisUtil;

public class MainServiceImpl implements MainService {
	
	private SqlSessionFactory sqlSessionFactory = MybatisUtil.getSqlSessionFactory();

	//코드 작성
}
