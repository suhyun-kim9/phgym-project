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
    
    <title>공지사항 목록</title>
	<link rel="stylesheet" href="../include/css/main-navigation.css">
    <link rel="stylesheet" href="../board/css/main-notice-list.css">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.min.css">
    <link rel="stylesheet" href="../include/css/main-footer.css">
    
</head>
<body>


<jsp:include page="../include/main-navigation.jsp"/>

    
<div class="content"> 
    <div class="mainNlist">

    <div class="container">

            <form action="main_notice_search.board" method="get">
                <div class="search_box">
                    <div class="search_name">
                        <i class="bi bi-bell"></i> <span>공지사항</span>
                      </div>
                      <div class="search_bar1">
                          <input type="text" name="searchKeywordn" placeholder="검색어를 입력하세요.">
                          <input type="submit"  class="btn-hover color-4" value="검색">
                      </div>
              </div>
            </form>
        
        <c:if test="${not empty listn}">
            <p class="result_search"><small> 검색 결과: <span> ${totalCountn} </span> 건 </small></p>

            <div class="content_box3">
            <table class="user_table" style="table-layout: fixed">
                <tbody class="user_table2">
                    <c:forEach var="dto" items="${listn}" varStatus="status">
                    	<tr class="tableTr">
                            <td>
                            	<div class="title1" style="color:  #ff7f56"><a href="main_notice_content.board?noticeNo=${dto.noticeNo}">${dto.title}</a></div>
                            	<div class="hitNo">조회수 [ ${dto.hit} ]</div>
                            </td>
                            <td>
                            	<div> <fmt:formatDate value="${dto.writeDate}" pattern="yyyy년 MM월 dd일"/> </div>
                            </td>
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
                <a href="main_notice_list.board?pagen=${pagen - 1}" class="prevBtn">이전</a>
            </c:if>
            <c:forEach var="i" begin="1" end="${totalPagesn}">
                <c:choose>
                    <c:when test="${pagen == i}">
                        <span class="current">${i}</span>
                    </c:when>
                    <c:otherwise>
                        <a href="main_notice_list.board?pagen=${i}" class="pageLink">${i}</a>
                    </c:otherwise>
                </c:choose>
            </c:forEach>
            <c:if test="${pagen < totalPagesn}">
                <a href="main_notice_list.board?pagen=${pagen + 1}" class="nextBtn">다음</a>
            </c:if>
        </div>
    </div>
    </div>
    </div>

    	<jsp:include page="../include/main-footer.jsp"/>

    <script>

            const rows = document.querySelectorAll(".user_table2 tr");
            rows.forEach(row => {
                row.addEventListener("click", function(event) {
                    const link = row.querySelector("a");
                    if (link) {
                        const href = link.getAttribute("href");
                        window.location.href = href;
                    }
                });
            });

    </script>
    
    
</body>
</html>