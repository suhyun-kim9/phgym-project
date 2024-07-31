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
	    font-family: 'SUIT-Regular';
	    src: url('https://fastly.jsdelivr.net/gh/projectnoonnu/noonfonts_suit@1.0/SUIT-Regular.woff2') format('woff2');
	    font-weight: normal;
	    font-style: normal;
	    
	}

    * {margin: 0 auto; padding: 0; text-decoration: none; font-family: 'SUIT-Regular';}
    
    /* 전체 틀 */
    .pay-wrap {
        position: relative; top: 50px;
        border: 0px solid #000;
        width: 1024px; height: 670px; margin-left: 300px;
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
        border: 0px solid red;
        display: inline-block; font-size: 15px; 
        width: 97%; height: 16%; position: relative; top: 30px;
    }
    .pay-wrap > .content p {
        border-bottom: 1px solid #000;
        margin: 10px 0px 0px 30px; font-size: 15px;
    }
    .pay-wrap > .content a {
        display: inline; letter-spacing: 3px; font-size: 13px;
    }
    .pay-wrap > .content > div {
        display: inline-block;
        border: 0px solid palevioletred; width: 28%; 
        margin: 20px 0px 0px 40px; 
    }

    .pay-wrap > .content input{
        border: 1px solid #e3e3e3;
        width: 200px; height: 25px; display: inline-block;
        position: relative; text-indent: 6px;
    }
    .pay-wrap > .content > div:nth-of-type(4) {
        display: inline-block; width: 80%;
    }
    .pay-wrap > .content > div:nth-of-type(4) > div {
        position: relative; left: 135px; bottom: 20px;
    }
    
    .pay-wrap > .content > div:nth-of-type(4) input {
        display: inline-block; width: 150px;
    }

    /* 결제 정보 내역 (오른쪽) */
    #right {
        border: 0px solid red;
        display: inline-block; font-size: 15px; 
        width: 97%; height: 25%; position: relative; top: 30px;
    }
    #right p {
        border-bottom: 1px solid #000;
        margin: 10px 0px 0px 30px; font-size: 15px;
    }
    #right > div {
        display: inline-block;
        border: 0px solid palevioletred; width: 45%; 
        margin: 20px 0px 0px 40px; 
    }
    #right a {
        display: inline; letter-spacing: 3px;  font-size: 13px;
    }

    #right input{
        border: 1px solid #e3e3e3;
        width: 200px; height: 25px; display: inline-block;
        position: relative; text-indent: 6px;
    }
    #right select {
        display: inline-block; 
        width: 23%; height: 25px; border: 1px solid #e3e3e3;
    }

    .refund-notice {
        border: 0px solid red;
        display: inline-block; font-size: 15px; 
        width: 97%; height: 32%; position: relative; top: 50px;
    }
    .refund-notice p:nth-of-type(1) {
        border-bottom: 1px solid #000;
        margin: 10px 0px 0px 30px; font-size: 15px; font-weight: 600;
    }
    .refund-notice p {
        margin: 10px 0px 0px 30px; font-size: 12px; font-weight: 300;
    }
	.agree {
		position: relative; top: 80px; width: 155px; left: 660px;
		font-size: 13px; font-weight: 300;
	}
	.agree input {
		margin-right: 5px;
	}

    .period {
        color: #777; font-size: 10px;
    }
    /* 제출하기 버튼 */
    .button.button--wapasha {
        border-radius: 5px; background: #f97316; color: #fff; 
        bottom: 86px; left: 1055px;
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
    
   <form action="promotion-payment4.main" method="post">
        <div class="pay-wrap">
           <p> ✔︎ 주문결제</p>
           <div class="prom-name">PT회원권</div>
               <div class="content">
                   <p>기본 정보</p>
                   <div>
                       <a>이름</a> 
                       <input type="text" name="name" value="${result.userName}" disabled="disabled">
                   </div>
                   <div>
                       <a>연락처</a>
                       <input type="text" name="phone" value="${result.userPhone}" disabled="disabled">
                   </div>
                   <div>
                       <a>이메일</a>
                       <input type="text" name="email" value="${result.userEmail}" disabled="disabled">
                   </div>
               </div>
               <div id="right">
                   <p>결제 정보</p>
                   <div>
                        <a>PT 개수</a>
                        <input type="number" name="payCnt" value="1" id="payCnt" onchange="myCnt(this.value)" required>
                   </div>
                   <div>
                       <a>결제금액</a>
                       <input type="text" name="payPrice" value="50000" id="payPrice" readonly>
                   </div>
                   <div class="pay-method">
                       <a>결제방법</a>
                       <input type="text" name="payMethod" id="payMethod" required disabled>
                       <select size="1" class="method-list" name="methodBox">
                           <option value="선택하세요">선택하세요</option>
                           <option value="무통장 입금">무통장 입금</option>
                           <option value="카드 결제">카드 결제</option>
                           <option value="실시간 계좌이체">실시간 계좌이체</option>
                           <option value="카카오페이">카카오페이</option>
                           <option value="네이버페이">네이버페이</option>
                           <option value="토스페이">토스페이</option>
                           <option value="direct">직접입력</option>
                       </select>
                   </div>
                   
                   <div class="refund-name">
                       <a>환불은행</a>
                       <input type="text" name="refundBankname" id="refundBankname" required disabled>
                       <select size="1" class="name-list" name="nameBox">
                           <option value="선택하세요">선택하세요</option>
                           <option value="국민은행">국민은행</option>
                           <option value="농협은행">농협은행</option>
                           <option value="신한은행">신한은행</option>
                           <option value="우리은행">우리은행</option>
                           <option value="카카오뱅크">카카오뱅크</option>
                           <option value="토스뱅크">토스뱅크</option>
	                       <option value="direct">직접입력</option>
                       </select>
                   </div>
                   <div>
                       <a>환불계좌</a>
                       <input type="text" name="refundBankAccount" class="refundBankAccount" required>
                   </div>
               </div>
               <div class="refund-notice">
                   <p>환불 규정</p>
                   <p>제 1조. 본 회원권은 본인만 사용 가능합니다.</p>
                   <p>제 2조. 본 약관은 회원이 센터 회원으로 가입한 날부터 효력을 갖습니다.</p>
                   <p>제 3조. 귀중품은 반드시 근무자에게 보관 요청하고, 그 외 개인 소지 후 분실 시에는 책임을 지지 않습니다.</p>
                   <p>제 4조. 개인 락커를 이용하는 회원은 등록기간 만료와 동시에 개인 락커를 정리해야합니다.</p>
                   <p>제 5조. 시설물 훼손 시 원상복구하여 이에 따른 비용은 훼손자가 부담합니다.</p>
                   <p>제 6조. 덤벨 및 바벨 사용 . 후정리하여야 하며 다른 사람에게 불편을 줄 수 있는 행동은 삼가해야합니다.</p>
                   <p>제 7조. 센터 시설의 문제로 인한 사고 외 개인 부주의로 인한 사고 책임은 개인에게 있음을 명시합니다.</p>
               </div>
               <div class="agree">
            	<input type='checkbox' required>이용 약관에 동의해주세요.
            </div>
           </div>
           <div class="box bg-1">
               <input type="submit" value="결제하기" onclick="return check()" class="button button--wapasha button--round-s">
           </div>
       </div>  
       </form>

<script type="text/javascript">
	function check() {
		var payMethod = document.getElementById("payMethod");
		if(payMethod.value == null || payMethod.value == "") {
			alert("결제방법을 입력해주세요.");
			return;
		}
		
		var refundBankname = document.getElementById("refundBankname");
		if(refundBankname.value == null || refundBankname.value == "") {
			alert("환불은행을 입력해주세요.");
			return;
		}
		
		var regex = /^\d+-\d+-\d+$/;
		var refundBankAccount = document.querySelector(".refundBankAccount");
		if(!regex.test(refundBankAccount.value)) {
			alert("계좌번호를 올바른 형식으로 입력해주세요.");
			return false;
		}
	}
</script>
<script type="text/javascript" src="js/main-promotion-payment.js"></script>
<script type="text/javascript" src="js/main-promotion-payment4.js"></script>
<script type="text/javascript" src="../include/js/main-navigation.js"></script>
</body>
</html>