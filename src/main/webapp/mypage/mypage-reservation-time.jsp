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
    <jsp:include page="../include/main-navigation.jsp"/>

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
</body>
</html>