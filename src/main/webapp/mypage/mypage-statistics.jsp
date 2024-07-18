<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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
    <nav class="main_nav_bar">
        <ul class="main_nav">
            <a><img src="../include/img/logo-light2.png"></a>
            <li><a> 헬스장 소개 </a></li>
            <li><a> 프로모션 </a></li>
            <li><a> 문의 / 고객센터 </a></li>
            <li><a> 오시는 길 </a></li>
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

    <section class="content">
        <div class="wrap">
        	<p>출석통계</p>
            <div class="graph_box">
                <div class="left">
                    <canvas id="myChart1"></canvas>
                    <p>요일별 출석률</p>
                </div>
                <div class="right">
                    <canvas id="myChart2"></canvas>
                    <p>시간별 출석률</p>
                </div>
            </div>

            <div class="checkin_list">
                <p>출석내역</p>
                <div>
	                <table>
	                    <tr>
	                        <th>출석일자</th>
	                        <th>출석시간</th>
	                        <th>회원권 기간</th>
	                        <th>비고</th>
	                    </tr>
	                    <c:forEach var="list" items="${checkinList}">
	                    	<tr>
		                        <td>${list.checkinDate}</td>
		                        <td>${list.checkinTime}</td>
		                        <td>${list.startDate} ~ ${list.endDate}</td>
		                        <td>-</td>
		                    </tr>
	                    </c:forEach>
	                </table>
                </div>
            </div>
        </div>
    </section>
    
    <script src="https://cdn.jsdelivr.net/npm/chart.js"></script>
    <script>
		const ctx1 = document.getElementById('myChart1');
			
		new Chart(ctx1, {
			type: 'bar',
			data: {
				labels: ['월', '화', '수', '목', '금', '토', '일'],
				datasets: [{
					label: 'Percent',
					data: [12, 19, 3, 5, 2, 3, 2],
					backgroundColor: [
	                    'rgba(255, 99, 132, 0.2)',
	                    'rgba(54, 162, 235, 0.2)',
	                    'rgba(255, 206, 86, 0.2)',
	                    'rgba(75, 192, 192, 0.2)',
	                    'rgba(153, 102, 255, 0.2)',
	                    'rgba(255, 159, 64, 0.2)',
	                    'rgba(144, 238, 144, 0.2)'
	                ],
	                borderColor: [
	                    'rgba(255, 99, 132, 1)',
	                    'rgba(54, 162, 235, 1)',
	                    'rgba(255, 206, 86, 1)',
	                    'rgba(75, 192, 192, 1)',
	                    'rgba(153, 102, 255, 1)',
	                    'rgba(255, 159, 64, 1)',
	                    'rgba(34, 139, 34, 1)'
	                ],
					borderWidth: 1
				}]
			},
			options: {
				scales: {
					y: {
						beginAtZero: true
					}
				}
			}
		});
		
		const ctx2 = document.getElementById('myChart2');
		
		new Chart(ctx2, {
			type: 'bar',
			data: {
				labels: ['0~4시', '4~8시', '8~12시', '12~16시', '16~20시', '20~24시'],
				datasets: [{
					label: 'Percent',
					data: [12, 19, 3, 5, 2, 3],
					backgroundColor: [
	                    'rgba(255, 99, 132, 0.2)',
	                    'rgba(54, 162, 235, 0.2)',
	                    'rgba(255, 206, 86, 0.2)',
	                    'rgba(75, 192, 192, 0.2)',
	                    'rgba(153, 102, 255, 0.2)',
	                    'rgba(255, 159, 64, 0.2)'
	                ],
	                borderColor: [
	                    'rgba(255, 99, 132, 1)',
	                    'rgba(54, 162, 235, 1)',
	                    'rgba(255, 206, 86, 1)',
	                    'rgba(75, 192, 192, 1)',
	                    'rgba(153, 102, 255, 1)',
	                    'rgba(255, 159, 64, 1)'
	                ],
					borderWidth: 1
				}]
			},
			options: {
				scales: {
					y: {
						beginAtZero: true
					}
				}
			}
		});
	</script>
    <script type="text/javascript" src="../include/js/main-navigation.js"></script>
</body>
</html>