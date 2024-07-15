<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="css/mypage-checkin.css">
    <link  rel="stylesheet" href="nav/mypage-navigation.css">
    <link  rel="stylesheet" href="nav/test.css">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.min.css">
</head>

<body>


    
    <nav>
        <ul class="main_nav">
            <a><img src="nav/logo_light.webp"></a>
            <li> <a> 헬스장 소개 </a> </li>
            <li> <a> 프로모션 </a> </li>
            <li> <a> 문의 / 고객센터 </a> </li>
            <li> <a> 오시는 길 </a> </li>

            <li class="gnb">  
                <input type="button" value="마이페이지">
                <input type="button" value="로그아웃">
            </li>
        </ul>

    </nav>

<div class="content1">


    <div class="my_navigation_bar">
        <ul class="my_nav">
            <li> <i class="bi bi-chat-left-text"></i><a> 문의 페이지 </a> </li>
            <li>  <i class="bi bi-bell"></i> <a> 공지사항 </a> </li>
            <li> <i class="bi bi-archive"></i> <a> 운동정보</a> </li>
        </ul>
    </div>

</div>
    <section class="content">
        <div class="wrap">
            <p>출석체크</p>
            <p>2024-07-01</p>
            <button type="button" onclick="location.href='checkin.mypage'">출석하기</button>${msg}
            <p>일단 규칙적으로 운동하면, 이것을 멈추기가 어려울 것이다. - 에린 그레이 -</p>
            test test test
        </div>
    </section>
</body>

</html>