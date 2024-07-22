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
                            <b>${userName}</b>  님 (<b>${userNo}</b>)
                         </div>
         				  
                         <div class="search_bar">
                             <input type="text"  placeholder="이름을 입력하세요">
                             <input type="submit" value="조회" onclick="location.href='getPtCheck.admin'">
                         </div>
                 </div>
       			</form>
       			
       			
       			 <!-- 회원 정보 -->
       			 <div class="pt_user">
       			 <div> <p> 회원  정보 </p></div>
                     <div class="user_box">
					<table class="admin-account-table">
					    <tbody class="admin-account-tbody">
					        <tr>
					            <th> 이름 </th>
					            <td> <div> asdfasdfadsfdsaf</div> </td>
					        </tr>  
					        <tr>
					            <th> 아이디 </th>
					            <td> <div> asdfasdfsdfdsaf </div> </td>
					        </tr> 
					        <tr >
					            <th> 생년월일 </th>
					            <td> <div> asdfasdfsadfsad </div> </td>
					        </tr>  
					            <tr >
					            <th> 연락처 </th>
					            <td> <div> asdfasdfsadfsad </div> </td>
					        </tr>  
					          <tr >
					            <th> 성별 </th>
					            <td> <div> asdfsdafsdsfsd</div> </td>
					        </tr>  
			        	</tbody>
			        </table>
		        </div>
		        </div>
         
                 <!-- pt 담당 트레이너 -->
                 <div class="pt_trainer">
                     <div> <p> PT 담당 트레이너 </p></div>
                     <div class="trainer_box">
                         <img src="img/pngwing.com (1).png">
                         <div class="trainer_box2">
                             <div class="trainer_name">
                                 <p> 박근영 </p>
                                 <p> 트레이너 </p>
                             </div>
                             
                             <ul>
                                 <li> {앞구르기 대회 1등}</li>
                                 <li> {복싱 클럽 운영}</li>
                                 <li> {생활 스포츠 지도사 2급}</li>
                                 <li> {스포츠 마사지 1등}</li>
                                 <li> {태권도 3급}</li>
                             </ul>
         
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
                         <img src="img/calendar-1847346_1920.png">
                         <p> 스케쥴 표 / 리스트로 표시 예정 </p>
                         
                     </div>
                 </div>
    </div>


</div>

    <script type="text/javascript" src="../include/js/admin-navigation.js"> </script>
 
</body>
</html>