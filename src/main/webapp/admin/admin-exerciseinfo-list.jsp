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
    
    <title>운동정보목록</title>
    
    <link rel="stylesheet" href="css/main-exerciseinfo-list.css">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.min.css">
    <link rel="stylesheet" href="../include/css/main-navigation.css">
     <link rel="stylesheet" href="../include/css/admin-navigation.css">
	
</head>
<body>


    	<div class="content">

		<jsp:include page="../include/admin-navigation.jsp" />

		<div class="main">
			<section id="wrap">
			
    <div class="container">
        <h1>운동정보</h1>
        <div class="search-bar">
            <form action="main_exe_search.board" method="get">
                <input type="text" name="searchKeyword" placeholder="검색" value="${searchKeyword}">
                <button type="submit">조회</button>
            </form>
        </div>
        
        <c:if test="${not empty list}">
            <p>검색 결과: ${fn:length(list)}건</p>
            <table>
                <thead>
                    <tr>
                        <th>번호</th>
                        <th>제목</th>
                        <th>관리자 번호</th>
                        <th>작성일</th>
                        <th>조회수</th>
                    </tr>
                </thead>
                <tbody>
                    <c:forEach var="dto" items="${list}" varStatus="status">
                        <tr>
                            <td>${list.size() - status.index}</td>
                            <td><a href="main_exe_content.board?infoNo=${dto.infoNo}">${dto.title}</a></td>
                            <td>${dto.adminNo}</td>
                            <td><fmt:formatDate value="${dto.writeDate}" pattern="yyyy년 MM월 dd일"/></td>
                            <td>${dto.hit}</td>
                        </tr>
                    </c:forEach>
                </tbody>
            </table>
        </c:if>
        
        <c:if test="${empty list}">
            <p>검색 결과가 없습니다.</p>
        </c:if>

        <div class="pagination">
            <c:if test="${page > 1}">
                <a href="main_exe_list.board?page=${page - 1}">Previous</a>
            </c:if>
            <c:forEach var="i" begin="1" end="${totalPages}">
                <c:choose>
                    <c:when test="${page == i}">
                        <span class="current">${i}</span>
                    </c:when>
                    <c:otherwise>
                        <a href="main_exe_list.board?page=${i}">${i}</a>
                    </c:otherwise>
                </c:choose>
            </c:forEach>
            <c:if test="${page < totalPages}">
                <a href="main_exe_list.board?page=${page + 1}">Next</a>
            </c:if>
        </div>
        
        <div class="buttons">
            <input type="button" value="등록" class="combtn" onclick="location.href='main_exe_post.board';">
        </div>
    </div>

</body>
</html>