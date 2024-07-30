<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>공지사항내용</title>
	<link rel="stylesheet" href="../include/css/admin-navigation.css">
    <link rel="stylesheet" href="../admin/css/admin-notice-content.css">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.min.css">

	
    <script>
        function confirmDelete(noticeNo) {
            if(confirm("삭제하시겠습니까?")) {
                location.href = '/PHGYM/board/main_notice_delete.board?noticeNo=' + noticeNo;
            }
        }
    </script>
    
</head>
<body>
 
	<div class="content">
	<jsp:include page="../include/admin-navigation.jsp" />
		<div class="main">
			<section id="wrap">

	<div class="content2">
        <div class="inquiry-view">
            <div class="view-header">
                <div class="header1">
                    <input type="button" class="back-btn" value="←"onclick="location.href='main_notice_list.board'">
                    <div class="title-info">
                        <div class="no_title"> ${dto.title} </div>
                    </div>    
                    <div class="header-icons">
                       
                     <%--    <c:if test="${sessionScope.adminNo != null || sessionScope.adminNo != ''}"> --%>
                             <!-- <button class="icon-btn">⋮</button> -->
                            <div class="icon_click">
                                <input type="button" value="삭제" onclick="confirmDelete(${dto.noticeNo})"> 
                            </div>
                            
                    </div>
                </div>

              
                <div class="title2-info">             
                    <div class="no_adminNo"> 작성자 [ <span> ${dto.adminNo} </span>  ]</div>
                    <div class="no_writeDate"> 작성일 [   <span> <fmt:formatDate value="${dto.writeDate}" pattern="yyyy년 MM월 dd일" /> </span>  ]</div>
                </div>
                <div class="inquiry-content">
                    <p> ${dto.content }</p>
                </div>
            </div>
           
        </div>
    </div>
            </section>
            </div>
            </div>
        

</body>
</html>