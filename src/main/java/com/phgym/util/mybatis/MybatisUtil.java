package com.phgym.util.mybatis;

import java.io.InputStream;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

public class MybatisUtil {

	private static SqlSessionFactory sqlSessionFactory;

	static {
		try {
			String resource = "mybatis/config/mybatis-config.xml"; //resources 폴더 아래에서 경로가 시작함. 마이바티스 설정 파일의 위치
			InputStream inputStream = Resources.getResourceAsStream(resource);
			sqlSessionFactory = new SqlSessionFactoryBuilder().build(inputStream);
		} catch(Exception e) {
			e.printStackTrace();
		}
	}

	//GETTER
	public static SqlSessionFactory getSqlSessionFactory() {
		return sqlSessionFactory;
	}
}
