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
		    font-weight: normal;
		    font-style: normal;
		    
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
            padding-top: 65px;
            padding-bottom: 100px;
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
            display: flex; position: relative; top: 25px; margin: auto;
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
            padding-top: 1px; font-size: 13px; margin-left: 10px;
            background-color: rgba(255, 255, 255, 0.5); color: black;
            
        }
        .swiper-slide p:nth-of-type(1) {
            font-size: 16px; text-align: center;
            border:1px solid #e3e3e3; background-color: #000; color: white;
            border-top-left-radius: 10px; border-top-right-radius: 10px; border: none;
            padding: 5px 0; letter-spacing: 5px;
        }
        .swiper-slide p:nth-of-type(2) {
            text-align: left; text-indent: 12px; height: 96px;
            border-bottom-left-radius: 10px; border-bottom-right-radius: 10px;
        }
        .swiper-pagination-bullets.swiper-pagination-horizontal {
        	top: 650px;
        }

    </style>
    <link rel="stylesheet" href="../include/css/main-footer.css">
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
                        <p>강한 몸, 강한 마음! 프리웨이트존에서 만들어보세요!
                            "자유롭게 무게를 다루며 진정한 힘을 키워보세요. 체계적인 운동 프로그램과 다양한 무게 기구가 준비된 프리웨이트존에서 최상의 훈련을 경험하세요. 프리웨이트존에서 당신의 한계를 넘어보세요!"</p>
                    </div>
                </div>
                <div class="swiper-slide">
                    <img src="img/유산소존.png" />
                    <div class="intro-content">
                        <p>유산소존</p>
                        <p>유산소 운동의 모든 것, 유산소존에서 만나보세요!
                            "다양한 유산소 기구와 전문가의 맞춤형 운동법! 체계적인 운동 프로그램과 최신 시설이 준비된 유산소존에서 건강한 라이프스타일을 시작하세요."</p>
                    </div>
                </div>
                <div class="swiper-slide">
                    <img src="img/pt개인지도.jpg" />
                    <div class="intro-content">
                        <p>PT개인지도</p>
                        <p>고효율적인 운동, 최상의 결과! PT 개인지도! 전문가의 섬세한 코칭으로 더 빠르고 안전하게 목표를 달성하세요. 시간을 절약하고 최고의 결과를 얻고 싶다면 PT 개인지도가 답입니다. 지금 바로 체험해보세요!</p>
                    </div>
                </div>
                <div class="swiper-slide">
                    <img src="img/인포데스크.jpg" />
                    <div class="intro-content">
                        <p>인포데스크</p>
                        <p>도움이 필요하세요? 인포데스크가 함께합니다! 운동에 대한 문의, 시설 이용 안내, 회원 등록까지! 인포데스크에서 친절한 상담과 완벽한 지원을 약속드립니다.</p>
                    </div> 
                </div>
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
  <jsp:include page="../include/main-footer.jsp"/>
</body>
</html>