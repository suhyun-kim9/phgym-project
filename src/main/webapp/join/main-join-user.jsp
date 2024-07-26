<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Document</title>
<link rel="stylesheet" href="../include/css/main-navigation.css">
<link rel="stylesheet" href="css/main-join-user.css">
</head>
<body>
<jsp:include page="../include/main-navigation.jsp"/>
	<section id="wrap">
		<div class="join_page">

			<form id="userForm" action="userJoin.join" method="post">
				<h3>회원 계정 생성</h3>
				<div class="left">
					<input type="radio" name="userGender" value="M" required="required">남
					<input type="radio" name="userGender" value="W" required="required">여
					<div class="name">
						<p>이름</p>
						<input type="text" id="userName" name="userName" style="text-align: left;"
							placeholder="이름을 입력하세요." required="required" oninput="validateUserName()">
						<div id="nameResult"></div>
					</div>
					<div class="date">
						<p>생년월일</p>
						<input type="date" name="userBirth" style="text-align: left;" required="required">
					</div>
					<div class="number">
						<p>연락처</p>
						<input type="text" name="userPhone" style="text-align: left;"
							placeholder="연락처를 입력하세요." required="required">
					</div>
					<div class="email">
						<p>이메일</p>
						<input type="email" id="userEmail" name="userEmail" style="text-align: left;"
							placeholder="이메일을 입력하세요." required="required" oninput="validateUserEmail()">
						<div id="emailResult"></div>
					</div>
				</div>

				<div class="right">
					<div class="id">
						<p>아이디</p>
						<input type="text" id="userId" name="userId" style="text-align: left;"
							placeholder="아이디를 입력하세요." required="required" oninput="validateUserId()">
						<button type="button" onclick="userIdCheck()">중복확인</button>
						<div id="idResult"></div>
					</div>
					<div class="pw">
						<p>비밀번호</p>
						<input type="password" id="userPw" name="userPw" style="text-align: left;"
							placeholder="비밀번호를 입력하세요." oninput="validateUserPassword()">
						<div id="pwLengthMessage" style="color: red; font-size: 12px; display: none;">비밀번호는 최소 4글자 이상이어야 합니다.</div>
					</div>
					<div class="pw">
						<p>비밀번호확인</p>
						<input type="password" id="userPwre" name="userPwre" style="text-align: left;"
							placeholder="비밀번호 재입력" required="required" oninput="validateUserPassword()">
						<div id="passwordResult"></div>
					</div>
					<div class="address">
						<p>주소</p>
						<input type="text" name="userAddress" style="text-align: left;" placeholder="주소를 입력하세요." required="required">
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
			var userId = document.getElementById("userId").value;
			var xhr = new XMLHttpRequest();
			xhr.open("GET", "userIdCheck.join?userId=" + userId, true);
			xhr.onreadystatechange = function() {
				if (xhr.readyState == 4 && xhr.status == 200) {
					var response = xhr.responseText;
					var idResult = document.getElementById("idResult");
					if (response == "Y") {
						idResult.innerHTML = "<span style='color: green; font-size: 12px;'>사용 가능한 아이디입니다.</span>";
						document.getElementById("submitBtn").disabled = false;
					} else {
						idResult.innerHTML = "<span style='color: red; font-size: 12px;'>이미 사용중인 아이디입니다.</span>";
						document.getElementById("submitBtn").disabled = true;
					}
				}
			};
			xhr.send();
		}

		function validateUserName() {
			var userName = document.getElementById("userName").value;
			var regex = /^[가-힣]+$/;
			var nameResult = document.getElementById("nameResult");
			if (!regex.test(userName)) {
				nameResult.innerHTML = "<span style='color: red; font-size: 12px;'>이름은 한글만 입력할 수 있습니다.</span>";
			} else {
				nameResult.innerHTML = "<span style='color: green; font-size: 12px;'>사용 가능한 이름입니다.</span>";
			} 
		}

        function validateUserEmail() {
            var userEmail = document.getElementById("userEmail").value;
            var regex = /^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$/;
            var emailResult = document.getElementById("emailResult");
            if (!regex.test(userEmail)) {
                emailResult.innerHTML = "<span style='color: red; font-size: 12px;'>유효한 이메일 형식을 입력하세요.</span>";
            } else {
                emailResult.innerHTML = "<span style='color: green; font-size: 12px;'>사용 가능한 이메일입니다.</span>";
            }
        }

		function validateUserId() {
			var userId = document.getElementById("userId").value;
			var regex = /^[a-zA-Z0-9]{4,}$/;
			var idResult = document.getElementById("idResult");
			if (!regex.test(userId)) {
				idResult.innerHTML = "<span style='color: red; font-size: 12px;'>아이디는 영문자와 숫자만 사용할 수 있으며,<br>4글자 이상이어야 합니다.</span>";
			} else {
				idResult.innerHTML = "<span style='color: green; font-size: 12px;'>사용 가능한 아이디입니다.</span>";
			}
		}

		function validateUserPassword() {
			var password = document.getElementById("userPw").value;
			var confirmPassword = document.getElementById("userPwre").value;
			var passwordResult = document.getElementById("passwordResult");
			var submitBtn = document.getElementById("submitBtn");
			var pwLengthMessage = document.getElementById("pwLengthMessage");

			if (password.length < 4) {
				pwLengthMessage.style.display = "block";
				passwordResult.innerHTML = "";
				submitBtn.disabled = true;
			} else {
				pwLengthMessage.style.display = "none";
				if (password !== confirmPassword) {
					passwordResult.innerHTML = "<span style='color: red; font-size: 12px;'>비밀번호가 일치하지 않습니다.</span>";
					submitBtn.disabled = true;
				} else {
					passwordResult.innerHTML = "<span style='color: green; font-size: 12px;'>비밀번호가 일치합니다.</span>";
					submitBtn.disabled = false;
				}
			}
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