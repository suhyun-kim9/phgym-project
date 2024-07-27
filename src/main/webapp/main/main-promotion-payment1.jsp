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
        position: relative; top: 50px;
        border: 0px solid #000;
        width: 1024px; height: 670px;
    }
    /* 주문 결제 이름 상단바 */
    .pay-wrap > p {
        border: 0px solid #000; font-size: 30px; font-weight: 700;
    }
    .pay-wrap .prom-name {
        border-top: 3px solid #000;
        border-bottom: 3px solid #000;
        width: 100%; height: 60px; line-height: 60px;
        position: relative; top: 20px; text-indent: 10px;
        font-size: 20px;
    }

    /* 결제 정보 내역 (왼쪽) */
    .pay-wrap > .content {
        display: inline-block; font-size: 15px; 
        width: 50%; height: 67%; position: relative; top: 20px;
    }
    .pay-wrap > .content a {
        display:block; position: relative; top: 5px; text-indent: 6px;
    }
    .pay-wrap > .content > div {
        border: 0px solid palevioletred;
        margin: 30px 0px 0px 50px; 
    }
    .pay-wrap > .content > div:nth-of-type(2) {
        position: relative;
    }
    .pay-wrap > .content input{
        width: 300px; height: 25px; margin-top: 7px; position: relative; text-indent: 6px;
    }
    

    /* 결제 정보 내역 (오른쪽) */
    #right {
        /* border-top: 2px solid black;
        border-bottom: 2px solid black;  */
        /* border: 1px solid blue; */
        left: 505px; top: -443px;
        margin: 10px; width : 49.5%; height: 67%;
        display: inline-block; font-size: 15px; position: relative; 
    }
    #right > div {
        border: 0px solid palevioletred;
        margin: 30px 0px 0px 50px; 
    }
    #right a {
        display:block; position: relative; top: 5px; text-indent: 6px;  
    }
    #right > div:nth-of-type(2) {
        position: relative;
    }

    #right input{
        width: 300px; height: 25px; margin-top: 7px; position: relative; text-indent: 6px;
    }
    #right select {
        display: inline-block;
        width: 27%; height: 25%;
    }

    /* 제출하기 버튼 */
    .button.button--wapasha {
        border-radius: 5px; background: #f97316; color: #fff; 
        top: -155px; left: 390px;
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
        margin-top: 100px;
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
        color: #37474f; width : 250px; top: -150px; left: -185px;
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
    </style>
    
</head>

<body>
   
   <jsp:include page="../include/main-navigation.jsp"/>
    
   <form action="promotion-payment1.main" method="post">
     <div class="pay-wrap">
        <p> ✔︎ 주문결제</p>
        <div class="prom-name">연말프로모션(12개월)</div>
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
                    <a>회원권 이용 기간</a>
                    <div>
                        <input type="date" name="startDate" id="startDate" onchange="onChangeCal(this)">
                        <a> ~ </a>
                        <input type="date" name="endDate" id="endDate" readonly>
                    </div>
                </div>
            </div>
            <div id="right">
                <div class="pay-method">
                    <a>결제방법</a>
                    <input type="text" name="payMethod" placeholder="직접 입력"  id="payMethod">
                    <select size="1" class="method-list" onchange="myMethod(this.value)">
                        <option value="선택하세요">선택하세요</option>
                        <option value="무통장 입금">무통장 입금</option>
                        <option value="카드 결제">카드 결제</option>
                        <option value="실시간 계좌이체">실시간 계좌이체</option>
                        <option value="카카오페이">카카오페이</option>
                        <option value="네이버페이">네이버페이</option>
                        <option value="토스페이">토스페이</option>
                    </select>
                </div>
                <div>
                    <a>결제금액</a>
                    <input type="text" name="payAmount" value="360000" readonly>
                </div>
                <div class="refund-name">
                    <a>환불은행명</a>
                    <input type="text" name="refundBankname" placeholder="직접 입력" id="refundBankname">
                    <select size="1" class="name-list" onchange="myBank(this.value)">
                        <option value="선택하세요">선택하세요</option>
                        <option value="국민은행">국민은행</option>
                        <option value="농협은행">농협은행</option>
                        <option value="신한은행">신한은행</option>
                        <option value="우리은행">우리은행</option>
                        <option value="카카오뱅크">카카오뱅크</option>
                        <option value="토스뱅크">토스뱅크</option>
                    </select>
                </div>
                <div>
                    <a>환불계좌</a>
                    <input type="text" name="refundBankAccount">
                </div>
            </div>
        </div>
        <div class="box bg-1">
            <button class="button button--wapasha button--round-s">결제하기</button>
        </div>
    </div>  
    </form>

	

<script type="text/javascript" src="js/main-promotion-payment.js"></script>
<script type="text/javascript" src="../include/js/main-navigation.js"></script>
</body>
</html>