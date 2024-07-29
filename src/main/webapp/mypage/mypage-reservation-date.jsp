<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.min.css">
    <link rel="stylesheet" href="../include/css/main-navigation.css">
    <link rel="stylesheet" href="css/mypage-reservation-date.css">
    <script src='https://cdn.jsdelivr.net/npm/fullcalendar@6.1.15/index.global.min.js'></script>
    <script>
        document.addEventListener('DOMContentLoaded', function () {
            var date = null;
        	var calendarEl = document.getElementById('calendar');
            var calendar = new FullCalendar.Calendar(calendarEl, {
                initialView: 'dayGridMonth',
                selectable: true,
                dateClick: function(info) {
                	date = info.dateStr;
                    fetch("reservationTime.mypage?adminNo=" + ${adminNo} + "&date=" + info.dateStr)
                    .then(function(response) {
                    	return response.json();
                    })
                    .then(function(data) {
                    	var str = "<p>오전</p>";
                    	str += "<div class='am'>";
                    	for (var hour = 9; hour <= 12; hour++) {
                            if (data.includes(hour)) {
                                str += "<button type='button' class='disabledBtn' disabled='disabled'>" + hour + ":00</button>";
                            } else {
                                str += "<button type='button' class='abledBtn' onclick=\"if(confirm('PT를 예약하시겠습니까?')) location.href='doPtReservation.mypage?adminNo=" + ${adminNo} + "&date=" + date + "&hour=" + hour + "'\">" + hour + ":00</button>";
                            }
                        }
                    	str += "</div>";
                    	str += "<p>오후</p>";
                    	str += "<div class='pm'>";
                    	for (var hour = 13; hour <= 22; hour++) {
                            if (data.includes(hour)) {
                                str += "<button type='button' class='disabledBtn' disabled='disabled'>" + hour + ":00</button>";
                            } else {
                            	str += "<button type='button' class='abledBtn' onclick=\"if(confirm('PT를 예약하시겠습니까?')) location.href='doPtReservation.mypage?adminNo=" + ${adminNo} + "&date=" + date + "&hour=" + hour + "'\">" + hour + ":00</button>";
                            }
                        }
                    	str += "</div>";
                    	
                    	var wrapMiddleRight = document.querySelector(".wrap-middle-right");
                    	wrapMiddleRight.innerHTML = str;
                    });
                }
            });
            calendar.render();
        });
    </script>
</head>
<body>
    <jsp:include page="../include/main-navigation.jsp"/>

    <section class="content">
        <div class="wrap-top">
            <h2>PT 예약</h2>
            <p>원하시는 예약일과 시간을 선택해 주세요.</p>
        </div>
        
        <div class="wrap-middle">
        	<div class="wrap-middle-left">
        		<div id="calendar"></div>
        	</div>
        	<div class='wrap-middle-right'></div>
        </div>
    </section>
</body>
</html>