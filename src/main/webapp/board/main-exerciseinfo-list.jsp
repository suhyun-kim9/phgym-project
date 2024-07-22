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
    <title>운동정보</title>
    <link rel="stylesheet" href="css/main-exerciseinfo-list.css">
</head>
<body>
    
    <div class="container">
        <h1>운동정보</h1>
        <div class="search-bar">
            <form action="searchList.board" method="get">
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
                        <th>이름</th>
                        <th>작성일</th>
                        <th>조회수</th>
                    </tr>
                </thead>
                <tbody>
                    <c:forEach var="dto" items="${list}">
                        <tr>
                            <td>${dto.info_no}</td>
                            <td><a href="getContent.board?info_no=${dto.info_no}">${dto.title}</a></td>
                            <td>${dto.admin_no}</td>
                            <td><fmt:formatDate value="${dto.write_date}" pattern="yyyy년 MM월 dd일 HH시 mm분 ss초"/></td>
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