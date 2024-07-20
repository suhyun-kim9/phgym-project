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


        /* 소개 내용 */
        .intro-wrap > .intro-content {
            border: 0px solid #000;
            width: 100%; height: 60%;
            display: flex;  justify-content: space-between;
            position: relative;
        }
        .intro-wrap > .intro-content > div {
            border: 1px solid #000; border-radius: 10px;
            position: relative; top: 100px; 
            display: flex; flex-direction: column;
            width: 23%; height: 80%; justify-content: space-between;
        }
        .intro-wrap > .intro-content > div > img {
            width: 100%; height: 100%; justify-content: center;
        }
        .intro-wrap > .intro-content p:nth-of-type(1) {
            position: absolute; top: 260px; left: 15px; display: inline-block;
            font-size: 10px; background-color: bisque; border-radius: 8px;
            height: 8%; width: 90%; border: 2px solid tomato;
            text-align: center; font-size: 25px; font-weight: 700;
        }
        .intro-wrap > .intro-content p:nth-of-type(2) {
            position: absolute; top: 310px; left: 15px; display: inline-block;
            font-size: 10px; background-color: bisque; border-radius: 8px;
            height: 90px; width: 90%; text-indent: 10px; border: 2px solid tomato;
        }



    </style>
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
                    <img src="img/당황.WEBP" alt="">
                    <p>프리웨이트존</p>
                    <p>프리웨이트존에 대한 내용~~</p>
                </div>
                <div>
                    <img src="img/슬픔.WEBP" alt="">
                    <p>유산소존</p>
                    <p>유산소존에 대한 내용~~</p>
                </div>
                <div>
                    <img src="img/부럽.WEBP" alt="">
                    <p>PT 개인지도</p>
                    <p>PT 개인지도에 대한 내용~~</p>
                </div>
                <div>
                    <img src="img/기쁨.WEBP" alt="">
                    <p>인포데스크</p>
                    <p>인포데스크에 대한 내용~~</p>
                </div>
            </div>
        </div>
    </section>

</body>
</html>