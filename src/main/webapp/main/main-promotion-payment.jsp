<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="../include/css/main-navigation.css">
    
    <style>
    @font-face {
        font-family: 'SUIT-Regular                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                             ';
        src: url('https://fastly.jsdelivr.net/gh/projectnoonnu/noonfonts_suit@1.0/SUIT-Regular.woff2') format('woff2');
        font-weight: 500;
        font-style: normal;
    }

    * {margin: 0 auto; padding: 0; text-decoration: none; font-family: 'SUIT-Regular';}
    
    /* 전체 틀 */
    .pay-wrap {
        border: 0px solid #000;
        width: 1024px; height: 850px;
    }

    /* 주문 결제 상단바 */
    .pay-wrap > p {
        border: 0px solid #000; font-size: 30px; font-weight: 700;
    }


    /* 결제 정보 내역 */
    .pay-wrap > .content {
        border: 2px solid #000; border-radius: 10px;
        display: inline-block; font-size: 25px;
        width: 100%; height: 80%; position: relative; top: 20px;
    }
    .pay-wrap > .content > div {
        margin: 20px;
    }
    .pay-wrap > .content input{
        width: 400px; height: 40px;
    }
    

    /* 제출하기 버튼 */
    .pay-wrap > button {
        position: relative; top: 70px; left: 800px;
        border: 2px solid #000; border-radius: 10px;
        width: 20%; background-color: #f97316; color: #000;
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
    
   <form action="promotion-payment.main" method="post">
     <div class="pay-wrap">
        <p>주문결제</p>
          <div class="content">
            <div>
                <a>이름</a>
                <input type="text" name="name" value="${result.name}" disabled="disabled">
            </div>
            <div>
                <a>연락처</a>
                <input type="text" name="phone" value="${result.phone}" disabled="disabled">
            </div>
            <div>
                <a>이메일</a>
                <input type="text" name="email" value="${result.email}" disabled="disabled">
            </div>
            <div>
                <a>이용가능기간</a>
                <div>
                    <input type="date" name="startDate" id="startDate">
                    <a> ~ </a>
                    <input type="date" name="endDate" id="endDate">
                </div>
            </div>
            <div>
                <a>결제방법</a>
                <input type="text" name="payMethod">
            </div>
            <div>
                <a>상품금액</a>
                <input type="text" name="payAmount">
            </div>
            <div>
                <a>환불은행명</a>
                <input type="text" name="refundBankname">
            </div>
            <div>
                <a>환불계좌</a>
                <input type="text" name="refundBankAccount">
            </div>
        </div>
        <input type="submit" value="결제하기"/>
        <input type="reset" value="취소하기"/>
    </div>  
   </form>
<script type="text/javascript" src="../include/js/main-navigation.js"></script>
</body>
</html>