<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%
	int adminNo = (int)request.getSession().getAttribute("adminNo");
	String year = request.getParameter("year");
	String month = request.getParameter("month");
	String day = request.getParameter("day");
%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.min.css">
    <link rel="stylesheet" href="../include/css/main-navigation.css">
    <link rel="stylesheet" href="css/mypage-reservation-time.css">
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
	
	        <div class="time">
	            <p>원하는 시간을 선택해주세요.</p>
	            <div class="display">
	                <div>
	                    <p><%=year%>년 <%=month%>월 <%=day%>일</p>
	                </div>
	            </div>
	            <div class="time_select_box">
	                <div>
	                    <p>오전</p>
	                    <ul>
	                    	<c:if test="${fn:contains(times, 9)}">
	                    		<li><button type="button" disabled="disabled">09:00</button></li>
	                    	</c:if>
	                        <c:if test="${!fn:contains(times, 9)}">
	                    		<li><button type="button" onclick="location.href='doPtReservation.mypage?time=9'">09:00</button></li>
	                    	</c:if>
	                        <c:if test="${fn:contains(times, 10)}">
	                    		<li><button type="button" disabled="disabled">10:00</button></li>
	                    	</c:if>
	                        <c:if test="${!fn:contains(times, 10)}">
	                    		<li><button type="button" onclick="location.href='doPtReservation.mypage?time=10'">10:00</button></li>
	                    	</c:if>
	                        <c:if test="${fn:contains(times, 11)}">
	                    		<li><button type="button" disabled="disabled">11:00</button></li>
	                    	</c:if>
	                        <c:if test="${!fn:contains(times, 11)}">
	                    		<li><button type="button" onclick="location.href='doPtReservation.mypage?time=11'">11:00</button></li>
	                    	</c:if>
	                    </ul>
	                </div>
	                <div>
	                    <p>오후</p>
	                    <ul>
	                        <c:if test="${fn:contains(times, 12)}">
	                    		<li><button type="button" disabled="disabled">12:00</button></li>
	                    	</c:if>
	                        <c:if test="${!fn:contains(times, 12)}">
	                    		<li><button type="button" onclick="location.href='doPtReservation.mypage?time=12'">12:00</button></li>
	                    	</c:if>
	                         <c:if test="${fn:contains(times, 13)}">
	                    		<li><button type="button" disabled="disabled">13:00</button></li>
	                    	</c:if>
	                        <c:if test="${!fn:contains(times, 13)}">
	                    		<li><button type="button" onclick="location.href='doPtReservation.mypage?time=13'">13:00</button></li>
	                    	</c:if>
	                        <c:if test="${fn:contains(times, 14)}">
	                    		<li><button type="button" disabled="disabled">14:00</button></li>
	                    	</c:if>
	                        <c:if test="${!fn:contains(times, 14)}">
	                    		<li><button type="button" onclick="location.href='doPtReservation.mypage?time=14'">14:00</button></li>
	                    	</c:if>
	                        <c:if test="${fn:contains(times, 15)}">
	                    		<li><button type="button" disabled="disabled">15:00</button></li>
	                    	</c:if>
	                        <c:if test="${!fn:contains(times, 15)}">
	                    		<li><button type="button" onclick="location.href='doPtReservation.mypage?time=15'">15:00</button></li>
	                    	</c:if>
	                        <c:if test="${fn:contains(times, 16)}">
	                    		<li><button type="button" disabled="disabled">16:00</button></li>
	                    	</c:if>
	                        <c:if test="${!fn:contains(times, 16)}">
	                    		<li><button type="button" onclick="location.href='doPtReservation.mypage?time=16'">16:00</button></li>
	                    	</c:if>
	                        <c:if test="${fn:contains(times, 17)}">
	                    		<li><button type="button" disabled="disabled">17:00</button></li>
	                    	</c:if>
	                        <c:if test="${!fn:contains(times, 17)}">
	                    		<li><button type="button" onclick="location.href='doPtReservation.mypage?time=17'">17:00</button></li>
	                    	</c:if>
	                        <c:if test="${fn:contains(times, 18)}">
	                    		<li><button type="button" disabled="disabled">18:00</button></li>
	                    	</c:if>
	                        <c:if test="${!fn:contains(times, 18)}">
	                    		<li><button type="button" onclick="location.href='doPtReservation.mypage?time=18'">18:00</button></li>
	                    	</c:if>
	                        <c:if test="${fn:contains(times, 19)}">
	                    		<li><button type="button" disabled="disabled">19:00</button></li>
	                    	</c:if>
	                        <c:if test="${!fn:contains(times, 19)}">
	                    		<li><button type="button" onclick="location.href='doPtReservation.mypage?time=19'">19:00</button></li>
	                    	</c:if>
	                        <c:if test="${fn:contains(times, 20)}">
	                    		<li><button type="button" disabled="disabled">20:00</button></li>
	                    	</c:if>
	                        <c:if test="${!fn:contains(times, 20)}">
	                    		<li><button type="button" onclick="location.href='doPtReservation.mypage?time=20'">20:00</button></li>
	                    	</c:if>
	                        <c:if test="${fn:contains(times, 21)}">
	                    		<li><button type="button" disabled="disabled">21:00</button></li>
	                    	</c:if>
	                        <c:if test="${!fn:contains(times, 21)}">
	                    		<li><button type="button" onclick="location.href='doPtReservation.mypage?time=21'">21:00</button></li>
	                    	</c:if>
	                        <c:if test="${fn:contains(times, 22)}">
	                    		<li><button type="button" disabled="disabled">22:00</button></li>
	                    	</c:if>
	                        <c:if test="${!fn:contains(times, 22)}">
	                    		<li><button type="button" onclick="location.href='doPtReservation.mypage?time=22'">22:00</button></li>
	                    	</c:if>
	                    </ul>
	                </div>
	            </div>
	        </div>
        </div>
    </section>
    
    <script type="text/javascript" src="../include/js/main-navigation.js"></script>
</body>
</html>