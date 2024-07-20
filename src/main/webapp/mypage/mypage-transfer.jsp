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
    <link rel="stylesheet" href="css/mypage-transfer.css">
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
        	<p class="content_title">회원권 양도</p>
            <div>
                <p>회원권을 양도받으실 회원님의 회원번호를 입력해 주시고,</p>
                <p>양도하실 회원권을 선택해 주세요.</p>
            </div>
            <form action="doTransfer.mypage" method="post">
                <p class="user_no">회원번호</p>
                <input type="text" name="userNo" placeholder=" 양도받으실 회원님의 회원번호를 입력해 주세요.">
                <p class="mem_pay_no">회원권</p>
                <c:choose>
                	<c:when test="${!empty list}">
	                	<select name="membershipPayNo">
		                	<c:forEach var="dto" items="${list}">
		                		<option value="${dto.membershipPayNo}">[시작일] ${dto.startDate} / [종료일] ${dto.endDate}</option>
		                	</c:forEach>
		                </select>
	                </c:when>
	                <c:otherwise>
	                	<select name="membershipPayNo">
		                		<option>양도 가능한 회원권이 없습니다.</option>
		                </select>
	                </c:otherwise>
                </c:choose>                
                <input type="submit" value="양도하기" onclick="return check()" class="submit">
            </form>
        </div>
    </section>
    
    <script type="text/javascript">
    	var isEmptyList = ${empty list};
	    if(isEmptyList) {
			var submit = document.querySelector(".submit");
			submit.disabled = true;
			submit.style.cursor = "none";
			submit.style.backgroundColor = "#8c8c8c";
		}
	    
	    var checkUserInfoMsg = ${empty sessionScope.checkUserInfoMsg};
	    console.log(checkUserInfoMsg);
	    if(!checkUserInfoMsg) {
	    	alert("존재하지 않는 회원번호입니다.");
	    }
	    <c:remove var="checkUserInfoMsg" scope="session"/>
	    
	    var doTransferMsg = "${sessionScope.doTransferMsg}";
	    if(doTransferMsg) {
	    	alert("회원권 양도가 완료되셨습니다.");
	    }
	    <c:remove var="doTransferMsg" scope="session"/>
	</script>
    <script type="text/javascript" src="js/mypage-transfer.js"></script>
    <script type="text/javascript" src="../include/js/main-navigation.js"></script>
</body>
</html>