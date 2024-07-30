<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.min.css">
    <link rel="stylesheet" href="../include/css/main-navigation.css">
    <link rel="stylesheet" href="../include/css/main-footer.css">
    <link rel="stylesheet" href="css/mypage-userInfoContent.css">
</head>
<body>
    <jsp:include page="../include/main-navigation.jsp"/>
	
    <section class="content">
    	<form action="userInfoUpdate.mypage" method="post">
	    	<div class="wrap-top">
	    		<h2>회원정보</h2>
	    		<div>
	    			<input type="submit" value="수정완료" class="submit">
	    			<input type="reset" value="되돌리기" class="reset">
	    		</div>
	    	</div>
	    	
	    	<div class="wrap-middle">
	    		<div class="wrap-middle-left">
	    			<div class="profile">
	    				<i class="bi bi-person"></i>
	    			</div>
	    		</div>
	    		
	    		<div class="wrap-middle-center">
	    			<p>아이디</p>
	    			<input type="text" name="userId" value="${dto.userId}" disabled="disabled">
	    			<p>이름</p>
	    			<input type="text" name="userName" value="${dto.userName}">
	    			<p>성별</p>
	    			<c:if test="${dto.userGender == 'M'}">
	    				<div>
			    			<input type="radio" name="userGender" value="M" class="userGenderRadio" checked="checked"><p>남</p>
			    			<input type="radio" name="userGender" value="W" class="userGenderRadio"><p>여</p>
		    			</div>
	    			</c:if>
	    			<c:if test="${dto.userGender == 'W'}">
	    				<div>
			    			<input type="radio" name="userGender" value="M" class="userGenderRadio"><p>남</p>
			    			<input type="radio" name="userGender" value="W" class="userGenderRadio" checked="checked"><p>여</p>
		    			</div>
	    			</c:if>
	    			<p>이메일</p>
	    			<input type="text" name="userEmail" value="${dto.userEmail}">
	    			<p>가입일</p>
	    			<input type="date" name="userRegDate" value="${dto.userRegDate}" disabled="disabled">
	    		</div>
	    		<div class="wrap-middle-right">
	    			<p>비밀번호</p>
	    			<input type="text" name="userPw" value="${dto.userPw}">
	    			<p>생년월일</p>
	    			<input type="text" name="userBirth" value="${dto.userBirth}" disabled="disabled">
	    			<p>전화번호</p>
	    			<input type="text" name="userPhone" value="${dto.userPhone}">
	    			<p>주소</p>
	    			<input type="text" name="userAddress" value="${dto.userAddress}">
	    		</div>
	    	</div>
    	</form>
    </section>
    
    <jsp:include page="../include/main-footer.jsp"/>
</body>
</html>