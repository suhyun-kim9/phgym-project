package com.phgym.board.model;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

@Mapper
public interface BoardMapper {
	
	// mainExerciseInfo
	String now();
	ArrayList<BoardDTO> getList(@Param("startIndex") int startIndex, @Param("endIndex") int endIndex); //목록
    int regist(BoardDTO dto); // 작성   
    ArrayList<BoardDTO> searchList(@Param("searchKeyword") String searchKeyword, @Param("startIndex") int startIndex, @Param("endIndex") int endIndex); // 검색
    int getTotalCount();
    int getSearchCount(@Param("searchKeyword") String searchKeyword);
	BoardDTO getContent(int infoNo); // 글 내용
	void increaseHit(int infoNo); // 조회
	void delete(int infoNo); // 삭제
	
	// mainQna
	String now1();
	ArrayList<QnaDTO> getList1(@Param("startIndexs") int startIndexs, @Param("endIndexs") int endIndexs); //목록
	int regist1(QnaDTO dto); // 작성   
	ArrayList<QnaDTO> searchList1(@Param("searchKeywords") String searchKeywords, @Param("startIndexs") int startIndexs, @Param("endIndexs") int endIndexs); // 검색
	int getTotalCounts();
	int getSearchCounts(@Param("searchKeywords") String searchKeywords);
	QnaDTO getContent1(int inquiryNo); // 글 내용
	void increaseHit1(int inquiryNo); // 조회
	int delete1(QnaDTO dto); // 삭제
	int replyRegist(QnaDTO dto);
	// 댓글 삭제
    int deleteReply(QnaDTO dto);
    // 댓글 수정
    int updateReply(QnaDTO dtd);
	QnaDTO getComments(@Param("inquiryNo") int inquiryNo);
	
	
	// mainNotice
	String nowN();
	ArrayList<NoticeDTO> getListN(@Param("startIndexn") int startIndexn, @Param("endIndexn") int endIndexn); //목록
	NoticeDTO getContentN(int noticeNo);
	int registN(NoticeDTO dto);
	ArrayList<NoticeDTO> searchListN(@Param("searchKeywordn") String searchKeywordn, @Param("startIndexn") int startIndexn, @Param("endIndexn") int endIndexn); // 검색
    int getTotalCountN();
    int getSearchCountN(@Param("searchKeywordn") String searchKeywordn);
	void increaseHitN(int noticeNo); // 조회
	void deleteN(int noticeNo); // 삭제
}

