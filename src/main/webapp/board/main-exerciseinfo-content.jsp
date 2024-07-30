<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>운동정보내용</title>
	<link rel="stylesheet" href="../include/css/main-navigation.css">
    <link rel="stylesheet" href="css/main-exerciseinfo-content.css">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.min.css">
	<link rel="stylesheet" href="../include/css/main-footer.css">
 
    <script>
        function confirmDelete(infoNo) {
            if(confirm("삭제하시겠습니까?")) {
                location.href = 'main_exe_delete.board?infoNo=' + infoNo;
            }
        }
    </script>
    
</head>
<body>


 	<jsp:include page="../include/main-navigation.jsp"/>
 	
 	
 	
	<div class="content"> 
		<div class="main">
			<section id="wrap">
	



	<div class="content2">
        <div class="inquiry-view">
            <div class="view-header">
                <div class="header1">
                    <input type="button" class="back-btn" value="←"onclick="location.href='main_exe_list.board'">
                    <div class="title-info">
                        <div class="no_title"> ${dto.title} </div>
                    </div>    
                    <div class="header-icons">
              <%-- 삭제버튼 수정해야함 <c:if test="${sessionScope.adminNo }">
                            <div class="icon_click">
                                <input type="button" value="삭제" onclick="confirmDelete(${dto.noticeNo})">
                            </div>
                        </c:if>    --%>
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
        
   	<jsp:include page="../include/main-footer.jsp"/>
</body>
</html>