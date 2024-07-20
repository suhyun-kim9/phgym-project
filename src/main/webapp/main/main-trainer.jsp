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
        
        /* 전체 윤곽 */
        .intro-wrap {
            border: 0px solid #000; 
            width: 1024px; height: 850px;
        }

        
        /* 소개 내용 선택 구성 */
        .intro-wrap > .intro-name {
            border: 1px solid #000; border-radius: 10px;
            width: 50%; height: 5%;
            display: flex; position: relative; top: 20px;
        }
        .intro-wrap > .intro-name > div {
            border: 1px solid #000;
            width: 50%; line-height: 42.5px;
            text-indent: 10px; font-size: 25px;
        }
        .intro-wrap > .intro-name > div:nth-of-type(1) {
            background-color: #f97316;
        }


        /* 트레이너 소개 내용 */
        .intro-wrap > .intro-content {
            border: 0px solid #000;
            width: 100%; height: 40%;
            position: relative; top: 100px;
            display: flex; flex-direction: column; justify-content: space-between;
        }
        .intro-wrap > .intro-content img {
            display: inline-block;
            border: 2px solid #000;  border-radius: 10px;
            width: 10%; height: 80%;
        }
        .intro-wrap > .intro-content p {
            display: inline-block;  position: relative; left: 50px;
            border: 2px solid #f97316; border-radius: 10px;
            width: 80%; height: 80%; padding: 10px;
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
                <div>센터소개</div>
                <div>트레이너소개</div>
            </div>
            <div class="intro-content">
                <div>
                    <img src="img/기쁨.WEBP" alt="">
                    <p>
                        김강함 트레이너<br>
                        앞구르기 대회 1등<br>
                        복싱 클럽 운영<br>
                        생활 스포츠 지도사 2급<br>
                        스포츠 마사지 1급<br>
                        태권도 3단<br>
                    </p>
                </div>
                <div>
                    <img src="img/기쁨.WEBP" alt="">
                    <p>
                        김강함 트레이너<br>
                        앞구르기 대회 1등<br>
                        복싱 클럽 운영<br>
                        생활 스포츠 지도사 2급<br>
                        스포츠 마사지 1급<br>
                        태권도 3단<br>
                    </p>
                </div>
            </div>
        </div>
    </section>



</body>
</html>