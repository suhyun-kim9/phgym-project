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
</head>
<body>
	<nav>
        <ul class="main_nav">
            <a><img src="../include/img/logo-light2.png"></a>
            <li><a> 헬스장 소개 </a></li>
            <li><a> 프로모션 </a></li>
            <li><a> 문의 / 고객센터 </a></li>
            <li><a> 오시는 길 </a></li>
            <li class="dropdown"><a> 마이페이지 </a><i class="bi bi-caret-down-fill"></i></li>
            <ul class="dropdownContent">
            	<li><i class="bi bi-check-lg"></i><a href="/PHGYM/mypage/checkin.mypage"> 출석체크 </a></li>
				<li><i class="bi bi-bar-chart-line"></i><a> 통계확인 </a></li>
				<li><i class="bi bi-calendar-check"></i><a> PT예약하기 </a></li>
				<li><i class="bi bi-send"></i><a href="/PHGYM/mypage/transfer.mypage"> 회원권양도 </a></li>
				<li><i class="bi bi-person-circle"></i><a> 회원정보 </a></li>
            </ul>
            <li class="gnb">  
                <!-- <input type="button" value="마이페이지"> -->
                <input type="button" value="로그아웃">
            </li>
        </ul>
    </nav>

    <section class="content">
        <div class="wrap">
            <div class="trainer_box">
                <div class="trainer_img">
                    <img src="img/pngwing.com (1).png" alt="">
                </div>
                <div class="trainer_content">
                    <p>김강함</p>
                    <p>트레이너</p>
                    <ul>
                        <li>앞구르기 대회 1등</li>
                        <li>복싱 클럽 운영</li>
                        <li>생활 스포츠 지도사 2급</li>
                        <li>스포츠 마사지 1등</li>
                        <li>태권도 3급</li>
                    </ul>
                </div>
            </div>
            <div class="date">
                <p>원하는 예약일을 선택해주세요.</p>
                <div class="calendar">
                    <img src="img/calendar-1847346_1920.png" alt="">
                </div>
            </div>
        </div>
    </section>
    
    <script type="text/javascript" src="../include/js/main-navigation.js"></script>
</body>
</html>