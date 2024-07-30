
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    
    <title>공지사항 목록(관리자)</title>

    <link rel="stylesheet" href="../admin/css/admin-notice-list.css">
    <link rel="stylesheet" href="../include/css/admin-navigation.css">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.min.css">
    
</head>
<body>




    
<div class="content"> 
<jsp:include page="../include/admin-navigation.jsp"/>

    <div class="main">
        <section id="wrap">

            <form action="main_notice_search.board" method="get">
                <div class="search_box">
                    <div class="search_name">
                        <i class="bi bi-bell"></i> <span>공지사항</span>
                      </div>
                      <div class="search_bar1">
                          <input type="text" name="searchKeywordn" placeholder="검색어를 입력하세요.">
                          <input type="submit"  class="btn-hover color-4" value="조회">
                      </div>
              </div>
            </form>
        
        <c:if test="${not empty listn}">
            <p class="result_search"> 검색 결과: <span> ${totalCountn} </span> 건 </p>

            <div class="content_box3">
            <table class="user_table" style="table-layout: fixed">
                <thead>
                    <tr>
                        <th width="10%">번호</th>
                        <th width="100%">제목</th>
                        <th width="20%">작성자</th>
                        <th width="30%">작성일</th>
                        <th width="12%">조회수</th>
                    </tr>
                </thead>
                <tbody>
                    <c:forEach var="dto" items="${listn}">
                        <tr>
                            <td>${dto.noticeNo}</td>
                            <td><a href="main_notice_content.board?noticeNo=${dto.noticeNo}">${dto.title}</a></td>
                            <td>${dto.adminNo}</td>
                            <td><fmt:formatDate value="${dto.writeDate}" pattern="yyyy년 MM월 dd일"/></td>
                            <td>${dto.hit}</td>
                        </tr>
                    </c:forEach>
                </tbody>
            </table>
           </div> 
        </c:if>
        
        <c:if test="${empty listn}">
            <p class="result_non">검색 결과가 없습니다.</p>
        </c:if>

        <div class="pagination">
            <c:if test="${pagen > 1}">
                <a href="main_notice_list.board?pagen=${pagen - 1}">Previous</a>
            </c:if>
            <c:forEach var="i" begin="1" end="${totalPagesn}">
                <c:choose>
                    <c:when test="${pagen == i}">
                        <span class="current">${i}</span>
                    </c:when>
                    <c:otherwise>
                        <a href="main_notice_list.board?pagen=${i}">${i}</a>
                    </c:otherwise>
                </c:choose>
            </c:forEach>
            <c:if test="${pagen < totalPagesn}">
                <a href="main_notice_list.board?pagen=${pagen + 1}">Next</a>
            </c:if>
        </div>
          <div class="buttons">
            <input type="button" value="등록"  class="btn-hover btnRegi" class="combtn" onclick="location.href='main_notice_post2.board';">
        </div>
        </section>
    </div>
      
    </div>

</body>
</html>