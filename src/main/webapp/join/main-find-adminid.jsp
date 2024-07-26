<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Document</title>

<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.min.css">
<link rel="stylesheet" href="css/main-find-adminid.css">
<link rel="stylesheet" href="../include/css/main-navigation.css">
</head>
<body>
<jsp:include page="../include/main-navigation.jsp"/>
	<section>


		<div class="wrap">
			<h3>관리자 아이디 찾기</h3>
			<div class="login_page">
				<div class="login_wrap">
					<form action="adminIdFind.join" method="post">
						<div class="id">
							<p>이름</p>
							<input type="text" name="adminName" placeholder="이름을 입력하세요."
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
						<input type="submit" value="아이디찾기">
					</form>
				</div>
			</div>
		</div>
	</section>

	<script>
	var adminIdFind = ${!empty adminIdFind};
	if(adminIdFind) {
		alert("${adminIdFind}");
	}
	</script>
</body>
</html>