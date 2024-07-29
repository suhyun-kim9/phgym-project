<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Document</title>
<link rel="stylesheet" href="../include/css/main-navigation.css">
<link rel="stylesheet" href="css/main-join-admin.css">
</head>

<body>
<jsp:include page="../include/main-navigation.jsp"/>
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
                        <input type="text" id="adminPhone" name="adminPhone" style="text-align: left;" placeholder="연락처를 입력하세요." required="required" oninput="validateAdminPhone()">
                        <div id="phoneResult"></div>
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
					    <select id="adminJobTitle" name="adminJobTitle" style="text-align: left;" required="required">
					        <option value="" disabled selected>직책을 선택하세요.</option>
					        <option value="ptTeamLeader">pt팀장</option>
					        <option value="trainer">트레이너</option>
					        <option value="information">인포메이션</option>
					    </select>
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
                        alert("사용 가능한 아이디입니다.");
                    } else {
                        alert("이미 사용중인 아이디입니다.");
                    }
                } else {
                	alert("아이디 확인에 실패했습니다. 다시 시도해 주세요.")
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
                idResult.innerHTML = "";
            }
        }

        function validateAdminName() {
            var adminName = document.getElementById("adminName").value;
            var regex = /^[가-힣]+$/;
            var nameResult = document.getElementById("nameResult");
            if (!regex.test(adminName)) {
                nameResult.innerHTML = "<span style='color: red; font-size: 12px;'>이름은 한글만 입력할 수 있습니다.</span>";
            } else {
                nameResult.innerHTML = "<span style='color: green; font-size: 12px;'>사용 가능한 이름입니다.</span>";
            }
        }
        
        function validateAdminPhone() {
        	var adminPhone = document.getElementById("adminPhone").value;
 	    	var regex = /^01[016789]-?\s?\d{3,4}-?\s?\d{4}$/;
 	    	var phoneResult = document.getElementById("phoneResult");
 	    	var submitBtn = document.getElementById("submitBtn");
 	    	
 	    	if(!regex.test(adminPhone)) {
 	    		phoneResult.innerHTML = "<span style='color: red; font-size: 12px;'>유효한 연락처 형식을 입력하세요.</span>";
 	    	} else {
 	    		phoneResult.innerHTML = "";
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