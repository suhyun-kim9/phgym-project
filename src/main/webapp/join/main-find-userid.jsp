<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Document</title>
<link rel="stylesheet" href="../include/css/main-navigation.css">
<link rel="stylesheet" href="css/main-find-userid.css">
</head>
<body>
<jsp:include page="../include/main-navigation.jsp"/>
	<div class="wrap">
		<h3>회원 아이디 찾기</h3>
		<div class="login_page">
			<div class="login_wrap">
				<form action="userIdFind.join" method="post">
					<div class="id">
						<p>이름</p>
						<input type="text" id="userName" name="userName" placeholder="이름을 입력하세요." oninput="validateUserName()">
						<div id="nameResult"></div>
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
					<input type="submit" value="아이디찾기" id="submitBtn"disabled="disabled">
				</form>
			</div>
		</div>
	</div>

	<script>
	
		var userIdFind = "${userIdFind}";
	    console.log("userIdFind = " + userIdFind);
	    
		if(userIdFind == "fail"){
	    	
	    	alert("일치하는 회원이 없습니다.");
	    	
	    }
	
		function validateUserName() {
			var userName = document.getElementById("userName").value;
			var regex = /^[가-힣]+$/;
			var nameResult = document.getElementById("nameResult");
			
	        if (!regex.test(userName)) {
	            nameResult.innerHTML = "<span style='color: red; font-size: 12px;'>이름은 한글만 입력할 수 있습니다.</span>";
	        } else {
	            nameResult.innerHTML = "";
	        }
		}
		
		function validateUserEmail() {
			var userEmail = document.getElementById("userEmail").value;
			var regex = /^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$/;
			var emailResult = document.getElementById("emailResult");
			
	        if (!regex.test(userEmail)) {
	        	emailResult.innerHTML = "<span style='color: red; font-size: 12px;'>유효한 이메일 형식을 입력하세요.</span>";
	        } else {
	        	emailResult.innerHTML = "";
	        }
		}
		
		function validateUserPhone() {
			var userPhone = document.getElementById("userPhone").value;
			var regex = /^01[016789]-?\s?\d{3,4}-?\s?\d{4}$/;
			var phoneResult = document.getElementById("phoneResult");
			var submitBtn = document.getElementById("submitBtn");
			
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