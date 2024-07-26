<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.min.css">
    <link rel="stylesheet" href="../include/css/main-navigation.css">
    <link rel="stylesheet" href="css/mypage-checkin.css">
    <script src='https://cdn.jsdelivr.net/npm/fullcalendar@6.1.15/index.global.min.js'></script>
    <script>
        document.addEventListener('DOMContentLoaded', function () {
            var calendarEl = document.getElementById('calendar');
            var calendar = new FullCalendar.Calendar(calendarEl, {
                initialView: 'dayGridMonth',
                events: [
                	<c:forEach var="date" items="${dates}">
	                	{
	                        start: '${date}'
	                    },
                	</c:forEach>
                ],
                eventContent: function(arg) {
                    let content = document.createElement('div');
                    content.innerHTML = '💯';
                    return { domNodes: [content] };
                },
                eventDisplay: 'block'
            });
            calendar.render();
        });
    </script>
</head>
<body>
    <nav class="main_nav_bar">
        <ul class="main_nav">
            <a><img src="../include/img/logo-light2.png"></a>
            <li><a> 헬스장 소개 </a></li>
            <li><a> 프로모션 </a></li>
            <li><a> 문의 / 고객센터 </a></li>
            <li><a> 오시는 길 </a></li>
            <li class="dropdown"><a> 마이페이지 </a><i class="bi bi-caret-down-fill"></i></li>
            <ul class="dropdownContent">
                <li><i class="bi bi-check-lg"></i><a href="/PHGYM/mypage/checkin.mypage"> 출석체크 </a></li>
            	<li><i class="bi bi-bar-chart-line"></i><a href="/PHGYM/mypage/statistics.mypage"> 통계확인 </a></li>
				<li><i class="bi bi-calendar-check"></i><a href="/PHGYM/mypage/reservationTrainer.mypage"> PT예약하기 </a></li>
				<li><i class="bi bi-send"></i><a href="/PHGYM/mypage/transfer.mypage"> 회원권양도 </a></li>
				<li><i class="bi bi-person-circle"></i><a> 회원정보 </a></li>
            </ul>
            <li class="gnb">  
                <!-- <input type="button" value="마이페이지"> -->
                <!-- <input type="button" value="회원가입"> -->
                <input type="button" value="로그아웃">
            </li>
            <div class="animation"></div>
        </ul>
    </nav>
	
    <section class="content">
    	<div class="wrap-top">
    		<h2>출석체크</h2>
    		<p class="clock"></p>
    	</div>
    	
    	<div class="wrap-middle">
    		<div class="wrap-middle-left">
	    		<div id="calendar"></div>
	    	</div>
	    	
	        <div class="wrap-middle-right">
	            <p class="title">${sessionScope.sessionUserName}님 반갑습니다!</p>
	            <button type="button" onclick="location.href='doCheckin.mypage'" class="checkin">출석하기</button>
	            <p class="quote"></p>
	            <p class="author"></p>
	        </div>
    	</div>
    </section>
    
    <script>
	    if("${msg}" == "Y") {
			var checkin = document.querySelector(".checkin");
			checkin.innerHTML = "출석완료";
			checkin.style.backgroundColor = "#2c3e50";
			checkin.style.opacity = "0.65";
			checkin.disabled = true;
			checkin.style.cursor = "none";
		}
	</script>
	<script type="text/javascript" src="js/mypage-checkin.js"></script>
	<script type="text/javascript" src="../include/js/main-navigation.js"></script>
</body>
</html>