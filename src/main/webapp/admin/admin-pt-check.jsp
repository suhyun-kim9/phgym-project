<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    
    
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="../include/css/admin-navigation.css">
    <link rel="stylesheet" href="css/admin-pt-check.css">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.min.css">



</head>
<body>
    <div class="content"> 
    	<jsp:include page="../include/admin-navigation.jsp"/>


<!--  여기에 넣어주시면 됩니다. -->
        <div class="main">
            <!-- admin 페이지 헤더  -->
                 <div class="admin_main_name">
                     <i class="bi bi-calendar-check"></i> <span>회원 스케쥴 조회</span>    
                 </div>
         
          
         
                 <!--  회원 정보 간략하게 -->
          <form action="getUserPt.admin" method="post">
          <div class="main_content">
             
 
                  <div class="search_bar1">
                      <input type="text"  name="userName" placeholder="스케쥴 조회 할 회원 이름을 입력하세요">
                      <input type="submit" class="btn-hover color-4"  value="조회">
                  </div>
                  
               
                <form action="getUserPt.admin" method="post">
                  
                  <div>

                  </div>

                  <div class="wrap3">


                    <table class="user_table">
                        <tbody>
                     
                            <tr>
                                <th>회원번호</th>
                                <th>이름</th>
                                <th>생년월일</th>
                                <th>성별</th>
                                <th>전화번호</th>
                                <th>이메일</th>
                             
                            </tr>
                            
                          <c:if test="${!empty userlist}">
                            <c:forEach var="ulist" items="${userlist}">
                               <tr>
                                <td><a href="getUserPt2.admin?userNo=${ulist.userNo}">${ulist.userNo}</a></td>
                                <td><a href="getUserPt2.admin?userNo=${ulist.userNo}">${ulist.userName}</a></td>
                                <td><a href="getUserPt2.admin?userNo=${ulist.userNo}">${ulist.userBirth}</a></td>
                                <td><a href="getUserPt2.admin?userNo=${ulist.userNo}">${ulist.userGender}</a></td>
                                <td><a href="getUserPt2.admin?userNo=${ulist.userNo}">${ulist.userPhone}</a></td>
                                <td><a href="getUserPt2.admin?userNo=${ulist.userNo}">${ulist.userEmail}</a></td>
                            </tr>
                            </c:forEach>
                        </c:if>
                            <c:if test="${!empty list}">
	                            <c:forEach var="dto" items="${list}">
		                         <tr> 
	                                <td><a href="getUserPt2.admin?userNo=${dto.userNo}"> ${dto.userNo}</a></td>
	                                <td><a href="getUserPt2.admin?userNo=${dto.userNo}"> ${dto.userName}</a></td>
	                                <td><a href="getUserPt2.admin?userNo=${dto.userNo}"> ${dto.userBirth}</a></td>
	                                <td><a href="getUserPt2.admin?userNo=${dto.userNo}"> ${dto.userGender}</a></td>
	                                <td><a href="getUserPt2.admin?userNo=${dto.userNo}"> ${dto.userPhone}</a></td>
	                                <td><a href="getUserPt2.admin?userNo=${dto.userNo}"> ${dto.userEmail}</a></td>
	                            </tr>
	                            </c:forEach>
	                        </c:if>
	                        
	                       
                         
                        </tbody>
                    </table>
	                    <!-- <%-- <div id="userName"> ${u.userName} </div> --%> -->
	                <!-- 이름  , 생년월일 , 번호 -->
	                    <ul>
	                       
	                    </ul>
                  </div> 
          
          </form>
                     
               <%--   <ul>
                 	<c:if test="${!empty list}">
                 		<c:forEach var="dto" items="${list}">
	                 		<li><a href="getUserPt2.admin?userNo=${dto.userNo}">${dto.userName} / ${dto.userNo}</a></li>
	                 	</c:forEach>
                 	</c:if>
                 </ul> --%>
          </div>
          </form>
    </div>
</div>

    <script type="text/javascript" src="../include/js/admin-navigation.js"> </script>
          <script>
    
		var msg = "${msg}";
		if (msg == "N") {
			alert("없는 회원 입니다 다시 조회해주세요.");
		}
    </script>
 
</body>
</html>