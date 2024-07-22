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
            font-weight: normal;
            font-style: normal;
        }
    
        * {margin: 0 auto; padding: 0; text-decoration: none; font-family: 'SUIT-Regular';}
        
        /* 전체 틀 */
        .map-wrap {
            width: 1024px; height: 850px;
            border: 0px solid black;
            display: flex; 
        }


        /* 지도 이미지 파일 */
        .map-wrap > .map-img {
            position: relative; border-radius: 10px;
            border: 1px solid #000;
            width: 45%; height: 65%; top: 100px;
        }
        .map-wrap > .map-img > img {
            width: 100%;  height: 100%; border-radius: 10px; object-fit: cover;
            
        }

        /* 오시는길 소개란 */
        .map-wrap > .map-info {
            position: relative;
            width: 45%; height: 65%; top: 100px;
            border: px solid black;
            display: flex; flex-direction: column; justify-content: space-between;
        }
        .map-wrap > .map-info > div {
            border: 1px solid #000; border-radius: 10px;
            width: 100%; height: 22%; text-indent: 10px;
        }
        .map-wrap > .map-info p {
            margin: 6px; font-weight: 400;
        }
        .map-wrap > .map-info p:nth-of-type(1) {
            font-weight: 600;
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
        <div class="map-wrap">
            <div class="map-img">
                <img src="img/지도.png" alt="지도">
            </div>
            <div class="map-info">
                <div>
                    <p>📍 도로명 주소</p>
                    <p>서울시 강남구 테헤란로7길 7 에스코빌딩 6층</p>
                    <p>❷호선,신분당 : 강남역 11번 출구에서 305m</p>
                </div>
                <div>
                    <p>📍 유선번호</p>
                    <p>02-1234-5678</p>
                    <p>(유선 상담은 센터 영업시간과 동일하게 진행됩니다.)</p>
                </div>
                <div>
                    <p>📍 영업시간</p>
                    <p>평일: AM 06:00 ~ PM 11:00</p>
                    <p>주말: AM 06:00 ~ PM 06:00</p>
                    <p>(매주 셋째주 토요일 정기휴무)</p>
                </div>
                <div>
                    <p>📍 주차</p>
                    <p>헬스장 건물 전용 주차장 이용 가능</p>
                    <p>헬스장 회원 외 유료주차 (3,000원/1시간)</p>
                </div>
            </div>
        </div>
    </section>







</body>
</html>