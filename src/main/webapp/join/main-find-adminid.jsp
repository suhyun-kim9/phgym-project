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
<link rel="stylesheet" href="../include/css/main-footer.css">
</head>
<body>
	<jsp:include page="../include/main-navigation.jsp" />
		<div class="section">
		<div class="container">
			<div class="row full-height justify-content-center">
				<div class="col-12 text-center align-self-center py-5">
					<div class="section pb-5 pt-5 pt-sm-2 text-center">
						<div class="card-3d-wrap mx-auto">
							<div class="card-3d-wrapper">
							<form action="adminIdFind.join" method="post">
								<div class="card-front">
                                    <div>
                                        <div class="wave"></div>
                                        <div class="wave"></div>
                                        <div class="wave"></div>
                                     </div>
								 <h4 class="mb-4 pb-3"> 관리자 아이디 찾기 </h4>
								 <div class="form-group">
	                       			  <div> 이 름 </div>
									  <input type="text" name="adminName" class="form-style input2" placeholder="이름을 입력하세요." id="adminName" autocomplete="off" oninput="validateAdminName()" required="required">
									  <div id="nameResult" style="width: 10px;"></div>
									  <i class="input-icon uil uil-at"></i>
								  </div>
								  	
								  <div class="form-group mt-2">
                     				  <div> 이메일 </div>
									  <input type="text" name="adminEmail" class="form-style input2" placeholder="이메일을 입력하세요." id="adminEmail" autocomplete="off" oninput="validateAdminEmail()" required="required">
									  <div id="emailResult" style="width: 10px;"></div>
									  <i class="input-icon uil uil-lock-alt"></i>
								  </div>
								  
			                      <div class="form-group mt-2">
                     				  <div> 연락처 </div>
									  <input type="text" name="adminPhone" class="form-style input2" placeholder="연락처를 입력하세요." id="adminPhone" autocomplete="off" oninput="validateAdminPhone()" required="required">
									  <div id="phoneResult" style="width: 10px;"></div>
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

	<script type="text/javascript">
	
		var adminIdFind = "${adminIdFind}";
	    console.log("adminIdFind = " + adminIdFind);
	    
		if(adminIdFind == "fail"){
	    	
	    	alert("일치하는 회원이 없습니다.");
	    	
	    }
	
	
 	    function validateAdminName() {
	    	
	    	var adminName = document.getElementById("adminName").value;
	    	var regex = /^[가-힣]+$/;
	    	var nameResult = document.getElementById("nameResult");
	    	
	        if (!regex.test(adminName)) {
	            nameResult.innerHTML = "<span style='display: inline-block; position: relative; top: 35px; right: 315px; width: 250px; color: red; font-size: 12px;'>이름은 한글만 입력할 수 있습니다.</span>";
	        } else {
	            nameResult.innerHTML = "";
	        }
	    }
 	    
 	    function validateAdminEmail() {
	    	
	    	var adminEmail = document.getElementById("adminEmail").value;
	    	var regex = /^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$/;
	    	var emailResult = document.getElementById("emailResult");
	    	
	        if (!regex.test(adminEmail)) {
	        	emailResult.innerHTML = "<span style='display: inline-block; position: relative; top: 35px; right: 315px; width: 250px; color: red; font-size: 12px;'>유효한 이메일 형식을 입력하세요.</span>";
	        } else {
	        	emailResult.innerHTML = "";
	        }
	    }
 	    
 	    function validateAdminPhone() {
 	    	
 	    	var adminPhone = document.getElementById("adminPhone").value;
 	    	var regex = /^01[016789]-?\s?\d{3,4}-?\s?\d{4}$/;
 	    	var phoneResult = document.getElementById("phoneResult");
 	    	var submitBtn = document.getElementById("submitBtn");
 	    	
 	    	if(!regex.test(adminPhone)) {
 	    		phoneResult.innerHTML = "<span style='display: inline-block; position: relative; top: 35px; right: 305px; width: 250px; color: red; font-size: 12px;'>연락처는 숫자만 입력할 수 있습니다.</span>";
 	    		submitBtn.disabled = true;
 	    		
 	    	} else {
 	    		phoneResult.innerHTML = "";
 	    		submitBtn.disabled = false;
 	    	}
 	    }
	    
	</script>
	<jsp:include page="../include/main-footer.jsp"/>
</body>
</html>