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
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.min.css">
</head>
<body>
	<div class="content">
		<div class="aside">
			<nav>
				<ul class="nav_1">
					<div class="logo">
						<a href="/PHGYM/admin/user-find.admin"> <img src="../include/img/logo-light.png"> </a>
					</div>
					<li><i class="bi bi-person-fill"></i> <a href="/PHGYM/admin/account.admin"> 관리자 계정 </a></li>
					<li>
						<div id="dropdown">
							<i class="bi bi-search"></i> <a> 회원 조회 </a> <i class="bi bi-chevron-compact-right"></i>
						</div>
					</li>
					<ul id="nav_2">
						<li><i class="bi bi-person-circle"></i> <a href="/PHGYM/admin/user-find.admin"> 회원 정보 조회 </a></li>
						<li><i class="bi bi-calendar-check"></i> <a href="admin-pt-check.jsp"> 회원 스케쥴 조회 </a></li>
					</ul>
					<li><i class="bi bi-calendar4-event"></i> <a href="/PHGYM/admin/trainer-pt-check.admin"> 스케쥴 관리 </a></li>
					<li><i class="bi bi-send"></i> <a href="/PHGYM/mypage/transfer.mypage"> 회원권양도 </a></li>
					<li><i class="bi bi-bell"></i> <a href="/PHGYM/admin/notice.admin"> 공지사항 </a></li>
					<li><i class="bi bi-archive"></i> <a href="/PHGYM/admin/exerciseinfo-list.admin"> 운동정보 </a></li>
					<li><i class="bi bi-chat-dots"></i> <a href=""> 문의사항 </a></li>
				</ul>
				<div class="nav_logout">
					<c:if test="${sessionScope.sessionAdminNo != null && sessionScope.sessionAdminNo != ''}">
						<input type="button" value="로그아웃" onclick="location.href='../join/LogoutAdmin.join'">
					</c:if>
				</div>
			</nav>
		</div>

		<!--  여기에 넣어주시면 됩니다. -->
		<div class="main"></div>
		<!--  -------------. -->
	</div>
	<script type="text/javascript" src="js/admin-navigation.js"></script>
</body>
</html>