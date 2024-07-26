<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
    
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
	<link  rel="stylesheet" href="css/test.css">
    <link  rel="stylesheet" href="../include/css/main-navigation.css">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.min.css">
    
	
</head>
<body>
        
<%@ include file="../include/main-navigation.jsp" %>

    
    <section>
        <div class="intro-wrap">
            <div class="intro-name">
                <a href="/PHGYM/main/introduction.main">센터소개</a>
                <a href="/PHGYM/main/trainer.main">트레이너소개</a>
            </div>
            <div class="intro-content">
                <div>
                    <img src="../main/img/프리웨이트존.png" alt="">
                    <p>프리웨이트존</p>
                    <p>프리웨이트존에 대한 내용~~</p>
                </div>
                <div>
                    <img src="../main/img/유산소존.png" alt="">
                    <p>유산소존</p>
                    <p>유산소존에 대한 내용~~</p>
                </div>
                <div>
                    <img src="../main/img/pt개인지도.jpg" alt="">
                    <p>PT 개인지도</p>
                    <p>
                    	1.상담 -> 2.PT배정 -> 3.기초체력측정 -> 4.프로그램설계 -> 5.시행 -> 6.정기적관리
                    </p>
                </div>
                <div>
                    <img src="../main/img/인포데스크.jpg" alt="">
                    <p>인포데스크</p>
                    <p>인포데스크에 대한 내용~~</p>
                </div>
            </div>
        </div>
    </section>



</body>
</html>