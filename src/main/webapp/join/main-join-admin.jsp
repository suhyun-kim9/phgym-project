<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Document</title>
<link rel="stylesheet" href="css/main-join-admin.css">

</head>

<body>
	<section id="wrap">
		<div class="join_page">

			<form action="adminJoin.join" method="post">
				<h3>관리자 계정 생성</h3>
				<div class="left">
					<input type="radio" name="adminGender" value="M"
						required="required">남 <input type="radio"
						name="adminGender" value="W" required="required">여
					<div class="name">
						<p>이름</p>
						<input type="text" name="adminName" style="text-align: left;"
							placeholder="이름을 입력하세요." required="required">
					</div>
					<div class="birthday">
						<p>생년월일</p>
						<input type="date" name="adminBirth" style="text-align: left;"
							required="required">
					</div>
					<div class="number">
						<p>연락처</p>
						<input type="text" name="adminPhone" style="text-align: left;"
							placeholder="연락처를 입력하세요." required="required">
					</div>
				</div>

				<div class="right">
					<div class="id">
						<p>아이디</p>
						<input type="text" id="adminId" name="adminId"
							style="text-align: left;" placeholder="아이디를 입력하세요."
							required="required">
						<button onclick="adminIdCheck()">중복확인</button>
						<div id="idResult"></div>
					</div>
					<div class="pw">
						<p>패스워드</p>
						<input type="password" name="adminPw" style="text-align: left;"
							placeholder="비밀번호를 입력하세요." required="required">
					</div>
					<div class="pw">
						<p>비밀번호확인</p>
						<input type="password" name="adminPwre" style="text-align: left;"
							placeholder="비밀번호 재입력" required="required">
					</div>
					<div class="job">
						<p>직책</p>
						<input type="text" name="adminJobTitle" style="text-align: left;"
							placeholder="직책을 입력하세요." required="required">
					</div>
					<div class="date">
						<p>입사일</p>
						<input type="date" name="adminHireDate" style="text-align: left;"
							required="required">
					</div>
					<div class="email">
						<p>이메일</p>
						<input type="email" name="adminEmail" style="text-align: left;"
							placeholder="이메일을 입력하세요." required="required">
					</div>
				</div>

				<div class="bottom">
					<div class="license">
						<p>경력 및 자격사항</p>
						<textarea name="adminCareerHis" placeholder="경력사항을 입력하세요."></textarea>
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
		function adminIdCheck() {
			event.preventDefault();
			var adminId = document.getElementById("adminId");
			location.href = "adminIdCheck.join?adminId=" + adminId.value;
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
