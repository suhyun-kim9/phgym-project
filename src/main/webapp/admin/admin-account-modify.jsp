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
        

  <h1 class="admin_main_name">
    관리자 계정 (내 정보)
</h1>
<form action="modifyAdminAccount.admin" method="post">
	<table class="admin-account-table">
	    <tbody class="admin-account-tbody">
	        <tr>
	            <th> 이름 </th>
	            <td> <div> <input type="text" name="adminName" value="${dto.adminName}"> </div> </td>
	        </tr>  
	        <tr >
	            <th> 생년월일 </th>
	            <td> <div> <input type="date" name="adminBirth" value="${dto.adminBirth}"> </div> </td>
	        </tr>  
	          <tr >
	            <th> 성별 </th>
	            <td>
	            	<c:if test="${dto.adminGender == 'M'}">
		            	<input type="radio" value="M" name="adminGender" checked="checked">남
		            	<input type="radio" value="W" name="adminGender">남
	            	</c:if>
	            	<c:if test="${dto.adminGender == 'W'}">
	            		<input type="radio" value="M" name="adminGender">남
	            		<input type="radio" value="W" name="adminGender" checked="checked">여
	            	</c:if>
	            </td>
	        </tr>  
	        <tr >
	            <th> 연락처 </th>
	            <td><div> <input type="text" name="adminPhone" value="${dto.adminPhone}"> </div> </td>
	        </tr>  
	        <tr >
	            <th> 비밀번호 </th>
	            <td> <div><input type="text" name="adminPw" value="${dto.adminPw}"></div> </td>
	        </tr>  
	        <tr >
	            <th> 직책 </th>
	            <td> <div><input type="text" name="adminJobTitle" value="${dto.adminJobTitle}"></div> </td>
	        </tr>  
	        <tr >
	            <th> 입사일 </th>
	            <td><div><input type="date" name="adminHireDate" value="${dto.adminHireDate}"></div> </td>
	        </tr> 
	        <tr >
	            <th> 이메일 </th>
	            <td> <div><input type="text" name="adminEmail" value="${dto.adminEmail}"></div> </td>
	        </tr> 
	        <tr >
	            <th> 경력 및 자격사항 </th>
	            <td> <div> <textarea name="career" name="adminCareerHis" value="${dto.adminCareerHis}"> </textarea> </div> </td>
	        </tr> 
	        
	    </tbody>
	</table>
	<input type="submit" value="수정완료" id="modify_f_btn">
	<input type="reset" value="취소">
</form>
  </section>
<!--  -------------. -->

</div>

    <script type="text/javascript" src="../include/js/admin-navigation.js"> </script>
 
</body>
</html>