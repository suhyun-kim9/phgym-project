<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.min.css">
    <link rel="stylesheet" href="../include/css/mypage-navigation.css">
    <link rel="stylesheet" href="css/mypage-checkin.css">
    <script src="js/mypage-checkin.js"></script>
</head>
<body>
    <nav>
        <ul class="main_nav">
            <a><img src="img/logo_light.webp"></a>
            <li><a> 헬스장 소개 </a></li>
            <li><a> 프로모션 </a></li>
            <li><a> 문의 / 고객센터 </a></li>
            <li><a> 오시는 길 </a></li>
            <li><a> 마이페이지 </a></li>
            <li class="gnb">  
                <!-- <input type="button" value="마이페이지"> -->
                <input type="button" value="로그아웃">
            </li>
        </ul>
    </nav>
	
    <section class="content">
        <div class="wrap">
            <p>출석체크</p>
            <p>2024-07-01</p>
            <button type="button" onclick="location.href='checkingin.mypage'" class="checkin">출석하기</button>
            <p>일단 규칙적으로 운동하면, 이것을 멈추기가 어려울 것이다. - 에린 그레이 -</p>
        </div>
    </section>
    
    <script type="text/javascript">
	    if ("${msg}" == "Y") {
			var checkin = document.querySelector(".checkin");
			console.log(checkin);
			checkin.innerHTML = "출석완료";
			checkin.disabled = true;
		}
	</script>
</body>
</html>