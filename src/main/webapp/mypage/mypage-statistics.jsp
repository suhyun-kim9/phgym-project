<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.min.css">
    <link rel="stylesheet" href="../include/css/main-navigation.css">
    <link rel="stylesheet" href="css/mypage-statistics.css">
</head>
<body>
	<nav>
        <ul class="main_nav">
            <a><img src="../include/img/logo-light2.png"></a>
            <li><a> 헬스장 소개 </a></li>
            <li><a> 프로모션 </a></li>
            <li><a> 문의 / 고객센터 </a></li>
            <li><a> 오시는 길 </a></li>
            <li class="dropdown"><a> 마이페이지 </a><i class="bi bi-caret-down-fill"></i></li>
            <ul class="dropdownContent">
            	<li><i class="bi bi-check-lg"></i><a href="/PHGYM/mypage/checkin.mypage"> 출석체크 </a></li>
				<li><i class="bi bi-bar-chart-line"></i><a> 통계확인 </a></li>
				<li><i class="bi bi-calendar-check"></i><a> PT예약하기 </a></li>
				<li><i class="bi bi-send"></i><a href="/PHGYM/mypage/transfer.mypage"> 회원권양도 </a></li>
				<li><i class="bi bi-person-circle"></i><a> 회원정보 </a></li>
            </ul>
            <li class="gnb">  
                <!-- <input type="button" value="마이페이지"> -->
                <input type="button" value="로그아웃">
            </li>
        </ul>
    </nav>

    <section class="content">
        <div class="wrap">
            <div class="graph_box">
                <div class="left">
                    <img src="img/arrow-1295953_1920.png" alt="그래프">
                    <p>요일별 출석률</p>
                </div>
                <div class="right">
                    <img src="img/arrow-1295953_1920.png" alt="그래프">
                    <p>시간별 출석률</p>
                </div>
            </div>

            <div class="checkin_list">
                <p>출석내역</p>
                <table>
                    <tr>
                        <th>일자</th>
                        <th>시간</th>
                        <th>회원권기간</th>
                        <th>비고</th>
                    </tr>
                    <tr>
                        <td>2024-07-01</td>
                        <td>17:30:00</td>
                        <td>2024-07-01 ~ 2024-07-31</td>
                        <td>-</td>
                    </tr>
                </table>
            </div>
        </div>
    </section>
    
    <script type="text/javascript" src="../include/js/main-navigation.js"></script>
</body>
</html>