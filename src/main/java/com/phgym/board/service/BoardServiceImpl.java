package com.phgym.board.service;

import org.apache.ibatis.session.SqlSessionFactory;

import com.phgym.util.mybatis.MybatisUtil;

public class BoardServiceImpl implements BoardService {
	
	private SqlSessionFactory sqlSessionFactory = MybatisUtil.getSqlSessionFactory();

	//코드 작성
}
