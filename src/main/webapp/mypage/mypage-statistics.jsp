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
    <jsp:include page="../include/main-navigation.jsp"/>

    <section class="content">
	    <div class="wrap-top">
	   		<h2>통계확인</h2>
	   		<p></p>
	   	</div>
        <div class="wrap-middle">
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

            <p>출석내역</p>
            <div class="checkin_list">
                <table>
                    <tr>
                    	<th>No</th>
                        <th>출석일자</th>
                        <th>출석시간</th>
                        <th>비고</th>
                    </tr>
                    <c:forEach var="list" items="${checkinList}">
                    	<tr>
                    		<td>${list.no}</td>
	                        <td>${list.checkinDate}</td>
	                        <td>${list.checkinTime}</td>
	                        <td>-</td>
	                    </tr>
                    </c:forEach>
                </table>
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
					label: 'Percent(%)',
					data: [${dayPercent[0]}, ${dayPercent[1]}, ${dayPercent[2]}, ${dayPercent[3]}, ${dayPercent[4]}, ${dayPercent[5]}, ${dayPercent[6]}],
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
					label: 'Percent(%)',
					data: [${timePercnet[0]}, ${timePercnet[1]}, ${timePercnet[2]}, ${timePercnet[3]}, ${timePercnet[4]}, ${timePercnet[5]}],
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
</body>
</html>