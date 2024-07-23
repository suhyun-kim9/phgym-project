<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
	<link rel="stylesheet" href="../include/css/main-navigation.css">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.min.css">

    <style>
        @font-face {
            font-family: 'SUIT-Regular';
            src: url('https://fastly.jsdelivr.net/gh/projectnoonnu/noonfonts_suit@1.0/SUIT-Regular.woff2') format('woff2');
            font-weight: 500;
            <!--font-style: normal;-->
        }

        * {margin: 0 auto; padding: 0; text-decoration: none; font-family: 'SUIT-Regular';}
        
        /* 전체 윤곽 */
        .intro-wrap {
            border: 0px solid #000; 
            width: 1024px; height: 850px;
        }

        /* 소개 내용 선택 구성 */
        .intro-wrap > .intro-name {
            border: 1px solid #000; border-radius: 10px;
            width: 500px;
            height: 5%; line-height: 42.5px;
            display: flex; position: relative; top: 20px;
        }
        .intro-wrap > .intro-name a {
            color: #000; 
        }
        .intro-wrap > .intro-name > a:nth-of-type(1) {
            background-color: #f97316; width: 50%; height: 100%;
            position: relative;
            border-top-left-radius: 10px;
            border-bottom-left-radius: 10px; text-align: center;
        }
        .intro-wrap > .intro-name > a:nth-of-type(2) {
            background-color: #fff; width: 50%; height: 100%;
            position: relative;
            border-top-right-radius: 10px;
            border-bottom-right-radius: 10px; text-align: center;
        }
        .intro-wrap > .intro-name a:hover {
            color: #fff; pointer: cursor;
        }
        .intro-wrap > .intro-name > div {
            border: 1px solid #000;
            width: 50%; line-height: 42.5px;
            text-indent: 10px; font-size: 25px;
        }
        

        /* 소개 내용 */
        .intro-wrap > .intro-content {
            border: 0px solid #000;
            width: 100%; height: 60%;
            display: flex;  justify-content: space-between;
            position: relative;
        }
        .intro-wrap > .intro-content > div {
            border: 2px solid #000; border-radius: 10px;
            position: relative; top: 100px; 
            display: flex; flex-direction: column; overflow: hidden;
            width: 23%; height: 80%; justify-content: space-between;
        }
        /* 센터소개 메인 이미지 */
        .intro-wrap > .intro-content > div > img {
            width: 100%; height: 100%; justify-content: center;
            object-fit: cover;
        }

        /* 센터소개 메인 타이틀 */
        .intro-wrap > .intro-content p:nth-of-type(1) {
            position: absolute; top: 260px; left: 15px; display: inline-block;
            font-size: 10px; background-color: #000;
            height: 8%; width: 90%; color: #fff; letter-spacing: 5px;
            text-align: center; font-size: 20px; font-weight: 400; line-height: 32px;
        }
        /* 센터소개 상세내용 */
        .intro-wrap > .intro-content p:nth-of-type(2) {
            position: absolute; top: 310px; left: 15px; display: inline-block;
            font-size: 13px; background-color: #000; color: #fff;
            height: 90px; width: 90%; text-indent: 10px;
            
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
        <div class="intro-wrap">
            <div class="intro-name">
                <a href="/PHGYM/main/introduction.main">센터소개</a>
                <a href="/PHGYM/main/trainer.main">트레이너소개</a>
            </div>
            <div class="intro-content">
                <div>
                    <img src="img/프리웨이트존.png" alt="">
                    <p>프리웨이트존</p>
                    <p>프리웨이트존에 대한 내용~~</p>
                </div>
                <div>
                    <img src="img/유산소존.png" alt="">
                    <p>유산소존</p>
                    <p>유산소존에 대한 내용~~</p>
                </div>
                <div>
                    <img src="img/pt개인지도.jpg" alt="">
                    <p>PT 개인지도</p>
                    <p>
                    	1.상담 -> 2.PT배정 -> 3.기초체력측정 -> 4.프로그램설계 -> 5.시행 -> 6.정기적관리
                    </p>
                </div>
                <div>
                    <img src="img/인포데스크.jpg" alt="">
                    <p>인포데스크</p>
                    <p>인포데스크에 대한 내용~~</p>
                </div>
            </div>
        </div>
    </section>

</body>
</html>