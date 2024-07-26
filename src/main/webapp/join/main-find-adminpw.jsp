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
						<input type="text" name="adminid" placeholder="아이디를 입력하세요."
							required="required">
					</div>

					<div class="email">
						<p>이메일</p>
						<input type="email" name="email" placeholder="이메일을 입력하세요."
							required="required">
					</div>

					<div class="number">
						<p>연락처</p>
						<input type="text" name="number" placeholder="연락처를 입력하세요."
							required="required">
					</div>
					<input type="submit" value="비밀번호찾기"> 
				</form>
			</div>
		</div>
	</div>
	
	<script>
	var adminPwFind = ${!empty adminPwFind};
	if(adminPwFind) {
		alert("${adminPwFind}");
	}
		
	</script>
</body>
</html>