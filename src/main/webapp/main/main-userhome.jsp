<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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
		
		@keyframes fadeIn { /* 메인 이미지 슬라이드*/
            from {
                opacity: 0;
            } to {
                opacity: 1;
            }
        }
        
        /* 모든 컨텐츠를 감싸는 클래스 */
         .main-wrap {
            width: 100%; height: 1100px; position: relative;
        }

        /* 메인슬라이드 */
		.swiper {
            position: relative;
            width: 100%; height: 560px; justify-content: space-between;
        }
        .swiper .swiper-slide {
            position: relative; overflow: hidden;
        }
        .swiper .swiper-slide img {
            position: absolute; width: 100%; height: 100%; object-fit: fit;
        }
        #swiper {
            transition-duration: 0ms;
            transform: translate3d(-2264px, 0px, 0px);
            transition-delay: 0ms;
        }

        /* 프로모션 */
         .main-wrap > .main-prom {
            border: 0px solid red;
            height: 310px; margin-top: 10px;
            width: 85%; position: relative; top: 20px; left: -2px;

        }
        
        
        .main-wrap > .main-prom > span {
            border: 0px solid #e3e3e3; border-radius: 18px;
            display: inline-block;  box-shadow: 2px 4px 12px #00000014;
            width: 30%; height: 100%; left: 18px;
        }

        #prom-list {
            display: flex; margin: auto; justify-content: space-between; width: 85%; height: 30%;
        }
        .main-wrap > .main-prom img {
            position: relative;
            width: 100%; height: 67%;
            border-top-left-radius: 10px;
            border-top-right-radius: 10px;
        }
        .main-wrap > .main-prom p {
            position: relative; left: 10px; margin-top: 8px;
        }
        .main-wrap > .main-prom .satisfaction {
            position: relative; color: navy;
            bottom: 5px; font-size: 14px; 
        } */

        /* 이벤트 */
        
        .main-wrap > .main-event {
          
        }
        .main-event {
	        width: 90%;
	        border : 0px solid red; 
	        margin: auto;
	        display: flex;
	        height: 150px;
	        margin-top : 60px;
            margin-left: 115px;
        }
        
        .main-wrap > .main-event > div {
            width: 43%; height: 95px;
            box-shadow: 2px 4px 12px #00000014; border-radius: 18px;
            position: relative; display: inline-block;
        }

        .main-wrap > .main-event > div:nth-of-type(1) { 
            background-image: linear-gradient(to right,#FF78A9, #fff, #FF78A9)
        }
        .main-wrap > .main-event > div:nth-of-type(2) {
            background-image: linear-gradient(to right, #5A9CFF, #fff, #781CC7);
            margin-left: 123px;
        }    
        
        .main-wrap > .main-event p {
            margin: 13px; font-size: 20px; text-indent: 10px; letter-spacing: 5px;
        }
        
        .main-event > .event1 > img {
        	position: relative; left: 515px; bottom: 94px;
        	width: 100px; height: 100px;
        }
        .main-event > .event2 > img {
        	position: relative; left: 480px; bottom: 82px;
        	width: 115px; height: 80px;
        }
        
    </style>
	<link rel="stylesheet" href="../include/css/main-footer.css">
	<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/swiper@11/swiper-bundle.min.css"/>
    <script src="https://cdn.jsdelivr.net/npm/swiper@11/swiper-bundle.min.js"></script>
</head>
<body>
  
  
	<jsp:include page="../include/main-navigation.jsp"/>
	    
    
    <section>
        <div class="main-wrap">
            <div class="swiper">
                <!-- Additional required wrapper -->
                <div class="swiper-wrapper">
                    <!-- Slides -->
                    <div class="swiper-slide">
                        <img src="img/slide2.jpg" alt="">
                    </div>
                    <div class="swiper-slide">
                        <img src="img/slide5.jpg" alt="">
                    </div>
                    <div class="swiper-slide">
                        <img src="img/slide3.jpg" alt="">
                    </div>
                    <div class="swiper-slide">
                        <img src="img/slide4.jpg" alt="">
                    </div>
                </div>
                <!-- If we need pagination -->
                <div class="swiper-pagination"></div>
            
                <!-- If we need navigation buttons -->
                <div class="swiper-button-prev"></div>
                <div class="swiper-button-next"></div>
            
                <!-- If we need scrollbar -->
                <!-- <div class="swiper-scrollbar"></div> -->
            </div>
            <div class="main-prom" id="prom-list">
                <span class="prom1">
                    <img src="img/nutrition.jpg" class="main-img">
                    <p>Nutrition</p>
                    <p>식단 및 영양 정보 제공</p>
                    <p class="satisfaction">☆☆☆ 고객만족도 4.9  🕒주 2회 제공</p>
                </span>
                <span class="prom2">
                    <img src="img/웨이트.jpg" alt="">
                    <p>Fitness</p>
                    <p>1:1 맞춤 PT 진행중</p>
                    <p class="satisfaction">☆☆☆ 고객만족도 4.9  🕒70분 진행</p>
                </span>
                <span class="prom3">
                    <img src="img/clean.jpg" alt="">
                    <p>Health</p>
                    <p>매일 3회 이상 소독</p>
                    <p class="satisfaction">☆☆☆ 고객만족도 5.0  🕒일 3회</p>
                </span>
            </div>
            <div class="main-event">
                <div class="event1">
                    <p>PT 30회 할인 이벤트 진행중</p>
                    <p>선착순 5명 모집 !</p>
                    <img src="img/event1.webp" alt="img1" width=50px;>
                </div>
                <div class="event2">
                    <p>연말 프로모션 진행중</p>
                    <p>선착순 모집 !!</p>
                    <img src="img/event2.webp" alt="img2" width= 50px;>
                </div>
            </div>
        </div> 
    </section>


	<script>
	
		var msg = "${sessionScope.msg}";
		if(msg == "y") {
			alert("결제가 완료되었습니다");
			<c:remove var = "msg" scope="session"/>
		}
	
        const swiper = new Swiper('.swiper', {
        // Optional parameters
        direction: 'horizontal',
        loop: false,

        autoplay: {
            delay: 5000
        },

        // If we need pagination
        pagination: {
            el: '.swiper-pagination',
            clickable: true,
        },

        // Navigation arrows
        navigation: {
            nextEl: '.swiper-button-next',
            prevEl: '.swiper-button-prev',
        },

        // And if we need scrollbar
        // scrollbar: {
        //     el: '.swiper-scrollbar',
        // },
        });

    </script>
	<jsp:include page="../include/main-footer.jsp"/>
</body>
</html>