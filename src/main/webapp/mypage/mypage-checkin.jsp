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
    <script src="js/jquery-3.7.1.min.js"></script>
	<script src="js/confetti_v2.js"></script>
    <style>
    	#canvas {
    		z-index: 10;
            pointer-events: none;
            position: fixed;
            top: 0;
            transform: scale(1.1);
    	}
    </style>
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
   <jsp:include page="../include/main-navigation.jsp"/>
	
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
	            <!-- <button type="button" onclick="doCheckinFn()" class="checkinBtn">출석하기</button> -->
	            <button type="button" onclick="location.href='doCheckin.mypage'" class="checkinBtn">출석하기</button>
	            <p class="quote"></p>
	            <p class="author"></p>
	        </div>
    	</div>
    </section>
    
    <canvas id="canvas"></canvas>
    
    <script>
	    if("${msg}" == "Y") {
			var checkinBtn = document.querySelector(".checkinBtn");
			checkinBtn.innerHTML = "출석완료";
			checkinBtn.style.backgroundColor = "#2c3e50";
			checkinBtn.style.opacity = "0.65";
			checkinBtn.disabled = true;
			checkinBtn.style.cursor = "none";
		}
    	
    	if("${sessionScope.confettiMsg}" == "Y") {
    		RestartConfetti();
    		<c:remove var="confettiMsg" scope="session"/>
    	}
	</script>
	<script src="js/mypage-checkin.js"></script>
</body>
</html>