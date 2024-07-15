<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>

    <style>
        @font-face {
            font-family: 'SUIT-Regular';
            src: url('https://fastly.jsdelivr.net/gh/projectnoonnu/noonfonts_suit@1.0/SUIT-Regular.woff2') format('woff2');
            font-weight: 500;
            font-style: normal;
        }

        * {margin: 0 auto; padding: 0; text-decoration: none; font-family: 'SUIT-Regular';}
        

        /* 전체 틀 */
        .list-wrap {
            position: relative;
            width: 1024px;
            border: 0px solid green;
        }


        /* 프로모션 */
        .list-wrap > .prom {
            display: flex;
            height: 400px;
            justify-content: space-between;
        }
        .list-wrap > .prom > div {
            text-align: center;
            display: inline-block;
            border: 1px solid black;
            border-radius: 10px;
            height: 100%; width: 23%;
        }
        .list-wrap > .prom img {
            width: 50%; height: 30%;
            border: 2px solid #000; border-radius: 10px;
            position: relative; top: 10px;
        }

        .list-wrap > .prom p:nth-of-type(1) {
            border: 1px solid #000; background-color: pink; border-radius: 10px;
            position: relative; top: 20px; width: 50%; font-weight: 600;
        }
        .list-wrap > .prom p:nth-of-type(2) {
            position: relative; top: 30px; height: 35%; 
        }
        .list-wrap > .prom p:nth-of-type(3) {
            position: relative; top: 30px; font-weight: 600;
        }
        .list-wrap > .prom button {
            position: relative; top: 50px;
            width: 80%; background-color: #000; color: #fff;
            font-size: 15px; border-radius: 10px;
        }

    </style>

</head>
<body>

    <div>
        <div class="list-wrap">
            <div class="prom">
                <div>
                    <img src="img/소심.WEBP" alt="">
                    <p>연말프로모션</p>
                    <p>
                        헬스복/수건 무상제공<br>
                        개인락커 무상제공<br>
                        무제한 입장 가능<br>
                        12개월 회원권 PT 2회 추가 증정<br>
                        회원 멤버십가 우선 제공 기회
                    </p>
                    <p>￦360,000 / 12개월</p>
                    <button type="submit">선택</button>
                </div>
                <div>
                    <img src="img/까칠.WEBP" alt="">
                    <p>기본 정액가</p>
                    <p>
                        헬스복/수건 무상제공<br>
                        개인락커 무상제공<br>
                        무제한 입장 가능<br>
                        6개월 회원권 PT 1회 추가 증정<br>
                        회원 멤버십가 우선 제공 기회
                    </p>
                    <p>￦240,000 / 6개월</p>
                    <button type="submit">선택</button>
                </div>
                <div>
                    <img src="img/부럽.WEBP" alt="">
                    <p>일일이용권</p>
                    <p>
                        헬스복/수건 무상제공<br>
                        개인락커 무상제공<br>
                        1일 한도 내 무제한 입장 가능<br>
                        이용 당일 회원권 결제 시 2주 추가 증정
                    </p>
                    <p>￦15,000 / 1일</p>
                    <button type="submit">선택</button>
                </div>
                <div>
                    <img src="img/슬픔.WEBP" alt="">
                    <p>PT회원권</p>
                    <p>
                        헬스복/수건 무상제공<br>
                        개인락커 무상제공<br>
                        무제한 입장 가능<br>
                        30회 결제 시 PT 추가 증정 이벤트
                    </p>
                    <p>￦50,000 / 회</p>
                    <button type="submit">선택</button>
                </div>

            </div>
        </div>
    </div>



</body>
</html>