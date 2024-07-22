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
        

        /* 전체 틀 */
        .list-wrap {
            position: relative;
            width: 1024px;
            border: 0px solid green;
        }


        /* 프로모션 */
        .list-wrap > .prom {
            display: flex; justify-content: space-between;
            height: 400px; position: relative; top: 100px;
            
        }
        .list-wrap > .prom > div {
            text-align: center;
            display: inline-block;
            border: 2px solid #f97316; background-color: #000;
            border-radius: 10px;
            height: 100%; width: 23%;
        }
        /* 프로모션 종류별 대표사진 */
        .list-wrap > .prom img {
            width: 65%; height: 32%;
            border: 2px solid #000; border-radius: 10px;
            position: relative; top: 10px;
        }

        /* 프로모션 종류 메인 */
        .list-wrap > .prom p:nth-of-type(1) { 
            border: 1px solid #000; background-color: #f97316; border-radius: 5px;
            position: relative; top: 25px; width: 65%; font-style: bold;
        }
        /* 프로모션 종류별 제공사항 설명 */
        .list-wrap > .prom p:nth-of-type(2) {
            position: relative; top: 45px; height: 35%;
            font-weight: 400; color: #fff;
        }
        /* 프로모션 종류별 가격 및 기간 */
        .list-wrap > .prom p:nth-of-type(3) {
            position: relative; top: 30px; font-weight: 600;  color: #fff;
        }
        /* 프로모션 선택 버튼 */
        .list-wrap > .prom button {
            position: relative; top: 40px; height: 30px;
            width: 80%; background-color: #000; color: #fff;
            font-size: 15px; border-radius: 8px;
        }
        .list-wrap > .prom button:hover {
            color: #f97316; border: 1px solid #f97316;
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
    
    <div>
        <div class="list-wrap">
            <div class="prom">
                <div>
                    <img src="img/workout(7).jpg" alt="">
                    <p>연말프로모션</p>
                    <p>
                        헬스복/수건 무상제공<br>
                        개인락커 무상제공<br>
                        무제한 입장 가능<br>
                        12개월 회원권 PT 2회 추가 증정<br>
                        회원 멤버십가 우선 제공 기회
                    </p>
                    <p>￦360,000 / 12개월</p>
                    <button type="submit" onclick="location.href='goPromotionPay1.main'">구매하기</button>
                </div>
                <div>
                    <img src="img/workout(9).jpg" alt="">
                    <p>기본 정액가</p>
                    <p>
                        헬스복/수건 무상제공<br>
                        개인락커 무상제공<br>
                        무제한 입장 가능<br>
                        6개월 회원권 PT 1회 추가 증정<br>
                        회원 멤버십가 우선 제공 기회
                    </p>
                    <p>￦240,000 / 6개월</p>
                    <button type="submit" onclick="location.href='goPromotionPay2.main'">구매하기</button>
                </div>
                <div>
                    <img src="img/workout(11).png" alt="">
                    <p>일일이용권</p>
                    <p>
                        헬스복/수건 무상제공<br>
                        개인락커 무상제공<br>
                        1일 한도 내 무제한 입장 가능<br>
                        이용 당일 회원권 결제 시 2주 추가 증정
                    </p>
                    <p>￦15,000 / 1일</p>
                    <button type="submit" onclick="location.href='goPromotionPay3.main'">구매하기</button>
                </div>
                <div>
                    <img src="img/workout(5).jpg" alt="">
                    <p>PT회원권</p>
                    <p>
                        헬스복/수건 무상제공<br>
                        개인락커 무상제공<br>
                        무제한 입장 가능<br>
                        30회 결제 시 PT 추가 증정 이벤트
                    </p>
                    <p>￦250,000 / 5회</p>
                    <button type="submit" onclick="location.href='goPromotionPay4.main'">구매하기</button>
                </div>

            </div>
        </div>
    </div>



</body>
</html>