<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>회원 로그인</title>
<link rel="stylesheet" href="../include/css/main-navigation.css">
<link rel="stylesheet" href="css/main-login-user.css" type="text/css">
<link rel="stylesheet" href="../include/css/main-footer.css">

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
            document.getElementById("keepUserLoggedIn").checked = true;
        }

        var adminId = getCookie("adminId");
        if (adminId) {
            document.getElementById("adminId").value = adminId;
            document.getElementById("keepAdminLoggedIn").checked = true;
        }

        var msg = "<%= request.getAttribute("msg") %>";
        var loginAttempt = "<%= request.getAttribute("loginResult") %>";

        if (loginAttempt === "true" && msg && msg.trim() !== "") {
            alert(msg);
        }

        var userIdFind = "${userIdFind}";
        console.log("userIdFind = " + userIdFind);
        
        if (userIdFind != null && userIdFind != "") {
            alert("회원님의 아이디는: " + userIdFind + "입니다");
        }
        
        var userPwFind = "${userPwFind}";
        console.log("userPwFind = " + userPwFind);
        
        if (userPwFind != null && userPwFind != "") {
            alert("회원님의 비밀번호는: " + userPwFind + "입니다");
        }
    };
    
    // 사용자 폼 제출 시 쿠키 설정
    function setUserIdCookie() {
        if (document.getElementById("keepUserLoggedIn").checked) {
            var userId = document.getElementById("userId").value;
            setCookie("userId", userId, 24); // 24시간 동안 쿠키 유지
        } else {
            setCookie("userId", "", -1); // 쿠키 삭제
        }
    }
    
    // 관리자 폼 제출 시 쿠키 설정
    function setAdminIdCookie() {
        if (document.getElementById("keepAdminLoggedIn").checked) {
            var adminId = document.getElementById("adminId").value;
            setCookie("adminId", adminId, 24); // 24시간 동안 쿠키 유지
        } else {
            setCookie("adminId", "", -1); // 쿠키 삭제
        }
    }
    
</script>

</head>

<body>
<jsp:include page="../include/main-navigation.jsp"/> 
 <div class="section">
		<div class="container">
			<div class="row full-height justify-content-center">
				<div class="col-12 text-center align-self-center py-5">
					<div class="section pb-5 pt-5 pt-sm-2 text-center">
			          	<input class="checkbox input2" type="checkbox" id="reg-log" name="reg-log"/>
			          	<label for="reg-log"> </label>
						<div class="card-3d-wrap mx-auto">
							<div class="card-3d-wrapper">
							
								<div class="card-front">
									<form action="userLogin.join" method="post" onsubmit="setUserIdCookie()">
	                                    <div>
	                                        <div class="wave"></div>
	                                        <div class="wave"></div>
	                                        <div class="wave"></div>
	                                     </div>
											<h4 class="mb-4 pb-3"> 회원 로그인 </h4>
											<div class="form-group">
												<input type="text" id="userId" name="userId" class="form-style input2" placeholder="아이디를 입력하세요." autocomplete="off">
												<i class="input-icon uil uil-at"></i>
											</div>	
											<div class="form-group mt-2">
												<input type="password" id="userPw" name="userPw" class="form-style input2" placeholder="비밀번호를 입력하세요." autocomplete="off">
												<i class="input-icon uil uil-lock-alt"></i>
											</div>
                                            <div class="link_box">
                                                <div><input type="checkbox" id="keepUserLoggedIn" name="check"> 아이디 기억하기 </div>
                                                <div class="mb-0 mt-4 text-center"><a href="findUserId.join" class="link">아이디 찾기</a><a href="findUserPw.join" class="link">비밀번호 찾기</a></div>
                                            </div>
                                          
                                            <div class="box bg-1">
                                            	<input type="submit" value="로그인" class="button button--wapasha button--round-s">
                                            </div></form>
			      					</div> 
			      				
			      	
								<div class="card-back">
									<form action="adminLogin.join" method="post" onsubmit="setAdminIdCookie()">
											<h4 class="mb-4 pb-3"> 관리자 로그인</h4>
											<div class="form-group">
												<input type="text" id="adminId" name="adminId" class="form-style input2" placeholder="아이디를 입력하세요." autocomplete="off">
												<i class="input-icon uil uil-at"></i>
											</div>	
											<div class="form-group mt-2">
												<input type="password" id="adminPw" name="adminPw" class="form-style input2" placeholder="비밀번호를 입력하세요." autocomplete="off">
												<i class="input-icon uil uil-lock-alt"></i>
											</div>
                                            <div class="link_box">
                                                <div> <input type="checkbox" id="keepAdminLoggedIn" name="check"> 아이디 기억하기 </div>
                                                <div class="mb-0 mt-4 text-center"><a href="findAdminId.join" class="link">아이디 찾기</a><a href="findAdminPw.join" class="link">비밀번호 찾기</a></div>
                                            </div>
                                          
                                            
                                            <div class="box2 bg-2">
                                            	<input type="submit" value="로그인" class="admin_btn button2 button--wapasha2 button--round-s2">
                                            </div></form>
			      					</div>
			      				
			      			</div>
			      		</div>
			      	</div>
		      	</div>
	      	</div>
	    </div>
	</div> 

    <jsp:include page="../include/main-footer.jsp"/>
</body>
</html>
