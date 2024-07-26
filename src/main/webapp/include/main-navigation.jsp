<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!-- 
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>

    <link rel="stylesheet" href="../include/css/main-navigation.css">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.min.css">
	
     css 넣으세여 ! 
</head>

<body> -->
         
        
    <nav class="main_nav_bar">
        <ul class="main_nav">
            <a><img src="../include/img/logo-light2.png"></a>
            <li class="dr1"> <a> 헬스장 소개 </a> </li>
            <li class="dr2"> <a> 프로모션 </a> </li>
            <li class="dr dropdown2"> <a> 문의/고객센터 </a></li>
            <div class="dropdownContent2">
				<li><i class="bi bi-chat-dots"></i> <a href=""> 문의사항 </a></li>
				<li> <i class="bi bi-bell"></i> <a href=""> 공지사항 </a></li>
				<li> <i class="bi bi-archive"></i> <a href=""> 운동정보 </a></li>
            </div>

            <li  class="dr4"> <a> 오시는 길 </a> </li>
            <li class="dr dropdown"> <a> 마이페이지 </a> </li>
            <div class="dropdownContent">
                <li><i class="bi bi-check-lg"></i><a href="/PHGYM/mypage/checkin.mypage"> 출석체크 </a></li>
            	<li><i class="bi bi-bar-chart-line"></i><a href="/PHGYM/mypage/statistics.mypage"> 통계확인 </a></li>
				<li><i class="bi bi-calendar-check"></i><a href=""> PT예약하기 </a></li>
				<li><i class="bi bi-send"></i><a href="/PHGYM/mypage/transfer.mypage"> 회원권양도 </a></li>
				<li><i class="bi bi-person-circle"></i><a href=""> 회원정보 </a></li>
            </div>

            <li class="gnb">  
                <!-- <input type="button" value="마이페이지"> -->
                <!-- <input type="button" value="회원가입"> -->
                <input type="button" value="로그아웃">
            </li>
            <div class="animation"> </div>
        </ul>
        
    </nav>


<script type="text/javascript" src="../include/js/main-navigation.js"> </script> 
