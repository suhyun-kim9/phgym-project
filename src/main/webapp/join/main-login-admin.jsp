<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>관리자 로그인</title>
<link rel="stylesheet" href="../include/css/main-navigation.css">
<link rel="stylesheet" href="css/main-login-admin.css">

<script type="text/javascript">

    function setCookie(name, value, hours) {
        var expires = "";
        if (hours) {
            var date = new Date();
            date.setTime(date.getTime() + (hours*60*60*1000));
            expires = "; expires=" + date.toUTCString();
        }
        document.cookie = name + "=" + (value || "")  + expires + "; path=/";
    }

    function getCookie(name) {
        var nameEQ = name + "=";
        var ca = document.cookie.split(';');
        for(var i=0;i < ca.length;i++) {
            var c = ca[i];
            while (c.charAt(0)==' ') c = c.substring(1,c.length);
            if (c.indexOf(nameEQ) == 0) return c.substring(nameEQ.length,c.length);
        }
        return null;
    }

    function showError(msg) {
        alert(msg);
    }

    window.onload = function() {
        var adminId = getCookie("adminId");
        if (adminId) {
            document.getElementById("adminId").value = adminId;
            document.getElementById("keepLoggedIn").checked = true;
        }
    }
</script>

</head>
<body>
<jsp:include page="../include/main-navigation.jsp"/>
    <div class="wrap">
        <h3>관리자 로그인</h3>
        <div class="login_page">
            <div class="login_wrap">
                <form action="adminLogin.join" method="post" onsubmit="setAdminIdCookie()">
                    <div class="id">
                        <p>아이디</p>
                        <input type="text" id="adminId" name="adminId" placeholder="아이디를 입력하세요."
                            required="required">
                    </div>

                    <div class="pw">
                        <p>비밀번호</p>
                        <input type="password" name="adminPw" placeholder="비밀번호를 입력하세요."
                            required="required">
                    </div>

                    <input type="checkbox" id="keepLoggedIn" name="check">
                    <p class="login_situation">아이디 기억하기</p>

                    <input type="submit" value="로그인">

                    <div class="find">
                        <a href="findAdminId.join">아이디찾기</a>
                        <a href="findAdminPw.join">비밀번호찾기</a>
                        <a href="adminJoinPage.join">관리자 회원가입</a>
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

    <script type="text/javascript">
    
		var adminIdFind = "${adminIdFind}";
	    console.log("adminIdFind = " + adminIdFind);
	    
		if (adminIdFind != null  && adminIdFind != "") {
	    	
	    	alert("회원님의 아이디는: " + adminIdFind + "입니다");
	    }
		
		var adminPwFind = "${adminPwFind}";
	    console.log("adminPwFind = " + adminPwFind);
	    
		if (adminPwFind != null  && adminPwFind != "") {
	    	
	    	alert("회원님의 비밀번호는: " + adminPwFind + "입니다");
	    }
	
        // 폼 제출 시 쿠키 설정 함수
        function setAdminIdCookie() {
            if (document.getElementById("keepLoggedIn").checked) {
                var adminId = document.getElementById("adminId").value;
                setCookie("adminId", adminId, 24); // 24시간 동안 쿠키 유지
            } else {
                setCookie("adminId", "", -1); // 쿠키 삭제
            }
        }
    </script>
</body>
</html>