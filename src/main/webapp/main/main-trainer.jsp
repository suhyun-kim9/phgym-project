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
        .intro-wrap > .intro-profile {
            border: 0px solid black; display: flex;
            position: relative; top: 100px;
            width: 100%; height: 200px;
            margin-bottom: 30px;
        }
        .intro-wrap > .intro-profile img {
            border: 2px solid black; border-radius: 10px;
            position: relative; width: 250px; height: 200px; right: -50px;
        }
        .intro-wrap > .intro-profile > .intro-content {
            border: 2px solid black; border-radius: 10px;
            display: inline-block; width: 650px; height: 200px;
        }
        .intro-wrap > .intro-profile > .intro-content > p {
            margin: 9px; text-indent: 5px; position: relative; top: 5px;
        }
        .intro-wrap > .intro-profile > .intro-content > p:nth-of-type(1) {
            background-color: #f97316; width: 140px; height: 25px; border-radius: 5px;
            position: relative; text-indent: 7px; top: 3px; left: 3px; line-height: 25px;
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
            
            <div class="intro-profile">
                <div>
                  <img src="img/Trainer(1).webp">
                </div>
                <div class="intro-content">
                  <p>✔︎ 김강함 트레이너</p>
                  <p>• 한국체육대학교 사회체육학과 전공</p>
                  <p>• 생활 스포츠 지도사 2급 (보디빌딩)</p>
                  <p>• KATA ATC (한국선수트레이너협회)</p>
                  <p>• NSCA 스포츠 영양코치 Level.1</p>
                  <p>• 현)파워하우스 퍼스널트레이너</p>
                </div>
            </div>
            <div class="intro-profile">
                <div>
                  <img src="img/Trainer(2).webp">
                </div>
                <div class="intro-content">
                  <p>✔︎ 김강함 트레이너</p>
                  <p>• 생활 스포츠 지도사 2급 (보디빌딩)</p>
                  <p>• 피돌로지 영양 전문가 과정 수료</p>
                  <p>• 독일 블랙롤 국제자격 과정 수료</p>
                  <p>• 2020 INFC 피지크 오픈 6위</p>
                  <p>• 현)파워하우스 퍼스널트레이너</p>
                </div>
            </div>
            <div class="intro-profile">
                <div>
                  <img src="img/Trainer(3).jpg">
                </div>
                <div class="intro-content">
                  <p>✔︎ 김강함 트레이너</p>
                  <p>• 계명대학교 사회체육학과 전공</p>
                  <p>• 생활 스포츠 지도사 2급 (보디빌딩)</p>
                  <p>• 생활 스포츠 지도사 2급</p>
                  <p>• 스포츠 마사지 1급</p>
                  <p>• 현)파워하우스 퍼스널트레이너</p>
                </div>
            </div> 
            <div class="intro-profile">
                <div>
                  <img src="img/Trainer(4).jpg">
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
            <div class="intro-profile">
                <div>
                  <img src="img/Trainer(5).jpg">
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
    </section>



</body>
</html>