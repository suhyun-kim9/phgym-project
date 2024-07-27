<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
	<link rel="stylesheet" href="../include/css/main-navigation.css">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/swiper@11/swiper-bundle.min.css" />

    <style>
        @font-face {
            font-family: 'SUIT-Regular';
            src: url('https://fastly.jsdelivr.net/gh/projectnoonnu/noonfonts_suit@1.0/SUIT-Regular.woff2') format('woff2');
        }

        * {margin: 0 auto; padding: 0; text-decoration: none; font-family: 'SUIT-Regular'; }
        
        html, body {
            position: relative;
            height: 100%;
        }

        body {
            background: #eee; 
            font-size: 14px;
            color: #000;
            margin: 0;
            padding: 0;
        }

        .swiper {
            width: 100%; 
            padding-top: 50px;
            padding-bottom: 50px;
        }

        .swiper-slide {
            background-position: center;
            background-size: cover;
            width: 300px; height: 400px; overflow: hidden;
            
        }

        .swiper-slide img { 
            display: block; width: 100%; height: 100%;
            border-radius: 18px; box-shadow: 2px 4px 12px #00000014;
            object-fit: cover;
        }
        
        /* 소개 내용 선택 구성 (센터소개 / 트레이너소개) */
        .intro-wrap > .intro-name {
            border: 0px solid #000; border-radius: 10px;
            width: 500px;  box-shadow: 2px 4px 12px #00000014;
            height: 5%; line-height: 42.5px;
            display: flex; position: relative; top: 23px;
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
            position: relative; box-shadow: 2px 4px 12px #00000014;
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

        /* 센터소개 상세내용 */
        .swiper-slide p {
            color: #fff;
            position: relative; top: -138px; width: 93%; height: 28%;
            font-weight: 400; box-shadow: 2px 4px 12px #00000014;
            padding-top: 1px; font-size: 13px;
            opacity: 0.8; background-color: rgba(255, 255, 255, 0.5); color: black;
            
        }
        .swiper-slide p:nth-of-type(1) {
            font-size: 16px; text-align: center;
            border:1px solid #e3e3e3; background-color: #000; color: white;
            border-top-left-radius: 10px; border-top-right-radius: 10px; border: none;
            padding: 5px 0; letter-spacing: 5px;
        }
        .swiper-slide p:nth-of-type(2) {
            text-align: left; text-indent: 12px;
            height: 96px;
            border-bottom-left-radius: 10px; border-bottom-right-radius: 10px;
        }

    </style>
</head>
<body>
   <jsp:include page="../include/main-navigation.jsp"/>
    
    <section>
        <div class="intro-wrap">
            <div class="intro-name">
                <a href="/PHGYM/main/introduction.main">센터소개</a>
                <a href="/PHGYM/main/trainer.main">트레이너소개</a>
            </div>
            
        </div>

        <div class="swiper mySwiper">
            <div class="swiper-wrapper">
                <div class="swiper-slide">
                    <img src="img/프리웨이트존.png" />
                    <div class="intro-content">
                        <p>프리웨이트존</p>
                        <p>프리웨이트존에 대한 내용입니다.</p>
                    </div>
                </div>
                <div class="swiper-slide">
                    <img src="img/유산소존.png" />
                    <div class="intro-content">
                        <p>유산소존</p>
                        <p>유산소존에 대한 내용입니다.</p>
                    </div>
                </div>
                <div class="swiper-slide">
                    <img src="img/pt개인지도.jpg" />
                    <div class="intro-content">
                        <p>PT개인지도</p>
                        <p>고객 스스로 목표를 설정하는 부정확한 운동방법이 아닌 체성분 분석을 통한 1:1 운동 프로그램 설계 및 상담을 통해 왜 운동을 해야 하는지에 대한 모든사항을 고려, 분석, 실행에 옮길 수 있도록 조언과 끊임없는 동기부여를 해주는 것이 PT(Personal Training)의 핵심입니다.</p>
                    </div>
                </div>
                <div class="swiper-slide">
                    <img src="img/인포데스크.jpg" />
                    <div class="intro-content">
                        <p>인포데스크</p>
                        <p>파워하우스 만의 전문 브랜드로 고객의 건강, 활력, 쾌적하고 즐거운 환경 조성 목표</p>
                    </div> 
            </div>
            <div>
                
            </div>
        </div>
        <div class="swiper-pagination"></div>
    </section>

<script src="https://cdn.jsdelivr.net/npm/swiper@11/swiper-bundle.min.js"></script>
<script>
    var swiper = new Swiper(".mySwiper", {
        effect: "coverflow",
        grabCursor: true,
        centeredSlides: true,
        slidesPerView: "auto",
        coverflowEffect: {
        rotate: 50,
        stretch: 0,
        depth: 100,
        modifier: 1, 
        slideShadows: true,
      },
      pagination: {
        el: ".swiper-pagination",
        clickable: true,
      },
    });
  </script>
  
</body>
</html>