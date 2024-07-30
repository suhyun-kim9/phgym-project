<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>운동정보내용</title>
    <link rel="stylesheet" href="css/main-exerciseinfo-content.css">
    <link rel="stylesheet" href="../include/css/admin-navigation.css">
	
     <script>
        function confirmDelete(infoNo) {
            if(confirm("삭제하시겠습니까?")) {
                location.href = 'main_exe_delete.board?infoNo=' + infoNo;
            }
        }
    </script>
    
</head>
<body>

	<div class="content">

		<jsp:include page="../include/admin-navigation.jsp" />


		<!--  여기에 넣어주시면 됩니다. -->
		<div class="main">
			<section id="wrap">
    
    <div class="content2">
        <div class="inquiry-view">
            <div class="view-header">
            	<input type="button" value="←" onclick="location.href='main_exe_list.board'">
                <h2>글 내용</h2>
                <div class="title-info">
                    <span>제목 [ ${dto.title} ]</span>
                    <span>작성자 [ ${dto.adminNo} ]</span>
                    <span>작성일 [ <fmt:formatDate value="${dto.writeDate}" pattern="yyyy년 MM월 dd일" /> ]</span>
                 <c:if test="${sessionScope.adminNo }">
                    <input type="button" value="삭제" onclick="confirmDelete(${dto.infoNo})">                 
                 </c:if>   
                </div>
            </div>
            <div class="inquiry-content">
                <p>${dto.content }</p>
            </div>
        </div>
    </div>

</body>
</html>