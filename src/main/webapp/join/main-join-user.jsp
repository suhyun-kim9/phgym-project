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

			<form action="userJoin.join" method="post">
				<h3>회원 계정 생성</h3>
				<div class="left">
					<input type="radio" name="userGender" value="M" required="required">남
					<input type="radio" name="userGender" value="W" required="required">여
					<div class="name">
						<p>이름</p>
						<input type="text" name="userName" style="text-align: left;"
							placeholder="이름을 입력하세요." required="required">
					</div>
					<div class="date">
						<p>생년월일</p>
						<input type="date" name="userBirth" style="text-align: left;"
							required="required">
					</div>
					<div class="number">
						<p>연락처</p>
						<input type="text" name="userPhone" style="text-align: left;"
							placeholder="연락처를 입력하세요." required="required">
					</div>
					<div class="email">
						<p>이메일</p>
						<input type="email" name="userEmail" style="text-align: left;"
							placeholder="이메일을 입력하세요." required="required">
					</div>
				</div>

				<div class="right">
					<div class="id">
						<p>아이디</p>
						<input type="text" id="userId" name="userId" style="text-align: left;"
							placeholder="아이디를 입력하세요." required="required">
						<button onclick="userIdCheck()">중복확인</button>
						<div id="idResult"></div>
					</div>
					<div class="pw">
						<p>비밀번호</p>
						<input type="password" name="userPw" style="text-align: left;"
							placeholder="비밀번호를 입력하세요.">
					</div>
					<div class="pw">
						<p>비밀번호확인</p>
						<input type="password" name="userPwre" style="text-align: left;"
							placeholder="비밀번호 재입력" required="required">
					</div>
					<div class="address">
						<p>주소</p>
						<input type="text" name="userAddress" style="text-align: left;"
							placeholder="주소를 입력하세요." required="required">
					</div>
				</div>

				<div class="btn">
					<input type="submit" value="가입" id="submitBtn" disabled="disabled">
					<input type="reset" value="취소">
				</div>
			</form>
		</div>
	</section>

	<script type="text/javascript">
		function userIdCheck() {
			event.preventDefault();
			var userId = document.getElementById("userId");
			location.href = "userIdCheck.join?userId=" + userId.value;
		}

		var submitBtn = document.getElementById("submitBtn");
		console.log(submitBtn);

		var msg = "${msg}";
		if (msg == "Y") {
			alert("중복 확인되셨습니다.");
			submitBtn.removeAttribute("disabled");

		} else if (msg == "N") {
			alert("다른 아이디를 입력해주세요.");
		}
	</script>
</body>
</html>
