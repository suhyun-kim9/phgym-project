<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Document</title>
<link rel="stylesheet" href="../include/css/main-navigation.css">
<link rel="stylesheet" href="css/main-find-userid.css">
</head>
<body>
<jsp:include page="../include/main-navigation.jsp"/>
	
		<div class="section">
		<div class="container">
			<div class="row full-height justify-content-center">
				<div class="col-12 text-center align-self-center py-5">
					<div class="section pb-5 pt-5 pt-sm-2 text-center">
						<div class="card-3d-wrap mx-auto">
							<div class="card-3d-wrapper">
							<form action="userIdFind.join" method="post">
								<div class="card-front">
                                    <div>
                                        <div class="wave"></div>
                                        <div class="wave"></div>
                                        <div class="wave"></div>
                                     </div>
								 <h4 class="mb-4 pb-3"> 회원 아이디 찾기 </h4>
								 <div class="form-group">
	                       			  <div> 이름 </div>
									  <input type="text" name="userName" class="form-style input2" placeholder="이름을 입력하세요." id="userName" autocomplete="off" oninput="validateUserName()" required="required">
									  <div id="nameResult"></div>
									  <i class="input-icon uil uil-at"></i>
								  </div>
								  	
								  <div class="form-group mt-2">
                     				  <div> 이메일 </div>
									  <input type="text" name="userEmail" class="form-style input2" placeholder="이메일을 입력하세요." id="userEmail" autocomplete="off" oninput="validateUserEmail()" required="required">
									  <div id="emailResult"></div>
									  <i class="input-icon uil uil-lock-alt"></i>
								  </div>
								  
			                      <div class="form-group mt-2">
                     				  <div> 연락처 </div>
									  <input type="text" name="userPhone" class="form-style input2" placeholder="연락처를 입력하세요." id="userPhone" autocomplete="off" oninput="validateUserPhone()" required="required">
									  <div id="phoneResult"></div>
									  <i class="input-icon uil uil-lock-alt"></i>
								  </div>
			
			                      <div class="box bg-1">
			                          <input type="submit" value="아이디찾기" id="submitBtn" disabled="disabled" class="button button--wapasha button--round-s">
			                      </div>
				      			</div>
				      			</form>
				      		</div>		
				      	</div>
			      	</div>
		      	</div>
		    </div>
		</div>
	</div>
	<script>
	
		var userIdFind = "${userIdFind}";
	    console.log("userIdFind = " + userIdFind);
	    
		if(userIdFind == "fail"){
	    	
	    	alert("일치하는 회원이 없습니다.");
	    	
	    }
	
		function validateUserName() {
			var userName = document.getElementById("userName").value;
			var regex = /^[가-힣]+$/;
			var nameResult = document.getElementById("nameResult");
			
	        if (!regex.test(userName)) {
	            nameResult.innerHTML = "<span style='color: red; font-size: 12px;'>이름은 한글만 입력할 수 있습니다.</span>";
	        } else {
	            nameResult.innerHTML = "";
	        }
		}
		
		function validateUserEmail() {
			var userEmail = document.getElementById("userEmail").value;
			var regex = /^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$/;
			var emailResult = document.getElementById("emailResult");
			
	        if (!regex.test(userEmail)) {
	        	emailResult.innerHTML = "<span style='color: red; font-size: 12px;'>유효한 이메일 형식을 입력하세요.</span>";
	        } else {
	        	emailResult.innerHTML = "";
	        }
		}
		
		function validateUserPhone() {
			var userPhone = document.getElementById("userPhone").value;
			var regex = /^01[016789]-?\s?\d{3,4}-?\s?\d{4}$/;
			var phoneResult = document.getElementById("phoneResult");
			var submitBtn = document.getElementById("submitBtn");
			
 	    	if(!regex.test(userPhone)) {
 	    		phoneResult.innerHTML = "<span style='color: red; font-size: 12px;'>연락처는 숫자만 입력할 수 있습니다.</span>";
 	    		submitBtn.disabled = true;
 	    		
 	    	} else {
 	    		phoneResult.innerHTML = "";
 	    		submitBtn.disabled = false;
 	    	}
		}
	
	</script>
</body>
</html>