<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	int adminNo = Integer.parseInt(request.getParameter("adminNo"));
	request.getSession().setAttribute("adminNo", adminNo);
%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.min.css">
    <link rel="stylesheet" href="../include/css/main-navigation.css">
    <link rel="stylesheet" href="css/mypage-reservation-date.css">
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
        <div class="wrap">
            <div class="trainer_img">
            	<img src="img/<%=adminNo%>.WEBP" alt="">
            </div>
            <div class="date">
                <p>원하는 예약일을 선택해주세요.</p>
                <div class="calendar">
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
                </div>
            </div>
        </div>
    </section>
    
    <script type="text/javascript" src="js/mypage-reservation-date.js"></script>
    <script type="text/javascript" src="../include/js/main-navigation.js"></script>
</body>
</html>