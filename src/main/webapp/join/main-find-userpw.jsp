<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Document</title>
<link rel="stylesheet" href="../include/css/main-navigation.css">
<link rel="stylesheet" href="css/main-find-userpw.css">
</head>
<body>
<jsp:include page="../include/main-navigation.jsp"/>
	<div class="wrap">
		<h3>회원 비밀번호 찾기</h3>
		<div class="login_page">
			<div class="login_wrap">
				<form action="userPwFind.join" method="post">
					<div class="id">
						<p>아이디</p>
						<input type="text" id="userId" name="userId" placeholder="아이디를 입력하세요." oninput="validateUserId()">
						<div id="idResult"></div>
					</div>

					<div class="email">
						<p>이메일</p>
						<input type="email" id="userEmail" name="userEmail" placeholder="이메일을 입력하세요." oninput="validateUserEmail()">
						<div id="emailResult"></div>
					</div>

					<div class="number">
						<p>연락처</p>
						<input type="text" id="userPhone" name="userPhone" placeholder="연락처를 입력하세요." oninput="validateUserPhone()">
						<div id="phoneResult"></div>
					</div>
					<input type="submit" value="비밀번호찾기" id="submitBtn" disabled="disabled">
				</form>
			</div>
		</div>
	</div>

	<script>
	
		var userPwFind = "${userPwFind}";
	    console.log("userPwFind = " + userPwFind);
	    
		if(userPwFind == "fail"){
	    	
	    	alert("일치하는 회원이 없습니다.");
	    	
	    } 
	
		function validateUserId() {
			
			var userId = document.getElementById("userId").value;
			var regex = /^[a-zA-Z0-9]{4,}$/;
			var idResult = document.getElementById("idResult");
			
	    	if(!regex.test(userId)) {
	    		idResult.innerHTML = "<span style='color: red; font-size: 12px;'>올바른 아이디 형식을 입력하세요.</span>";
	    		
	    	} else {
	    		idResult.innerHTML = "";
	    	}
		}
		
		function validateUserEmail() {
			
			var userEmail = document.getElementById("userEmail").value;
			var regex = /^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$/;
			var emailResult = document.getElementById("emailResult");
			
	    	if(!regex.test(userEmail)) {
	    		emailResult.innerHTML = "<span style='color: red; font-size: 12px;'>유효한 이메일 형식을 입력하세요.</span>";
	    		
	    	} else {
	    		emailResult.innerHTML = "";
	    	}
	    }
		
		function validateUserPhone() {
			
			var userPhone = document.getElementById("userPhone").value;
			var regex = /^01[016789]-?\s?\d{3,4}-?\s?\d{4}$/;
			var phoneResult = document.getElementById("phoneResult");
			
	    	if(!regex.test(userPhone)) {
	    		phoneResult.innerHTML = "<span style='color: red; font-size: 12px;'>연락처는 숫자만 입력할 수 있습니다.</span>";
	    		submitBtn.disabled = true;
	    	
	    	} else {
	    		phoneResult.innerHTML = "";
	    		submitBtn.disabled = false;
	    	}
		}
	
	</script>
</body>
</html>