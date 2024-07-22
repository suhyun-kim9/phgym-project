package com.phgym.board.model;

import java.util.ArrayList;
import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

@Mapper
public interface BoardMapper {
	
	String now();
	ArrayList<BoardDTO> getList(@Param("startIndex") int startIndex, @Param("pageSize") int pageSize);
	public int regist(BoardDTO dto);
	List<BoardDTO> searchList(@Param("searchKeyword") String searchKeyword, @Param("startIndex") int startIndex, @Param("pageSize") int pageSize);
	int getTotalCount();
	int getSearchCount(@Param("searchKeyword") String searchKeyword);
	ArrayList<BoardDTO> searchList(String searchKeyword);

	//코드 작성
}

