<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Document</title>
<link rel="stylesheet" href="../include/css/main-navigation.css">
<link rel="stylesheet" href="css/main-find-adminpw.css">
</head>
<body>
	<jsp:include page="../include/main-navigation.jsp"/>
	<div class="wrap">
		<h3>관리자 비밀번호 찾기</h3>
		<div class="login_page">
			<div class="login_wrap">
				<form action = "adminPwFind.join" method = "post">
					<div class="id">
						<p>아이디</p>
						<input type="text" id="adminId" name="adminId" placeholder="아이디를 입력하세요." oninput="validateAdminId()">
						<div id="idResult"></div>
					</div>

					<div class="email">
						<p>이메일</p>
						<input type="email" id="adminEmail" name="adminEmail" placeholder="이메일을 입력하세요." oninput ="validateAdminEmail()">
						<div id="emailResult"></div>
					</div>

					<div class="number">
						<p>연락처</p>
						<input type="text" id="adminPhone" name="adminPhone" placeholder="연락처를 입력하세요." oninput="validateAdminPhone()">
						<div id="phoneResult"></div>
					</div>
					<input type="submit" value="비밀번호찾기" id="submitBtn"disabled="disabled"> 
				</form>
			</div>
		</div>
	</div>
	
	<script>
	
		var adminPwFind = "${adminPwFind}";
	    console.log("adminPwFind = " + adminPwFind);
	    
		if(adminPwFind == "fail"){
	    	
	    	alert("일치하는 회원이 없습니다.");
	    	
	    }    
	
	    function validateAdminId() {
	    	
	    	var adminId = document.getElementById("adminId").value;
	    	var regex = /^[a-zA-Z0-9]{4,}$/;
	    	var idResult = document.getElementById("idResult");
	    	
	    	if(!regex.test(adminId)) {
	    		idResult.innerHTML = "<span style='color: red; font-size: 12px;'>올바른 아이디 형식을 입력하세요.</span>";
	    		
	    	} else {
	    		idResult.innerHTML = "";
	    	}
	    }
	    
	    function validateAdminEmail() {
	    	
	    	var adminEmail = document.getElementById("adminEmail").value;
	    	var regex = /^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$/;
	    	var emailResult = document.getElementById("emailResult");
	    	
	    	if(!regex.test(adminEmail)) {
	    		emailResult.innerHTML = "<span style='color: red; font-size: 12px;'>유효한 이메일 형식을 입력하세요.</span>";
	    		
	    	} else {
	    		emailResult.innerHTML = "";
	    	}
	    }
	    
	    function validateAdminPhone() {
	    	
	    	var adminPhone = document.getElementById("adminPhone").value;
	    	var regex = /^01[016789]-?\s?\d{3,4}-?\s?\d{4}$/;
	    	var phoneResult = document.getElementById("phoneResult");
	    	
	    	if(!regex.test(adminPhone)) {
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