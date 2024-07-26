<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>회원 로그인</title>
<link rel="stylesheet" href="../include/css/main-navigation.css">
<link rel="stylesheet" href="css/main-login-user.css">

<script type="text/javascript">

    function setCookie(name, value, hours) {
        var expires = "";
        if (hours) {
            var date = new Date();
            date.setTime(date.getTime() + (hours * 60 * 60 * 1000));
            expires = "; expires=" + date.toUTCString();
        }
        document.cookie = name + "=" + (value || "") + expires + "; path=/";
    }

    function getCookie(name) {
        var nameEQ = name + "=";
        var ca = document.cookie.split(';');
        for (var i = 0; i < ca.length; i++) {
            var c = ca[i];
            while (c.charAt(0) == ' ') c = c.substring(1, c.length);
            if (c.indexOf(nameEQ) == 0) return c.substring(nameEQ.length, c.length);
        }
        return null;
    }

    function showError(msg) {
        alert(msg);
    }

    window.onload = function() {
        var userId = getCookie("userId");
        if (userId) {
            document.getElementById("userId").value = userId;
            document.getElementById("keepLoggedIn").checked = true;
        }
    };

    // 폼 제출 시 쿠키 설정
    function setUserIdCookie() {
        if (document.getElementById("keepLoggedIn").checked) {
            var userId = document.getElementById("userId").value;
            setCookie("userId", userId, 24); // 24시간 동안 쿠키 유지
        } else {
            setCookie("userId", "", -1); // 쿠키 삭제
        }
    }
</script>

</head>
<body>
<jsp:include page="../include/main-navigation.jsp"/>
    <div class="wrap">
        <h3>회원 로그인</h3>
        <div class="login_page">
            <div class="login_wrap">
                <form action="userLogin.join" method="post" onsubmit="setUserIdCookie()">
                    <div class="id">
                        <p>아이디</p>
                        <input type="text" id="userId" name="userId" placeholder="아이디를 입력하세요."
                            required="required">
                    </div>

                    <div class="pw">
                        <p>비밀번호</p>
                        <input type="password" name="userPw" placeholder="비밀번호를 입력하세요."
                            required="required">
                    </div>

                    <input type="checkbox" id="keepLoggedIn" name="check">
                    <p class="login_situation">로그인 상태 유지</p>

                    <input type="submit" value="로그인">

                    <div class="find">
                        <a href="findUserId.join">아이디찾기</a>
                        <a href="findUserPw.join">비밀번호찾기</a>
                        <a href="ChangeAdmin.join">관리자로그인</a>
                    </div>
                </form>
            </div>
        </div>
    </div>

    <%
        String msg = (String) request.getAttribute("msg");
        if (msg != null) {
    %>
        <script type="text/javascript">
            showError("<%= msg %>");
        </script>
    <%
        }
    %>

</body>
</html>