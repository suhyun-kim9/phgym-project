<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>

    <link  rel="stylesheet" href="../include/css/main-navigation.css">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.min.css">

    <!--  css 넣으세여 !  -->
</head>
<body>
        
    <nav class="main_nav_bar">
        <ul class="main_nav">
            <a><img src="img/logo-light2.png"></a>
            <li> <a> 헬스장 소개 </a> </li>
            <li> <a> 프로모션 </a> </li>
            <li> <a> 문의 / 고객센터 </a> </li>
            <li> <a> 오시는 길 </a> </li>
            <li class="dropdown"> <a> 마이페이지 </a> <i class="bi bi-caret-down-fill"></i> </li>
            <ul class="dropdownContent">
                <li><i class="bi bi-check-lg"></i><a href="/PHGYM/mypage/checkin.mypage"> 출석체크 </a></li>
            	<li><i class="bi bi-bar-chart-line"></i><a> 통계확인 </a></li>
				<li><i class="bi bi-calendar-check"></i><a> PT예약하기 </a></li>
				<li><i class="bi bi-send"></i><a href="/PHGYM/mypage/transfer.mypage"> 회원권양도 </a></li>
				<li><i class="bi bi-person-circle"></i><a> 회원정보 </a></li>
            </ul>

            <li class="gnb">  
                <!-- <input type="button" value="마이페이지"> -->
                <!-- <input type="button" value="회원가입"> -->
                <input type="button" value="로그아웃">
            </li>
            <div class="animation"> </div>
        </ul>
        
    </nav>


    <!--  여기 아래에 넣으세요!  -->
    <section>



    </section>
    
    
    <script type="text/javascript" src="js/main-navigation.js"> </script>
</body>
</html>