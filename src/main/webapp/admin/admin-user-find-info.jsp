
<!-- 디자인 수정완료 그대로 붙여쓰세요 
1) 캘린더 디자인 수정해야함 

-->

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
    
    
    
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="../include/css/admin-navigation.css">
     <link rel="stylesheet" href="css/admin-user-find-info.css">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.min.css">
      <script src='https://cdn.jsdelivr.net/npm/fullcalendar@6.1.15/index.global.min.js'></script>
    <script>
      
      
      document.addEventListener('DOMContentLoaded', function () {
          var calendarEl = document.getElementById('calendar');
          var calendar = new FullCalendar.Calendar(calendarEl, {
              initialView: 'dayGridMonth',
              events: [
              	<c:forEach var="dto" items="${list}">
	                	{
	                		title: '${dto.reservationTime}' + ' / ${dto.adminName}' ,
	                        start: '${dto.reservationDate}'
	                    },
              	</c:forEach>
              ]
          });
          calendar.render();
      });

    </script>

</head>
<body>
    <div class="content"> 
    	<jsp:include page="../include/admin-navigation.jsp"/>


        
<!--  여기에 넣어주시면 됩니다. -->
<div class="main">
<section id="wrap">
        

         <!-- admin 페이지 헤더  -->
          <div class="admin_main_name">
            <i class="bi bi-person-circle"></i> <span>회원 정보 조회</span>
          </div>
        
          <!--  회원 정보 간략하게 -->
          
          <!--  1) 다시 화면에 찍기 ?? -->
          <form action="getUserAccount.admin" method="post">
          <div class="search_box">
                <div class="search_name">
                     <span class="user_value1">${dto.userName}</span>  님 (<span class="user_value1">${dto.userNo}</span>)
                  </div>
                  <div class="search_bar1">
                      <input type="text" name="userName" placeholder="이름을 입력하세요">
                      <input type="submit"  class="btn-hover color-4" value="조회">
                  </div>
          </div>
          </form>
              
<table class="user_table" style="table-layout: fixed">
    <tbody>
        <tr>
            <th width="40%"> 이름 </th>
            <td> <div> ${dto.userName}</div> </td>
        </tr>  
        <tr>
            <th> 아이디 </th>
            <td> <div> ${dto.userId} </div> </td>
        </tr> 
        <tr >
            <th> 생년월일 </th>
            <td> <div> ${dto.userBirth.toLocalDate()} </div> </td>
        </tr>  
          <tr >
            <th> 성별 </th>
            <td> <div> ${dto.userGender} </div> </td>
        </tr>  
        <tr >
            <th> 연락처 </th>
            <td><div>  ${dto.userPhone} </div> </td>
        </tr>  
        <tr>
            <th> 이메일 </th>
            <td> <div> ${dto.userEmail} </div> </td>
        </tr>  
          <tr>
            <th> 주소 </th>
            <td> <div> ${dto.userAddress} </div> </td>
        </tr>  
         <tr>
            <th> 가입일 </th>
            <td> <div>  ${dto.userRegDate.toLocalDate()} </div> </td>
        </tr>
         <tr>
            <th width="40%"> 잔여 PT 횟수 </th>
            <td> <div> ${num} 회 </div> </td>
        </tr>  
      
       
    </tbody>
</table>

<table class="user_table" style="table-layout: fixed">
    <tbody>
   <%--      <tr>
            <th width="40%"> 잔여 PT 횟수 </th>
            <td> <div> ${num} 회 </div> </td>
        </tr>  
 --%>
    </tbody>
</table>
   <div class="wrap4">
          	  <div id='calendar'></div>
          </div>
</section>
</div>
  
          

    <script type="text/javascript" src="../include/js/admin-navigation.js"> </script>
  
 
</body>
</html>