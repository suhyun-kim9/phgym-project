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
    
  <div class="wrap">
    
  <form action="adminJoin.join" method="post" class="form" id="forms">
      
    <div class="header1">
        <p> 관리자 계정 생성  </p>
    </div>
    <div class="progressbar">
      <div class="progress" id="progress"></div>
      
      <div class="progress-step progress-step-active" data-title="개인"></div>
      
      <div class="progress-step" data-title="정보"></div>
      <div class="progress-step" data-title="생성"></div>
    </div>
    
    <div class="step-forms step-forms-active">
      <div class="group-inputs">
        <label for="username">이름</label>
        <input type="text" name="adminName" id="adminName" placeholder="이름을 입력하세요." oninput="validateAdminName()" required="required"/>
      	<div id="nameResult"></div>
      </div>
      
      <div class="group-inputs">
        <label for="position">성별</label>
        <div style="display: flex; border:1px solid #ddd; justify-content: space-evenly;">
            <div style="display:flex;">
                <p> 남자 </p>  <input style="width: 20px;"  type="radio" name="adminGender" value="M" required="required">
            </div>
            <div style="display:flex;">
                <p> 여자 </p> <input style="width: 20px;" type="radio" name="adminGender" value="W" required="required">
            </div>
        </div>
      </div>
      <div class="group-inputs">
        <label for="dob"> 생년월일 </label>
        <input type="date" name="adminBirth" id="adminBirth" />
      </div>


      <div class="">
        <a href="#" class="btn btn-next width-50 ml-auto">다음</a>
      </div>
      
    </div>
    <div class="step-forms">
    
        <div class="group-inputs">
            <label for="email">연락처</label>
            <input type="text" name="adminPhone" id="adminPhone" placeholder="연락처를 입력하세요." oninput="validateAdminPhone()" required="required"/>
        	<div id="phoneResult"></div>
        </div>
          
        <div class="group-inputs">
            <label for="email">이메일</label>
            <input type="email" name="adminemail" id="adminemail" placeholder="이메일을 입력하세요." oninput="validateAdminEmail()" required="required"/>
        	<div id="emailResult"></div>
        </div>
        
        <div class="group-inputs">
            <label for="email">직책</label>
            <select id="adminJobTitle" name="adminJobTitle" style="text-align: left;" required="required">
                <option value="" disabled selected> 직책을 선택하세요.</option>
                <option value="ptTeamLeader">pt팀장</option>
                <option value="trainer">트레이너</option>
                <option value="information">인포메이션</option>
            </select>
        </div>
        
        <div class="group-inputs">
            <label for="email">입사일</label>
            <input type="date" name="adminHireDate" id="adminHireDate" style="text-align: left;" required="required"/>
        </div>
          
    
   
      <div class="btns-group">
        <a href="#" class="btn btn-prev">이전</a>
        <a href="#" class="btn btn-next">다음</a>
      </div>
      
    </div>
    <div class="step-forms">
        <div class="group-inputs">
        <div class="id_inputs">
        	<div>
        		<label for="phone">아이디</label>
            	<input type="text" name="adminId" id="adminId" placeholder="아이디를 입력하세요." required="required" oninput="validateAdminId()"/>
        	</div>
       		<div>
       			<button type="button" onclick="adminIdCheck()">중복확인</button>
       		</div>
        </div>
        	<div id="idResult"></div>
        </div>
        
        <div class="group-inputs">
            <label for="email">비밀번호</label>
            <input type="password" name="adminPw" id="adminPw" placeholder="비밀번호를 입력하세요." oninput="validateAdminPassword()" required="required"/>
        	<div id="pwLengthMessage" style="color: red; font-size: 12px; display: none;">비밀번호는 최소 4글자 이상이어야 합니다.</div>
        </div>
        
        <div class="group-inputs">
            <label for="email">비밀번호 확인</label>
            <input type="password" name="adminPwre" id="adminPwre" placeholder="비밀번호 재입력" required="required" oninput="validateAdminPassword()" required="required"/>
        	<div id="passwordResult"></div>
        </div>
    
      <div class="btns-group">
        <a href="#" class="btn btn-prev">이전</a>
        <input type="submit" value="회원가입" class="btn"/> <!-- id="submit-form" -->
      </div>
    </div>
  </form>
