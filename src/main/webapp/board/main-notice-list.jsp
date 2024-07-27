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
    
    <title>공지사항목록</title>

    <link rel="stylesheet" href="css/main-notice-list.css">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.min.css">
    <link rel="stylesheet" href="../include/css/main-navigation.css">
    
</head>
<body>


<jsp:include page="../include/main-navigation.jsp"/>

    
    <div class="container">
        <h1>공지사항</h1>
        <div class="search-bar">
            <form action="main_notice_search.board" method="get">
                <input type="text" name="searchKeywordn" placeholder="검색" value="${searchKeywordn}">
                <button type="submit">조회</button>
            </form>
        </div>
        
        <c:if test="${not empty listn}">
            <p>검색 결과: ${fn:length(listn)}건</p>
            <table>
                <thead>
                    <tr>
                        <th>번호</th>
                        <th>제목</th>
                        <th>이름</th>
                        <th>작성일</th>
                        <th>조회수</th>
                    </tr>
                </thead>
                <tbody>
                    <c:forEach var="dto" items="${listn}">
                        <tr>
                            <td>${dto.noticeNo}</td>
                            <td><a href="main_notice_content.board?noticeNo=${dto.noticeNo}">${dto.title}</a></td>
                            <td>${dto.adminNo}</td>
                            <td><fmt:formatDate value="${dto.writeDate}" pattern="yyyy년 MM월 dd일 HH시 mm분 ss초"/></td>
                            <td>${dto.hit}</td>
                        </tr>
                    </c:forEach>
                </tbody>
            </table>
        </c:if>
        
        <c:if test="${empty listn}">
            <p>검색 결과가 없습니다.</p>
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
            <input type="button" value="등록" class="combtn" onclick="location.href='main_notice_post.board';">
        </div>
    </div>

</body>
</html>