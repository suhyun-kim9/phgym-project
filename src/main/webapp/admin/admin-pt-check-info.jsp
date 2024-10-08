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
    <link rel="stylesheet" href="css/admin-pt-check-info.css">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.min.css">
 	<link rel="stylesheet" href="css/calendar.css">
	<script src="https://code.jquery.com/jquery-3.7.1.min.js"></script>
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
                 <form action="getUserAccount.admin" method="post">
                 <div class="search_box">
                         <div class="search_name">
                            <b>${dto.userName}</b>  님 (<b>${dto.userNo}</b>)
                         </div>
         				  
                         <div class="search_bar">
                             <input type="text"  placeholder="이름을 입력하세요">
                             <input type="submit" value="조회" onclick="location.href='getPtCheck.admin'">
                         </div>
                 </div>
       			</form>
       			
       			
       			 <!-- 회원 정보 -->
       			 <div class="pt_user">
       			 <div> <p> 회원 정보 </p></div>
                     <div class="user_box">
					<table class="admin-account-table">
					    <tbody class="admin-account-tbody">
					        <tr>
					            <th> 이름 </th>
					            <td> <div>${dto.userName} </div> </td>
					        </tr>  
					        <tr>
					            <th> 아이디 </th>
					            <td> <div>${dto.userNo}</div> </td>
					        </tr> 
					        <tr >
					            <th> 생년월일 </th>
					            <td> <div> ${dto.userBirth} </div> </td>
					        </tr>  
					            <tr >
					            <th> 연락처 </th>
					            <td> <div>  ${dto.userPhone} </div> </td>
					        </tr>  
					          <tr >
					            <th> 성별 </th>
					            <td> <div>${dto.userGender}</div> </td>
					        </tr>  
					         <tr >
					            <th> 담당트레이너  </th>
					            <td> <div>${dto.userGender}</div> </td>
					        </tr>  
			        	</tbody>
			        </table>
		        </div>
		        </div>
         
                 <!-- pt 일정 -->
                 <div class="pt_plan">
                     <div class="pt_planer">
 
                    <!-- 캘린더 전체 컨테이너 -->
				     <!-- 캘린더 전체 컨테이너 -->
    <div class="calendar">
        <!-- 헤더 부분: 이전, 다음 버튼과 월/연 표시 -->
        <div class="header">
            <button id="prevMonth">&lt;</button>
            <div class="month-year" id="monthYear"></div>
            <button id="nextMonth">&gt;</button>
        </div>
        <!-- 요일 이름 표시 -->
        <div class="weekdays">
            <div>Sun</div>
            <div>Mon</div>
            <div>Tue</div>
            <div>Wed</div>
            <div>Thu</div>
            <div>Fri</div>
            <div>Sat</div>
        </div>


        

        <div>
            <label for="type">날짜 : </label>
            <input type="text" id="date" readonly />
        </div>
        <!-- 날짜 표시 -->
        <div class="days" id="days"></div>

        <div class="list_box">
            <div class="pt_content">
               <table>
                <tbody>
                    <c:forEach var="i" items="${result}">
                    	<tr>
	                        <th> 예약일 :  </th>
	                        <td>${i.reservationDate}  </td>
	                    </tr>
	                    <tr>
	                        <th>  PT 내용 : </th>
	                        <td> <textarea type="text" rows="4" cols="50"> ${i.content} </textarea></td>
	                    </tr>
                    </c:forEach>

                </tbody>
                </table>

            </div>

        </div>
    </div>
              
            </div>
                       
           </div>
    </div>


</div>
	    <script type="text/javascript" src="js/calendar.js"> </script>
    <script type="text/javascript" src="../include/js/admin-navigation.js"> </script>
 	<script type="text/javascript">
 		var result = "${result}";
 		var listBox = document.querySelector(".list_box");
 		if(result == null || result == "") {
 			listBox.style.display = "none";
 		}
 	</script>
</body>
</html>