</div>

    <script type="text/javascript">
    
    const prevBtns = document.querySelectorAll(".btn-prev");
    const nextBtns = document.querySelectorAll(".btn-next");
    const progress = document.getElementById("progress");
    const formSteps = document.querySelectorAll(".step-forms");
    const progressSteps = document.querySelectorAll(".progress-step");


    let formStepsNum = 0;

    nextBtns.forEach((btn) => {
      btn.addEventListener("click", () => {
        formStepsNum++;
        updateFormSteps();
        updateProgressbar();
       
      });
    });

    prevBtns.forEach((btn) => {
      btn.addEventListener("click", () => {
        formStepsNum--;
        updateFormSteps();
        updateProgressbar();
        
      });
    });

    function updateFormSteps() {
      formSteps.forEach((formStep) => {
        formStep.classList.contains("step-forms-active") &&
          formStep.classList.remove("step-forms-active");
      });

      formSteps[formStepsNum].classList.add("step-forms-active");
    }

    function updateProgressbar() {
      progressSteps.forEach((progressStep, idx) => {
        if (idx < formStepsNum + 1) {
          progressStep.classList.add("progress-step-active");
          
        } else {
          progressStep.classList.remove("progress-step-active");
       
        }
      });

      progressSteps.forEach((progressStep, idx) => {
        if (idx < formStepsNum) {
          
          progressStep.classList.add("progress-step-check");
        } else {
       
          progressStep.classList.remove("progress-step-check");
        }
      });
     
      const progressActive = document.querySelectorAll(".progress-step-active");

      progress.style.width =
        ((progressActive.length - 1) / (progressSteps.length - 1)) * 100 + "%";
    }


    document.getElementById("submit-form").addEventListener("click", function () {

        progressSteps.forEach((progressStep, idx) => {
        if (idx <= formStepsNum) {
          
          progressStep.classList.add("progress-step-check");
        } else {
       
          progressStep.classList.remove("progress-step-check");
        }
      });
      
       var forms = document.getElementById("forms");
       forms.classList.remove("form");
       forms.innerHTML = '<div class="welcome"><div class="content"><svg class="checkmark" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 52 52"><circle class="checkmark__circle" cx="26" cy="26" r="25" fill="none"/><path class="checkmark__check" fill="none" d="M14.1 27.2l7.1 7.2 16.7-16.8"/></svg><h2>회원가입이 완료되었습니다.</h2><span></span><div></div>';
    });
    
    
    function adminIdCheck() {
	    var adminId = document.getElementById("adminId").value;

	    if (adminId.trim() === "") {
	        alert("아이디를 입력하세요.");
	        return; // 아이디가 비어 있을 경우 함수 종료
	    }

	    var xhr = new XMLHttpRequest();
	    xhr.open("GET", "adminIdCheck.join?adminId=" + encodeURIComponent(adminId), true);
	    xhr.onreadystatechange = function() {
	        if (xhr.readyState == 4) {
	            if (xhr.status == 200) {
	                var response = xhr.responseText;
	                var idResult = document.getElementById("idResult");
	                if (response == "Y") {
	                    alert("사용 가능한 아이디입니다.");
	                } else {
	                    alert("이미 사용중인 아이디입니다.");
	                }
	            } else {
	                alert("아이디 확인에 실패했습니다. 다시 시도해 주세요.");
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
                idResult.innerHTML = "<span style='color: red; font-size: 12px;'>아이디는 영문자와 숫자만 사용할 수 있으며, 4글자 이상이어야 합니다.</span>";
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

        function validateAdminPassword() {
            var password = document.getElementById("adminPw").value;
            var confirmPassword = document.getElementById("adminPwre").value;
            var passwordResult = document.getElementById("passwordResult");
/*             var submitBtn = document.getElementById("submitBtn");
            var pwLengthMessage = document.getElementById("pwLengthMessage"); */

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