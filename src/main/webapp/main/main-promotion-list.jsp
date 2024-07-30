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
        .list-wrap {
        	margin: auto;
            position: relative;
            width: 1050px; height: 600px;
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
            border: 0px solid red; background-color: #fff;
            border-radius: 10px; box-shadow: 2px 4px 12px #00000014;
            height: 100%; width: 23%;
        }
        /* 프로모션 종류별 대표사진 */
        .list-wrap > .prom img {
            width: 66%; height: 32%;
            border: 0px solid #000; border-radius: 10px;
            position: relative; top: 10px;
            box-shadow: 2px 4px 12px #00000014;
            object-fit: full;
        }

        /* 프로모션 종류 메인 */
        .list-wrap > .prom p:nth-of-type(1) { 
            border: 0px solid #000; background-color: #fff; border-radius: 5px; font-weight: 400;
            position: relative; top: 25px; width: 65%; box-shadow: 2px 4px 12px #00000014; left: 43px;
        }
        /* 프로모션 종류별 제공사항 설명 */
        .list-wrap > .prom p:nth-of-type(2) {
            position: relative; top: 45px; height: 35%;
            font-weight: 400; color: #000; 
        }
        /* 프로모션 종류별 가격 및 기간 */
        .list-wrap > .prom p:nth-of-type(3) {
            position: relative; top: 30px; font-weight: 500;  color: #000;
        }

        /* 프로모션 선택 버튼 */
        .button.button--wapasha {
            border-radius: 5px;
            background: #f97316;
            color: #fff;
            -webkit-transition: background-color 0.3s, color 0.3s;
            transition: background-color 0.3s, color 0.3s;
            position: relative; top: -69px; right: 35px; 
            height: 28px; line-height: 28px;
            box-shadow: 2px 4px 12px #00000014;
        }
        .button--wapasha.button--inverted {
            background: #fff;
            color: #37474f;
        }
        .button--wapasha::before {
            content: '';
            position: absolute;
            top: 0;
            left: 0;
            width: 100%;
            height: 100%;
            border: 2px solid #f97316;
            z-index: -1;
            border-radius: inherit;
            opacity: 0;
            -webkit-transform: scale3d(0.6, 0.6, 1);
            transform: scale3d(0.6, 0.6, 1);
            -webkit-transition: -webkit-transform 0.3s, opacity 0.3s;
            transition: transform 0.3s, opacity 0.3s;
            -webkit-transition-timing-function: cubic-bezier(0.75, 0, 0.125, 1);
            transition-timing-function: cubic-bezier(0.75, 0, 0.125, 1);
        }
        .button--wapasha.button--inverted::before {
            border-color: #f97316;
        }
        .button--wapasha:hover {
            background-color: #fff;
            color: #f97316;
        }
        .button--wapasha.button--inverted:hover {
            background-color: #f97316;
            color: #f97316;
        }
        .button--wapasha:hover::before {
            -webkit-transform: scale3d(1, 1, 1);
            transform: scale3d(1, 1, 1);
            opacity: 1;
        }
        .box {
            margin-top: 100px;
            display: -webkit-flex;
            display: -ms-flexbox;
            display: flex;
            -webkit-flex-wrap: wrap;
            -ms-flex-wrap: wrap;
            flex-wrap: wrap;
            -webkit-justify-content: flex-end;
            justify-content: flex-end;
        }
        
        /* Common button styles */
        .button {
            float: left;
            min-width: 150px;
            max-width: 250px;
            display: block;
            margin: 1em;
            /* padding: 1em 2em; */
            border: none;
            background: none;
            color: inherit;
            vertical-align: middle;
            position: relative;
            z-index: 1;
            -webkit-backface-visibility: hidden;
            -moz-osx-font-smoothing: grayscale;
        }
    </style>
	<link rel="stylesheet" href="../include/css/main-footer.css">
	
</head>
<body>
	   
	   
	   <jsp:include page="../include/main-navigation.jsp"/>
    
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
                        6개월 회원권 PT 2회 추가 증정<br>
                        회원 멤버십가 우선 제공 기회
                    </p>
                    <p>￦360,000 / 12개월</p>
                    <div class="box bg-1">
                        <button type="submit" onclick="location.href='goPromotionPay1.main'" class="button button--wapasha button--round-s"> 결제하기 </button>
                    </div>
                </div>
                <div>
                    <img src="img/workout(4).jpg" alt="">
                    <p>기본 정액가</p>
                    <p>
                        헬스복/수건 무상제공<br>
                        개인락커 무상제공<br>
                        무제한 입장 가능<br>
                        6개월 회원권 PT 1회 추가 증정<br>
                        회원 멤버십가 우선 제공 기회
                    </p>
                    <p>￦240,000 / 6개월</p>
                    <div class="box bg-1">
                        <button type="submit" onclick="location.href='goPromotionPay2.main'" class="button button--wapasha button--round-s"> 결제하기 </button>
                    </div>
                </div>
                <div>
                    <img src="img/workout(1).jpg" alt="">
                    <p>일일이용권</p>
                    <p>
                        헬스복/수건 무상제공<br>
                        개인락커 무상제공<br>
                        1일 한도 내 무제한 입장 가능<br>
                        이용일 회원권 결제 시 2주 추가 증정
                    </p>
                    <p>￦15,000 / 1일</p>
                    <div class="box bg-1">
                        <button type="submit" onclick="location.href='goPromotionPay3.main'" class="button button--wapasha button--round-s"> 결제하기 </button>
                    </div>
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
                    <p>￦50,000 / 1회</p>
                    <div class="box bg-1">
                        <button type="submit" onclick="location.href='goPromotionPay4.main'" class="button button--wapasha button--round-s"> 결제하기 </button>
                    </div>
                </div>

            </div>
        </div>
    </div>
	<jsp:include page="../include/main-footer.jsp"/>


</body>
</html>