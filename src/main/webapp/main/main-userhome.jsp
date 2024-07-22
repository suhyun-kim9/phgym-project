<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>

	<link rel="stylesheet" href="../include/css/main-navigation.css">
    <style>
	    @font-face {
	        font-family: 'SUIT-Regular';
	        src: url('https://fastly.jsdelivr.net/gh/projectnoonnu/noonfonts_suit@1.0/SUIT-Regular.woff2') format('woff2');
	        font-weight: 500;
	        font-style: normal;
	    }

        * {margin: 0 auto; padding: 0; text-decoration: none; font-family: 'SUIT-Regular';}

        /* 모든 컨텐츠를 감싸는 클래스 */
        .main-wrap {
            width: 1024px; height: 800px;
            border: 0px solid #e3e3e3;
        }
        
        /* 메인사진 */
        .main-wrap > .main-img > img {
            display: inline-block;
            border: 3px solid black; border-radius: 10px;
            width: 100%; height: 460px;
            position: relative; top: 100px;
        }

        /* 프로모션 */
        .main-wrap > .main-prom {
            border: 0px solid red;
            height: 280px; margin-top: 120px;
            width: 1083px; position: relative;
            left: -30px;
            
        }
        .main-wrap > .main-prom > span {
            border: 3px solid black; border-radius: 10px;
            display: inline-block; 
            width: 300px; height: 100%;
        }
        #prom-list {
            display: flex; justify-content: left;
        }
        .main-wrap > .main-prom img {
            position: relative;
            width: 100%; height: 67%;
            border-top-left-radius: 10px;
            border-top-right-radius: 10px;
        }
        .main-wrap > .main-prom p {
            font-weight: 600; position: relative; left: 10px; margin-top: 8px;
        }
        .main-wrap > .main-prom .satisfaction {
            position: relative; color: darkgrey;
            bottom: 5px; font-size: 14px; top: 1px;
        }

        /* 이벤트 */
        .main-wrap > .main-event {
            display: flex; position: relative;
            left: -25px; width: 1074px; top: -55px;
        }
        .main-wrap > .main-event > span {
            margin-top: 80px;
            border: 3px solid black; border-radius: 10px;
            width: 45%; height: 100px;
            display: inline-block;
        }
        .main-wrap > .main-event > span:nth-of-type(1) { /* event 1 */
            background-image: linear-gradient(to right,#FF78A9, #fff, #FF78A9)
        }
        .main-wrap > .main-event > span:nth-of-type(2) { /* event 2 */
            background-image: linear-gradient(to right, #5A9CFF, #fff, #781CC7);
        }
        .main-wrap > .main-event p {
            position: relative; text-align: left; 
            top: 15px; left: 18px; font-size : 20px;
        }
        .main-wrap > .main-event p:nth-of-type(1) {
            font-size : 30px;
            margin-bottom: 5px;
            font-weight: 600;
        }
        .main-wrap > .main-event div > img {
            width: 100px; height: 100px; position: relative;
            left: 395px; top: -75px;
        }
        .main-wrap > .main-event > .event2 div > img {
            width: 100px; height: 80px; 
            left: 370px; top: -60px;
        }
        

    </style>

</head>
<body>
    
    <nav class="main_nav_bar">
        <ul class="main_nav">
            <a href="/PHGYM/main/userhome.main"><img src="../include/img/logo-light2.png"></a>
            <li><a href="/PHGYM/main/introduction.main"> 헬스장 소개 </a></li>
            <li><a href="/PHGYM/main/promotionList.main"> 프로모션 </a></li>
            <li><a> 문의 / 고객센터 </a></li>
            <li><a href="/PHGYM/main/map.main"> 오시는 길 </a></li>
            <li class="dropdown"><a> 마이페이지 </a><i class="bi bi-caret-down-fill"></i></li>
            <ul class="dropdownContent">
                <li><i class="bi bi-check-lg"></i><a href="/PHGYM/mypage/checkin.mypage"> 출석체크 </a></li>
            	<li><i class="bi bi-bar-chart-line"></i><a href="/PHGYM/mypage/statistics.mypage"> 통계확인 </a></li>
				<li><i class="bi bi-calendar-check"></i><a> PT예약하기 </a></li>
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
    
    <section>
        <div class="main-wrap">
            <div class="main-img">
                <img src="img/main2.png" alt="main">
            </div>
            <div class="main-prom" id="prom-list">
                <span class="prom1">
                    <img src="img/nutrition.jpg" alt="img1">
                    <p>Nutrition</p>
                    <p>식단 및 영양 정보 제공</p>
                    <p class="satisfaction">⭐️ 고객만족도 4.9  🕒주 2회 제공</p>
                </span>
                <span class="prom2">
                    <img src="img/웨이트.jpg" alt="">
                    <p>Fitness</p>
                    <p>1:1 맞춤 PT 진행중</p>
                    <p class="satisfaction">⭐️ 고객만족도 4.9  🕒70분 진행</p>
                </span>
                <span class="prom3">
                    <img src="img/clean.jpg" alt="">
                    <p>Health</p>
                    <p>매일 3회 이상 소독</p>
                    <p class="satisfaction">⭐️ 고객만족도 5.0  🕒일 3회</p>
                </span>
            </div>
            <div class="main-event">
                <span class="event1">
                    <p>PT 30회 할인 이벤트 진행중</p>
                    <p>선착순 5명 모집 !</p>
                    <div><img src="img/event1.webp" alt=""></div>
                </span>
                <span class="event2">
                    <p>연말 프로모션 진행중</p>
                    <p>선착순 모집 !!</p>
                    <div><img src="img/event2.webp" alt=""></div>
                </span>
            </div>
        </div>
    </section>

	<script type="text/javascript" src="../include/js/main-navigation.js"></script>






</body>
</html>