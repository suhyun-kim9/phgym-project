<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Document</title>
<link rel="stylesheet" href="css/main-find-userid.css">
</head>
<body>

	<div class="wrap">
		<h3>회원 아이디 찾기</h3>
		<div class="login_page">
			<div class="login_wrap">
				<form action="userIdFind.join" method="post">
					<div class="id">
						<p>이름</p>
						<input type="text" name="userName" placeholder="이름을 입력하세요.">
					</div>

					<div class="email">
						<p>이메일</p>
						<input type="email" name="email" placeholder="이메일을 입력하세요.">
					</div>

					<div class="number">
						<p>연락처</p>
						<input type="text" name="number" placeholder="연락처를 입력하세요.">
					</div>
					<input type="submit" value="아이디찾기">
				</form>
			</div>
		</div>
	</div>

	<script>
	var userIdFind = ${!empty userIdFind};
	if(userIdFind) {
		alert("${userIdFind}");
	}
	</script>
</body>
</html>