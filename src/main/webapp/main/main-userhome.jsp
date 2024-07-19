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
            width: 100%; height: 400px;
        }

        /* 프로모션 */
        .main-wrap > .main-prom {
            border: 0px solid red;
            height: 200px;margin-top: 10px;
            display: flex; 
        }
        .main-wrap > .main-prom > span {
            border: 2px solid black; border-radius: 10px;
            display: inline-block; 
            width: 28%; height: 100%;
        }
        #prom-list {
            display: flex; justify-content: left;
        }
        .main-wrap > .main-prom img {
            position: relative;
            width: 100%; height: 70%;
        }
        .main-wrap > .main-prom p {
            margin: 5px 5px;
            font-weight: 600;
        }

        /* 이벤트 */
        .main-wrap > .main-event {
            display: flex;
        }
        .main-wrap > .main-event > span {
            margin-top: 80px;
            border: 1px solid black; border-radius: 10px;
            width: 45%; height: 70px;
            display: inline-block;
        }
        .main-wrap > .main-event p {
            margin: 5px 10px;
            font-weight: 600;
        }
        

    </style>

</head>
<body>
    
    <nav class="main_nav_bar">
        <ul class="main_nav">
            <a><img src="../include/img/logo-light2.png"></a>
            <li><a> 헬스장 소개 </a></li>
            <li><a href="/PHGYM/main/promotionList.main"> 프로모션 </a></li>
            <li><a> 문의 / 고객센터 </a></li>
            <li><a> 오시는 길 </a></li>
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
                <img src="img/단체.png" alt="">
            </div>
            <div class="main-prom" id="prom-list">
                <span class="prom1">
                    <img src="img/기쁨.WEBP" alt="img1">
                    <p>Nutrition</p>
                    <p>식단 및 영양 정보 제공</p>
                </span>
                <span class="prom2">
                    <img src="img/불안.WEBP" alt="">
                    <p>Fitness</p>
                    <p>1:1 맞춤 PT 진행중</p>
                </span>
                <span class="prom3">
                    <img src="img/슬픔.WEBP" alt="">
                    <p>Health</p>
                    <p>매일 3회 이상 소독</p>
                </span>
            </div>
            <div class="main-event">
                <span class="event1">
                    <p>PT 30회 할인 이벤트 진행중</p>
                    <p>선착순 5명 모집!</p>
                </span>
                <span class="event2">
                    <p>연말 프로모션 진행중</p>
                    <p>선착순 모집</p>
                </span>
            </div>
        </div>
    </section>

	<script type="text/javascript" src="../include/js/main-navigation.js"></script>






</body>
</html>