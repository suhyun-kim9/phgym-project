<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="css/main-join-user.css">
</head>
<body>
    <section id="wrap">
        
            <div class="join_page">
                <h3>회원 계정 생성</h3>
                    <div class="left">
                        <div>
                            <img src="img/image 01.png" alt="#">
                            <button>+</button>
                        </div>
                        <button class="gender">남</button>
                        <button class="gender">여</button>
                        <div class="name">
                            <p>이름</p>
                            <input type="text" name="이름" style="text-align: left;">
                        </div>
                        <div class="date">
                            <p>생년월일</p>
                            <input type="date" name="date" style="text-align: left;">
                        </div>
                        <div class="number">
                            <p>연락처</p>
                            <input type="text" name="연락처" style="text-align: left;">
                        </div>
                    </div>

                    <div class="right">
                        <div class="">
                        <div class="id">
                            <p>아이디</p>
                            <input type="text" name="id" style="text-align: left;">
                            <button>중복확인</button>
                        </div>
                        <div class="pw">
                            <p>비밀번호</p>
                            <input type="password" name="pw" style="text-align: left;">
                        </div>
                        <div class="pw">
                            <p>비밀번호확인</p>
                            <input type="password" name="pw" style="text-align: left;">
                        </div>
                        <div class="job">
                            <p>주소</p>
                            <input type="text" name="area" style="text-align: left;">
                        </div>
                        </div>
                    </div>
                </div>
                <div class="btn2">
                    <button>가입</button>
                    <button>취소</button>
                </div>
    </section>
</body>
</html>  