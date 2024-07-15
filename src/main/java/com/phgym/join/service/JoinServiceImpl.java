package com.phgym.join.service;

import org.apache.ibatis.session.SqlSessionFactory;

import com.phgym.util.mybatis.MybatisUtil;

public class JoinServiceImpl implements JoinService {
	
	private SqlSessionFactory sqlSessionFactory = MybatisUtil.getSqlSessionFactory();

	//코드 작성
}
