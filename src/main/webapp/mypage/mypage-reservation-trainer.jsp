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
    <link rel="stylesheet" href="css/mypage-reservation-trainer.css">
</head>
<body>
    <jsp:include page="../include/main-navigation.jsp"/>

    <section class="content">
        <div class="wrap">
        	<p>PT 담당 트레이너</p>
        	<p>${sessionScope.sessionUserName}님의 잔여횟수는 ${remainingPtCnt}회 입니다.</p>
			<div class="trainer_box">
				<div>
					<img alt="트레이너" src="img/1.WEBP">
					<button type="button" onclick="location.href='reservationDate.mypage?adminNo=1'" disabled="disabled">예약하기</button>
				</div>
				<div>
					<img alt="트레이너" src="img/2.WEBP">
					<button type="button" onclick="location.href='reservationDate.mypage?adminNo=2'" disabled="disabled">예약하기</button>
				</div>
				<div>
					<img alt="트레이너" src="img/3.WEBP">
					<button type="button" onclick="location.href='reservationDate.mypage?adminNo=3'" disabled="disabled">예약하기</button>
				</div>
				<div>
					<img alt="트레이너" src="img/4.WEBP">
					<button type="button" onclick="location.href='reservationDate.mypage?adminNo=4'" disabled="disabled">예약하기</button>
				</div>
			</div>
        </div>
    </section>
    
    <script type="text/javascript">
    	var btn = document.querySelectorAll("button");
    	var remainingPtCnt = ${remainingPtCnt};
    	if(remainingPtCnt > 0) {
    		for(var i = 0; i < btn.length; i++) {
    			btn[i].removeAttribute("disabled");
    		}
    	}
    
	    var doPtReservationMsg = "${sessionScope.doPtReservationMsg}";
	    if(doPtReservationMsg) {
	    	alert("PT 예약이 완료되셨습니다.");
	    }
	    <c:remove var="doPtReservationMsg" scope="session"/>
    </script>
</body>
</html>