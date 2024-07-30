
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
     <link rel="stylesheet" href="css/admin-account-modify.css">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.min.css">
    


</head>
<body>
    <div class="content"> 
    	<jsp:include page="../include/admin-navigation.jsp"/>


<!--  여기에 넣어주시면 됩니다. -->
<div class="main">
	<section id="wrap">
        
<form action="modifyAdminAccount.admin" method="post">
		<div class="min_header">
			<h1 class="admin_main_name">
				<i class="bi bi-person-fill"></i> 
				<span> 관리자 계정 (내 정보) </span>
				<input type="reset" class="btn-hover btnModi" value="취소" onclick="location.href='account.admin'">
				<input type="submit" class="btn-hover btnModi" id="modify_btn" value="수정완료" id="modify_f_btn">
			</h1>
		</div>
	

<div calss="my_box">
	<div class="box3">
		<div class="box1">
			<div>
				<div class="box_name">아이디</div>
				<div class="box_value"><input type="text" name="adminPw" value="${dto.adminId}" disabled></div>
			</div>
			<div>
				<div class="box_name">비밀번호</div>
				<div class="box_value"><input type="text" name="adminPw" value="${dto.adminPw}" ></div>
			</div>
		</div>
	

		<div class="box1">
				
			<div>
				<div class="box_name">이름</div>
				<div class="box_value"><input type="text" name="adminName" value="${dto.adminName}"></div>
			</div>

			<div>
				<div class="box_name">생년월일</div>
				<div class="box_value"><input type="date" name="adminBirth" value="${dto.adminBirth}" disabled></div>
			</div>
			<div>
				<div class="box_name">성별</div>
				<div class="box_value">
				<div>
					<c:if test="${dto.adminGender == 'M'}">
		            	 <input type="radio" value="M" name="adminGender" checked="checked">남
		            	<input type="radio" value="W" name="adminGender">여  
	            	</c:if>
				</div>
				<div>
					<c:if test="${dto.adminGender == 'W'}">
	            		<input type="radio" value="M" name="adminGender">남
	            		<input type="radio" value="W" name="adminGender" checked="checked">여
	            	</c:if>
				</div>
			
	            
				</div>
				
				<!-- <div class="box_value">${dto.adminGender}</div>	 -->
			</div>
		</div>

		<div class="box1">
			<div>
				<div class="box_name">연락처</div>
				<div class="box_value"><input type="text" name="adminPhone" value="${dto.adminPhone}"></div>
			</div>
			<div>
				<div class="box_name">이메일</div>
				<div class="box_value"><input type="text" name="adminEmail" value="${dto.adminEmail}"></div>	
			</div>
		</div>
		<div class="box1">
			<div>
				<div class="box_name">직책</div>
			
				<div class="box_value">
				<%-- <input type="text" name="adminJobTitle" value="${dto.adminJobTitle}"> --%>
			<select id="adminJobTitle" name="adminJobTitle" style="text-align: left;" required="required">
                <option value="${dto.adminJobTitle}" disabled selected> ${dto.adminJobTitle}</option>
                <option value="pt팀장">pt팀장</option>
                <option value="트레이너">트레이너</option>
                <option value="인포메이션">인포메이션</option>
            </select>
				</div>
			</div>
			<div>
				<div class="box_name">입사일</div>
				<div class="box_value"> <input type="text" name="adminEmail" value="${dto.adminHireDate}"> </div>
			</div>
			
		</div>
		
		<div class="box1">
			<div class="box1-box">
				<div class="box_name">경력 및 자격사항</div>
				<div class="box_value2"><textarea name="adminCareerHis" > ${dto.adminCareerHis} </textarea></div>
			</div>
		</div>
	
</div>
</div>
</form>
  </section>
<!--  -------------. -->

</div>

    <script type="text/javascript" src="../include/js/admin-navigation.js"> </script>
    <script type="text/javascript">
    if (${updateMsg} == true) {
    	alter('수정이 완료되었습니다.');
    }
    </script>
 
</body>
</html>