<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Document</title>
<link rel="stylesheet" href="../include/css/main-navigation.css">
<link rel="stylesheet" href="css/main-find-adminpw.css">
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
							<form action="userPwFind.join" method="post">
								<div class="card-front">
                                    <div>
                                        <div class="wave"></div>
                                        <div class="wave"></div>
                                        <div class="wave"></div>
                                     </div>
								 <h4 class="mb-4 pb-3"> 관리자 비밀번호 찾기 </h4>
								 <div class="form-group">
	                       			  <div> 아이디 </div>
									  <input type="text" name="adminId" class="form-style input2" placeholder="아이디를 입력하세요." id="adminId" autocomplete="off" oninput="validateAdminId()">
									  <div id="idResult" style="width: 10px;"></div>
									  <i class="input-icon uil uil-at"></i>
								  </div>
								  	
								  <div class="form-group mt-2">
                     				  <div> 이메일 </div>
									  <input type="text" name="adminEmail" class="form-style input2" placeholder="이메일을 입력하세요." id="adminEmail" autocomplete="off" oninput="validateAdminEmail()">
									  <div id="emailResult" style="width: 10px;"></div>
									  <i class="input-icon uil uil-lock-alt"></i>
								  </div>
								  
			                      <div class="form-group mt-2">
                     				  <div> 연락처 </div>
									  <input type="text" name="adminPhone" class="form-style input2" placeholder="연락처를 입력하세요." id="adminPhone" autocomplete="off" oninput="validateAdminPhone()">
									  <div id="phoneResult" style="width: 10px;"></div>
									  <i class="input-icon uil uil-lock-alt"></i>
								  </div>
			
			                      <div class="box bg-1">
			                          <input type="submit" value="비밀번호찾기" id="submitBtn" disabled="disabled" class="button button--wapasha button--round-s">
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
	
		var adminPwFind = "${adminPwFind}";
	    console.log("adminPwFind = " + adminPwFind);
	    
		if(adminPwFind == "fail"){
	    	
	    	alert("일치하는 회원이 없습니다.");
	    	
	    }    
	
	    function validateAdminId() {
	    	
	    	var adminId = document.getElementById("adminId").value;
	    	var regex = /^[a-zA-Z0-9]{4,}$/;
	    	var idResult = document.getElementById("idResult");
	    	
	    	if(!regex.test(adminId)) {
	    		idResult.innerHTML = "<span style='display: inline-block; position: relative; top: 35px; right: 315px; width: 250px; color: red; font-size: 10px;'>올바른 아이디 형식을 입력하세요.</span>";
	    		
	    	} else {
	    		idResult.innerHTML = "";
	    	}
	    }
	    
	    function validateAdminEmail() {
	    	
	    	var adminEmail = document.getElementById("adminEmail").value;
	    	var regex = /^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$/;
	    	var emailResult = document.getElementById("emailResult");
	    	
	    	if(!regex.test(adminEmail)) {
	    		emailResult.innerHTML = "<span style='display: inline-block; position: relative; top: 35px; right: 315px; width: 250px; color: red; font-size: 10px;'>유효한 이메일 형식을 입력하세요.</span>";
	    		
	    	} else {
	    		emailResult.innerHTML = "";
	    	}
	    }
	    
	    function validateAdminPhone() {
	    	
	    	var adminPhone = document.getElementById("adminPhone").value;
	    	var regex = /^01[016789]-?\s?\d{3,4}-?\s?\d{4}$/;
	    	var phoneResult = document.getElementById("phoneResult");
	    	
	    	if(!regex.test(adminPhone)) {
	    		phoneResult.innerHTML = "<span style='display: inline-block; position: relative; top: 35px; right: 305px; width: 250px; color: red; font-size: 10px;'>연락처는 숫자만 입력할 수 있습니다.</span>";
	    		submitBtn.disabled = true;
	    	
	    	} else {
	    		phoneResult.innerHTML = "";
	    		submitBtn.disabled = false;
	    	}
	    } 
	    
	</script>
</body>
</html>