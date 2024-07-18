<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

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
    
   <form action="promotion-payment.main" method="post">
    <div class="pay-wrap">
        <p>주문결제</p>
         <div class="content">
            <div>
                <a>이름</a>
                <input type="text" name="id">
            </div>
            <div>
                <a>연락처</a>
                <input type="text" name="phone">
            </div>
            <div>
                <a>이메일</a>
                <input type="text" name="email">
            </div>
            <div>
                <a>이용가능기간</a>
                <div>
                    <input type="date" name="first-date">
                    <a> ~ </a>
                    <input type="date" name="last-date">
                </div>
            </div>
            <div>
                <a>결제방법</a>
                <input type="text" name="method">
            </div>
            <div>
                <a>상품금액</a>
                <input type="text" name="price">
            </div>
            <div>
                <a>구매수량</a>
                <input type="number" name="number">
            </div>
            <div>
                <a>최종결제금액</a>
                <input type="text" name="total">
            </div>
        </div> 
        <input type="submit" value="결제하기"/>
        <input type="reset" value="취소하기"/>
    </div>
   </form>


<script type="text/javascript" src="../include/js/main-navigation.js"></script>
</body>
</html>