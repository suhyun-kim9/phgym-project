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

			<form id="adminForm" action="adminJoin.join" method="post">
				<h3>관리자 계정 생성</h3>
				<div class="left">
					<input type="radio" name="adminGender" value="M" required="required">남 
					<input type="radio" name="adminGender" value="W" required="required">여
					<div class="name">
						<p>이름</p>
						<input type="text" id="adminName" name="adminName" style="text-align: left;" placeholder="이름을 입력하세요." required="required" oninput="validateAdminName()">
						<div id="nameResult"></div>
					</div>
					<div class="birthday">
						<p>생년월일</p>
						<input type="date" id="adminBirth" name="adminBirth" style="text-align: left;" required="required">
					</div>
					<div class="number">
						<p>연락처</p>
						<input type="text" id="adminPhone" name="adminPhone" style="text-align: left;" placeholder="연락처를 입력하세요." required="required">
					</div>
				</div>

				<div class="right">
					<div class="id">
						<p>아이디</p>
						<input type="text" id="adminId" name="adminId" style="text-align: left;" placeholder="아이디를 입력하세요." required="required" oninput="validateAdminId()">
						<button type="button" onclick="adminIdCheck()">중복확인</button>
						<div id="idResult"></div>
					</div>
					<div class="pw">
						<p>패스워드</p>
						<input type="password" id="adminPw" name="adminPw" style="text-align: left;" placeholder="비밀번호를 입력하세요." required="required" oninput="validatePassword()">
						<div id="pwLengthMessage" style="color: red; font-size: 12px; display: none;">비밀번호는 최소 4글자 이상이어야 합니다.</div>
					</div>
					<div class="pw">
						<p>비밀번호확인</p>
						<input type="password" id="adminPwre" name="adminPwre" style="text-align: left;" placeholder="비밀번호 재입력" required="required" oninput="validatePassword()">
						<div id="passwordResult"></div>
					</div>
					<div class="job">
						<p>직책</p>
						<input type="text" id="adminJobTitle" name="adminJobTitle" style="text-align: left;" placeholder="직책을 입력하세요." required="required">
					</div>
					<div class="date">
						<p>입사일</p>
						<input type="date" id="adminHireDate" name="adminHireDate" style="text-align: left;" required="required">
					</div>
					<div class="email">
						<p>이메일</p>
						<input type="email" id="adminEmail" name="adminEmail" style="text-align: left;" placeholder="이메일을 입력하세요." required="required" oninput="validateAdminEmail()">
						<div id="emailResult"></div>
					</div>
				</div>

				<div class="bottom">
					<div class="license">
						<p>경력 및 자격사항</p>
						<textarea name="adminCareerHis" id="adminCareerHis" placeholder="경력사항을 입력하세요."></textarea>
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
			var adminId = document.getElementById("adminId").value;
			var xhr = new XMLHttpRequest();
			xhr.open("GET", "adminIdCheck.join?adminId=" + adminId, true);
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

		function validateAdminId() {
			var adminId = document.getElementById("adminId").value;
			var regex = /^[a-zA-Z0-9]{4,}$/;
			var idResult = document.getElementById("idResult");
			if (!regex.test(adminId)) {
				idResult.innerHTML = "<span style='color: red; font-size: 12px;'>아이디는 영문자와 숫자만 사용할 수 있으며,<br>4글자 이상이어야 합니다.</span>";
			} else {
				idResult.innerHTML = "<span style='color: green; font-size: 12px;'>형식이 올바른 아이디입니다.</span>";
			}
		}

		function validateAdminName() {
			var adminName = document.getElementById("adminName").value;
			var regex = /^[가-힣]+$/;
			var nameResult = document.getElementById("nameResult");
			if (!regex.test(adminName)) {
				nameResult.innerHTML = "<span style='color: red; font-size: 12px;'>이름은 한글만 입력할 수 있습니다.</span>";
			} else {
				nameResult.innerHTML = "<span style='color: green; font-size: 12px; text-align: left;'>사용 가능한 이름입니다.</span>";
			}
		}

        function validateAdminEmail() {
            var adminEmail = document.getElementById("adminEmail").value;
            var regex = /^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$/;
            var emailResult = document.getElementById("emailResult");
            if (!regex.test(adminEmail)) {
                emailResult.innerHTML = "<span style='color: red; font-size: 12px;'>유효한 이메일 형식을 입력하세요.</span>";
            } else {
                emailResult.innerHTML = "<span style='color: green; font-size: 12px;'>사용 가능한 이메일입니다.</span>";
            }
        }

		function validatePassword() {
			var password = document.getElementById("adminPw").value;
			var confirmPassword = document.getElementById("adminPwre").value;
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
	</script>
</body>
</html>