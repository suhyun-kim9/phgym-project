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
     <link rel="stylesheet" href="css/admin-trainer-pt-check.css">
     <link rel="stylesheet" href="css/admin-pt-check.css">
     <link rel="stylesheet" href="css/calender.css">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.min.css">


</head>
<body>
    <div class="content"> 
    <div class="aside">
        <nav>
        <ul class="nav_1">
            <div class="logo"> <img src="nav/logo_dark.webp"> </div>
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
<section id="wrap">
        

         <!-- admin 페이지 헤더  -->
          <div class="admin_main_name">
              스케쥴 확인
          </div>
        
          <!--  회원 정보 간략하게 -->
          
          <!--  1) 다시 화면에 찍기 ?? -->
          <form action="getUserAccount.admin" method="post">
         <div class="search_box">
                <div class="search_name">
                     <b> ${adDto.adminName} </b>  트레이너 (<b>${adDto.adminNo}</b>)
                  </div>
  
                 <%--   <div class="search_bar">
                      <input type="text" name="userName" placeholder="이름을 입력하세요">
                      <input type="submit"  class="btn-hover color-4" value="조회">
                  </div> --%>
          </div>
          </form>
          
          <div class="mini_header"> <p> 스케쥴 관리 </p></div>
          
          
          
          
          <div class="pt_trainer_box">
          	
          
          
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
                    <tr>
                        <th> 예약일 :  </th>
                        <td>${result.reservationDate}  </td>
                    </tr>
                    <tr>
                        <th>  PT 내용 : </th>
                        <td> <textarea type="text" rows="4" cols="50"> ${result.content} </textarea></td>
                    </tr>

                </tbody>
                </table>

            </div>

        </div>
    </div>
              
            </div>
                       
           </div>
    </div>

          
          </div>
 </section>
    
    
  


    <script type="text/javascript" src="../include/js/admin-navigation.js"> </script>
 
</body>
</html>