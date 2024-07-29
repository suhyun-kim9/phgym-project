<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>회원 가입</title>
<link rel="stylesheet" href="css/main-join-user.css">
</head>
<body>

  <div class="wrap">    
  <form action="userJoin.join" method="post" class="form" id="forms">
    <div class="header1">
        <p> 회원 계정 생성  </p>
    </div>
    <div class="progressbar">
      <div class="progress" id="progress"></div>
      
      <div class="progress-step progress-step-active" data-title="개인"></div>
      
      <div class="progress-step" data-title="정보"></div>
      <div class="progress-step" data-title="계정"></div>
    </div>
    
    <div class="step-forms step-forms-active">
      <div class="group-inputs">
        <label for="username">이름</label>
        <input type="text" name=userName id="userName" placeholder="이름을 입력하세요." oninput="validateUserName()" required="required"/>
        <div id="nameResult"></div>
      </div>
      <div class="group-inputs">
        <label for="position">성별</label>
        <div style="display: flex; border:1px solid #ddd; justify-content: space-evenly;">
            <div style="display:flex;">
                <p> 남자 </p>  <input style="width: 20px;"  type="radio" name="userGender" value="M" required="required">
            </div>
            <div style="display:flex;">
                <p> 여자 </p> <input style="width: 20px;" type="radio" name="userGender" value="W" required="required">
            </div>
        </div>
      </div>
      <div class="group-inputs">
        <label for="dob"> 생년월일 </label>
        <input type="date" name="userBirth" id="userBirth" />
      </div>

      <div class="">
        <a href="#" class="btn btn-next width-50 ml-auto">다음</a>
      </div>
    </div>
    <div class="step-forms">
        <div class="group-inputs">
            <label for="email">연락처</label>
            <input type="text" name="userPhone" id="userPhone" placeholder="연락처를 입력하세요." oninput="validateUserPhone()" required="required"/>
            <div id="phoneResult"></div>
        </div>
        
        <div class="group-inputs">
            <label for="email">이메일</label>
            <input type="text" name="userEmail" id="userEmail" placeholder="이메일을 입력하세요." oninput="validateUserEmail()" required="required">
            <div id="emailResult"></div>
        </div>
        
        <div class="group-inputs">
            <label for="email">주소</label>
            <input type="text" name="userAddress" id="userAddress" placeholder="주소를 입력하세요." oninput="validateUserAddress()" required="required"/>
            <div id="addressResult"></div>
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
            <input type="text" name="userId" id="userId" placeholder="아이디를 입력하세요." required="required" oninput="validateUserId()"> 
            </div>
             <div> 
             <button type="button" onclick="userIdCheck()">중복확인</button>
             </div>
             </div>
             
            <div id="idResult"></div>
        </div>
        
        <div class="group-inputs">
            <label for="email">비밀번호</label>
            <input type="password" name="userPw" id="userPw" placeholder="비밀번호를 입력하세요." oninput="validateUserPassword()" required="required">
            <div id="pwLengthMessage" style="color: red; font-size: 12px; display: none;">비밀번호는 최소 4글자 이상이어야 합니다.</div>
        </div>
          
        <div class="group-inputs">
            <label for="email">비밀번호 확인</label>
            <input type="password" name="userPwre" id="userPwre" placeholder="비밀번호 재입력" required="required" oninput="validateUserPassword()" required="required"/>
            <div id="passwordResult"></div>
        </div>
    
      <div class="btns-group">
        <a href="#" class="btn btn-prev">이전</a>
        <input type="submit" value="회원가입하기"  class="btn" />
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


  document.getElementById("submit-btn").addEventListener("click", function () {

      progressSteps.forEach((progressStep, idx) => {
      if (idx <= formStepsNum) {
        
        progressStep.classList.add("progress-step-check");
      } else {
     
        progressStep.classList.remove("progress-step-check");
      }
    });
    
     var forms = document.getElementById("forms");
     forms.classList.remove("form");
     forms.innerHTML = '<div class="welcome"><div class="content"><svg class="checkmark" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 52 52"><circle class="checkmark__circle" cx="26" cy="26" r="25" fill="none"/><path class="checkmark__check" fill="none" d="M14.1 27.2l7.1 7.2 16.7-16.8"/></svg><h2>회원가입이 완료되었습니다.</span><div></div>';
  });
	
  function userIdCheck() {
	    var userId = document.getElementById("userId").value;

	    if (userId.trim() === "") {
	        alert("아이디를 입력하세요.");
	        return; // 아이디가 비어 있을 경우 함수 종료
	    }

	    var xhr = new XMLHttpRequest();
	    xhr.open("GET", "userIdCheck.join?userId=" + encodeURIComponent(userId), true);
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

    function validateUserPhone() {
        var userPhone = document.getElementById("userPhone").value;
        var regex = /^01[016789]-?\s?\d{3,4}-?\s?\d{4}$/;
        var phoneResult = document.getElementById("phoneResult");

        if (!regex.test(userPhone)) {
            phoneResult.innerHTML = "<span style='color: red; font-size: 12px;'>유효한 연락처 형식을 입력하세요.</span>";
        } else {
            phoneResult.innerHTML = "<span style='color: green; font-size: 12px;'>사용 가능한 연락처입니다.</span>";
        }
        validateForm();
    }

    function validateUserAddress() {
        var userAddress = document.getElementById("userAddress").value;
        var regex = /^[가-힣\s]+$/;
        var addressResult = document.getElementById("addressResult");

        if (!regex.test(userAddress)) {
            addressResult.innerHTML = "<span style='color: red; font-size: 12px;'>올바른 주소 형식을 입력해주세요.</span>";
        } else {
            addressResult.innerHTML = "<span style='color: green; font-size: 12px;'>사용 가능한 주소입니다.</span>";
        }
        validateForm();
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
        validateForm();
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
        validateForm();
    }

    function validateUserId() {
        var userId = document.getElementById("userId").value;
        var regex = /^[a-zA-Z0-9]{4,}$/;
        var idResult = document.getElementById("idResult");

        if (!regex.test(userId)) {
            idResult.innerHTML = "<span style='color: red; font-size: 12px;'>아이디는 영문자와 숫자만 사용할 수 있으며,<br>4글자 이상이어야 합니다.</span>";
        } else {
            idResult.innerHTML = "";
        }
        validateForm();
    }

    function validateUserPassword() {
        var password = document.getElementById("userPw").value;
        var confirmPassword = document.getElementById("userPwre").value;
        var passwordResult = document.getElementById("passwordResult");   
/*         var submitBtn = document.getElementById("submitBtn");
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