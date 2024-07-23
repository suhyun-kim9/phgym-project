package com.phgym.board.model;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

@Mapper
public interface BoardMapper {
	
	String now();
	ArrayList<BoardDTO> getList(@Param("startIndex") int startIndex, @Param("endIndex") int endIndex);
    int regist(BoardDTO dto);
    ArrayList<BoardDTO> searchList(@Param("searchKeyword") String searchKeyword, @Param("startIndex") int startIndex, @Param("endIndex") int endIndex);
    int getTotalCount();
    int getSearchCount(@Param("searchKeyword") String searchKeyword);
	BoardDTO getContent(int infoNo); // 글 내용
	void increaseHit(int infoNo); // 조회

	
	
	
	//코드 작성
//	ArrayList<BoardDTO> searchList(Map<String, Object> params);
//	ArrayList<BoardDTO> getList(Map<String, Object> params);
}

