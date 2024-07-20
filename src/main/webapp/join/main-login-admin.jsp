<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>



<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Document</title>
<link rel="stylesheet" href="css/main-login-admin.css">

	<script type="text/javascript">
        function showError(msg) {
            alert(msg);
        }
    </script>

</head>

<body>

	<div class="wrap">
		<h3>관리자 로그인</h3>
		<div class="login_page">
			<div class="login_wrap">

				<form action="adminLogin.join" method="post">
					<div class="id">
						<p>아이디</p>
						<input type="text" name="adminId" placeholder="아이디를 입력하세요."
							required="required">
					</div>

					<div class="pw">
						<p>비밀번호</p>
						<input type="password" name="adminPw" placeholder="비밀번호를 입력하세요."
							required="required">
					</div>

					<input type="checkbox" name="check">
					<p class="login_situation">로그인 상태 유지</p>

					<input type="submit" value="로그인">

					<div class="find">
						<a href="main-find-adminid.jsp">아이디찾기</a> <a
							href="main-find-adminpw.jsp">비밀번호찾기</a>
					</div>
				</form>
			</div>
		</div>
	</div>
		
	<% 
        String msg = (String) request.getAttribute("msg");
        if (msg != null) { 
    %>
        <script type="text/javascript">
        
            showError("<%= msg %>");
            
        </script>
    <% 
        } 
    %>	
	
</body>
</html>