<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
	<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=044c395910a2b889bf5c80a65ed0a100"></script>
    
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
            width: 45%; height: 65%; top: 100px; overflow: hidden;
        }
        .map-wrap > .map-img > div {
        	position: relative; width: 100%; height: 100%;
        }
        
/*        .map-wrap > .map-img > img {
            width: 100%;  height: 100%; border-radius: 10px; object-fit: cover;
            
        } */

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
                <div id="map"></div>
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
	<script type="text/javascript">

    /*링크참조 
    https://apis.map.kakao.com/web/sample/ */
   
   var mapContainer = document.getElementById('map'), // 지도를 표시할 div 
           mapOption = { 
               center: new kakao.maps.LatLng(37.4996384, 127.0304606), // 지도의 중심좌표
               level: 3 // 지도의 확대 레벨
           };

       var map = new kakao.maps.Map(mapContainer, mapOption); // 지도를 생성합니다

       // 일반 지도와 스카이뷰로 지도 타입을 전환할 수 있는 지도타입 컨트롤을 생성합니다
       var mapTypeControl = new kakao.maps.MapTypeControl();

       // 지도에 컨트롤을 추가해야 지도위에 표시됩니다
       // kakao.maps.ControlPosition은 컨트롤이 표시될 위치를 정의하는데 TOPRIGHT는 오른쪽 위를 의미합니다
       map.addControl(mapTypeControl, kakao.maps.ControlPosition.TOPRIGHT);

       // 지도 확대 축소를 제어할 수 있는  줌 컨트롤을 생성합니다
       var zoomControl = new kakao.maps.ZoomControl();
       map.addControl(zoomControl, kakao.maps.ControlPosition.RIGHT);

       //2-마커
       
       // 마커가 표시될 위치입니다 
       var markerPosition  = new kakao.maps.LatLng(37.4996384, 127.0304606); 

       // 마커를 생성합니다
       var marker = new kakao.maps.Marker({
           position: markerPosition
       });

       // 마커가 지도 위에 표시되도록 설정합니다
       marker.setMap(map);



	</script>
<script type="text/javascript" src="js/main-promotion-payment.js"></script>
</body>
</html>