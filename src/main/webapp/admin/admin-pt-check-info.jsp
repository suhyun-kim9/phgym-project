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



</head>
<body>
    <div class="content"> 
    <div class="aside">
        <nav>


        <!-- 7월 16일 수정했습니다 혜주 -->
        <ul class="nav_1">

            <div class="logo"> <img src="../include/img/logo-light.png"> </div>
            <li> <i class="bi bi-person-fill"></i> <a> 관리자 계정 </a> </li>
            <li> 
                <div id="dropdown">
                    <i class="bi bi-search"></i> <a> 회원 조회</a> <i class="bi bi-chevron-compact-right"></i></i>
                </div>
            </li>
            <ul id="nav_2">
                <li><i class="bi bi-person-circle"></i> <a> 회원 정보 조회 </a>  </li>
                <li> <i class="bi bi-calendar-check"></i> <a>  회원 스케쥴 조회 </a></li>
            </ul>
            <li> <i class="bi bi-calendar4-event"></i> <a> 스케쥴 관리 </a></li>
            <li> <i class="bi bi-bell"></i> <a> 공지사항 </a></li>
            <li> <i class="bi bi-archive"></i> <a> 운동정보 </a></li>

        </ul>
        <div class="nav_logout">
            <p> 로그아웃 </p>
        </div>
    </nav>
</div>


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
			        	</tbody>
			        </table>
		        </div>
		        </div>
         
                 <!-- pt 담당 트레이너 -->
                 <div class="pt_trainer">
                     <div> <p> PT 담당 트레이너 </p></div>
                     <div class="trainer_box">
                         <!-- <img src="img/pngwing.com (1).png"> -->
                         <div class="trainer_box2">
                             <div class="trainer_name">
                                 <p> ${adminDto.adminName} </p>
                                 <p> 트레이너 </p>
                             </div>
                     
         
                             <!-- <div class="trainner_reservation_btn">
                                 <input type="button" value="예약하기">
                             </div> -->
                         </div>
                     </div>
                     
                 </div>
         
                 <!-- pt 일정 -->
                 <div class="pt_plan">
                     <div><p> PT 일정 </p></div>
                     <div class="pt_planer">
                <div class="pt_date">
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
				        <!-- 날짜 표시 -->
				        <div class="days" id="days"></div>
				         
				    </div>
				     <div class="pt_list"> </div>
				    
                </div>
              
            </div>
                       
           </div>
    </div>


</div>
	<script type="text/javascript" src="js/admin-reservation-date.js"> </script>
    <script type="text/javascript" src="../include/js/admin-navigation.js"> </script>
 
</body>
</html>