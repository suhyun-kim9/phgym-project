
 <!-- 디자인 수정완료 그대로 붙여쓰세요
-->


<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Document</title>
<link rel="stylesheet" href="../include/css/admin-navigation.css">
<link rel="stylesheet" href="css/admin-account.css">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.min.css">



</head>
<body>
	<div class="content">
	
		<jsp:include page="../include/admin-navigation.jsp"/>

		<!--  여기에 넣어주시면 됩니다. -->
		<div class="main">
			<section id="wrap">
				<div class="min_header">
					<h1 class="admin_main_name">
						<i class="bi bi-person-fill"></i> 
						<span> 관리자 계정 (내 정보) </span>
						<input type="submit" value="수정" class="btn-hover btnModi" id="modify_btn" onclick="location.href='doModifyAdminAccount.admin'">
					</h1>
					
				</div>

				<div calss="my_box">

						<img class="trainer_img" src="../main/img/Trainer(5).jpg" width="300px">

						<div class="box3">
							<div class="box1">
								<div>
									<div class="box_name">아이디</div>
									<div class="box_value">${dto.adminId}</div>
								</div>
								
								<div>
									<div class="box_name">이름</div>
									<div class="box_value">${dto.adminName}</div>
								</div>
							</div>
						

							<div class="box1">
								<div>
									<div class="box_name">생년월일</div>
									<div class="box_value">${dto.adminBirth}</div>
								</div>
								<div>
									<div class="box_name">성별</div>
									
									<div class="box_value">
						
										<c:if test="${dto.adminGender == 'M'}">
								            	 <input type="radio"  class="gender" value="M" name="adminGender" checked="checked" disabled>남
								            		<input type="radio"class="genderW" value="W" name="adminGender" disabled>여  
							            	</c:if>
											<c:if test="${dto.adminGender == 'W'}">
							            		<input type="radio" class="gender" value="M" name="adminGender" disabled>남
							            		<input type="radio" class="genderW" value="W" name="adminGender" checked="checked" disabled>여
							            	</c:if>
									</div>
									
									<!-- <div class="box_value">${dto.adminGender}</div>	 -->
								</div>
							</div>

							<div class="box1">
								<div>
									<div class="box_name">연락처</div>
									<div class="box_value">${dto.adminPhone}</div>
								</div>
								<div>
									<div class="box_name">이메일</div>
									<div class="box_value">${dto.adminEmail}</div>	
								</div>
							</div>
							<div class="box1">
								<div>
									<div class="box_name">직책</div>
									<div class="box_value">${dto.adminJobTitle}</div>
								</div>
								<div>
									<div class="box_name">입사일</div>
									<div class="box_value">${dto.adminHireDate}</div>
								</div>
								
							</div>
							
							<div class="box1">
								<div class="box1-box">
									<div class="box_name">경력 및 자격사항</div>
									<div class="box_value2">${dto.adminCareerHis}</div>
								</div>
							</div>
						
					</div>
				</div>

			</section>
			<!--  -------------. -->
			
		</div>
	</div>
		<script type="text/javascript" src="../include/js/admin-navigation.js"> </script>
		<script type="text/javascript">
			var msg = "${sessionScope.LogoutMsg}";
			if(msg == "Y") {
				alert("로그아웃 후 유저페이지로 이동해주세요.");
				<c:remove var="LogoutMsg" scope="session"/>
			}
		</script>
</body>
</html>