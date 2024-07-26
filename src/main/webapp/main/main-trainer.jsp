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

        /* slide */
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
            top: 65px; width: 120%; height: 70%; border-radius: 18px; left: -95px;
        }

        .swiper-slide {
            text-align: center;
            font-size: 18px;
            display: flex; flex-direction: column; 
            justify-content: center; 
            
        }

        .swiper-slide img {
            display: block; object-fit: cover;
            width: 100%; height: 100%;
            border-top-left-radius: 18px;
            border-top-right-radius: 18px;
        }
        
        .button.button--wapasha {
            position: absolute; background-color: white;
            left: 101px; width: 180px; top: 350px;
            border-radius: 5px;
            background: #f97316;
            color: #fff;
            -webkit-transition: background-color 0.3s, color 0.3s;
            transition: background-color 0.3s, color 0.3s;
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
            display: -webkit-flex;
            display: -ms-flexbox;
            display: flex;
            -webkit-flex-wrap: wrap;
            -ms-flex-wrap: wrap;
            flex-wrap: wrap;
            -webkit-justify-content: flex-end;
            justify-content: flex-end;
        }
        .bg-1 {
            background: #ECEFF1;
            color: #37474f;
        }
        /* Common button styles */
        .button {
            float: left;
            min-width: 150px;
            max-width: 250px;
            display: block;
            margin: 1em;
            padding: 1em 2em;
            border: none;
            background: none;
            color: inherit;
            vertical-align: middle;
            position: relative;
            z-index: 1;
            -webkit-backface-visibility: hidden;
            -moz-osx-font-smoothing: grayscale;
        }
        
        .swiper-slide a:hover{
            color:#f97316
        }
        .intro-content {
            display: inline-block; width: 100%; height : 40%;
            border-bottom-left-radius: 18px;
            border-bottom-right-radius: 18px;
            background-color: #fff; line-height: 30px; 
            text-align: center; text-indent: 15px;
        }
        .intro-content p:nth-of-type(1) {
            text-align: center;
            margin-bottom: 2px; border-bottom: 1px solid #f2ded2; box-shadow: 2px 4px 12px #00000014;
        }
        
        .swiper-button-prev {
            color: #f97316;
        }
        .swiper-button-next {
            color: #f97316;
        }
        
    </style>
</head>
<body>
       <jsp:include page="../include/main-navigation.jsp"/>
    
    <script src="https://cdn.jsdelivr.net/npm/swiper@11/swiper-bundle.min.js"></script>
    <section>
        <div class="intro-wrap">
            <div class="intro-name">
                <a href="/PHGYM/main/introduction.main">센터소개</a>
                <a href="/PHGYM/main/trainer.main">트레이너소개</a>
            </div>
            
             <!-- Swiper -->
            <div class="swiper mySwiper">
                <div class="swiper-wrapper">
                    <div class="swiper-slide">
                        <img src="img/Trainer(1).webp">
                        <div class="box bg-1">
                            <button class="button button--wapasha button--round-s"> 예약하러가기 </button>
                        </div>
                        <div class="intro-content">
                            <p>✔︎ 김강함 트레이너</p>
                            <p>한국체육대학교 사회체육학과 전공</p>
                            <p>생활 스포츠 지도사 2급 (보디빌딩)</p>
                            <p>KATA ATC (한국선수트레이너협회)</p>
                            <p>NSCA 스포츠 영양코치 Level.1</p>
                            <p>현)파워하우스 퍼스널트레이너</p>
                        </div>
                    </div>
                    <div class="swiper-slide">
                        <img src="img/Trainer(2).webp">
                        <div class="box bg-1">
                            <button class="button button--wapasha button--round-s"> 예약하러가기 </button>
                        </div>
                        <div class="intro-content">
                            <p>✔︎ 김강함 트레이너</p>
                            <p>생활 스포츠 지도사 2급 (보디빌딩)</p>
                            <p>피돌로지 영양 전문가 과정 수료</p>
                            <p>독일 블랙롤 국제자격 과정 수료</p>
                            <p>2020 INFC 피지크 오픈 6위</p>
                            <p>현)파워하우스 퍼스널트레이너</p>
                        </div>
                    </div>
                    <div class="swiper-slide">
                        <img src="img/Trainer(3).jpg">
                        <div class="box bg-1">
                            <button class="button button--wapasha button--round-s"> 예약하러가기 </button>
                        </div>
                        <div class="intro-content">
                            <p>✔︎ 김강함 트레이너</p>
                            <p>계명대학교 사회체육학과 전공</p>
                            <p>생활 스포츠 지도사 2급 (보디빌딩)</p>
                            <p>생활 스포츠 지도사 2급</p>
                            <p>스포츠 마사지 1급</p>
                            <p>현)파워하우스 퍼스널트레이너</p>
                        </div>
                    </div>
                    <div class="swiper-slide">
                        <img src="img/Trainer(4).jpg">
                        <div class="box bg-1">
                            <button class="button button--wapasha button--round-s"> 예약하러가기 </button>
                        </div>
                        <div class="intro-content">
                            <p>✔︎ 김강함 트레이너</p>
                            <p>• 생활 스포츠 지도사 2급 (보디빌딩)</p>
                            <p>• 바디밸런스 필라테스 교육과정 수료</p>
                            <p>• 바디아티스트 교정운동전문가 교육 이수</p>
                            <p>• L&K 교정운동 교육과정 이수</p>
                            <p>• 현)파워하우스 퍼스널트레이너</p>
                        </div>
                    </div>
                    <div class="swiper-slide">
                        <img src="img/Trainer(5).jpg">
                        <div class="box bg-1">
                            <button class="button button--wapasha button--round-s"> 예약하러가기 </button>
                        </div>
                        <div class="intro-content">
                            <p>✔︎ 김강함 트레이너</p>
                            <p>• 앞구르기 대회 1등</p>
                            <p>• 복싱 클럽 운영</p>
                            <p>• 생활 스포츠 지도사 2급</p>
                            <p>• 스포츠 마사지 1급</p>
                            <p>• 현)파워하우스 퍼스널트레이너</p>
                        </div>
                    </div>
                    <div class="swiper-slide">
                        <img src="img/Trainer(6).jpg">
                       <div class="box bg-1">
                            <button class="button button--wapasha button--round-s"> 예약하러가기 </button>
                        </div>
                        <div class="intro-content">
                            <p>✔︎ 김강함 트레이너</p>
                            <p>• 앞구르기 대회 1등</p>
                            <p>• 복싱 클럽 운영</p>
                            <p>• 생활 스포츠 지도사 2급</p>
                            <p>• 스포츠 마사지 1급</p>
                            <p>• 현)파워하우스 퍼스널트레이너</p>
                        </div>
                    </div>
                </div>
                <div class="swiper-pagination"></div>
                <div class="swiper-button-prev"></div>
                <div class="swiper-button-next"></div>
            </div>

        </div>
    </section>

    <script>
        var swiper = new Swiper(".mySwiper", {
          slidesPerView: 3,
          spaceBetween: 30,
          pagination: {
            el: ".swiper-pagination",
            clickable: true,
          },
          navigation: {
            nextEl: '.swiper-button-next',
            prevEl: '.swiper-button-prev',
        }
        });
    </script>
    


</body>
</html>