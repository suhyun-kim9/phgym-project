<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<style>
	.nav_1 > li:nth-child(${num}) {
 		background-color : ${color};
	}
</style>

<link rel="stylesheet" href="../include/css/admin-navigation.css">
		<div class="aside">
			<nav>
				<ul class="nav_1">
					<div class="logo1">
						<a href="/PHGYM/admin/account.admin"> <img src="../include/img/logo-light.png" width=250px;> </a>
					</div>
					<li><i class="bi bi-person-fill"></i> <a href="/PHGYM/admin/account.admin"> 관리자 계정 </a></li>
					<li>
						<div id="dropdown">
							<i class="bi bi-search"></i> <a href="/PHGYM/admin/goUserFind.admin"> 회원 조회 </a></i>
						</div>
					</li>
					<li><i class="bi bi-calendar4-event"></i> <a href="/PHGYM/admin/trainer-pt-check.admin"> 스케쥴 관리 </a></li>
					<!-- <li><i class="bi bi-send"></i> <a href="/PHGYM/mypage/transfer.mypage"> 회원권양도 </a></li> -->
					<li><i class="bi bi-bell"></i> <a href="/PHGYM/board/main_notice_list.board"> 공지사항 </a></li>
					<li><i class="bi bi-archive"></i> <a href="/PHGYM/board/main_exe_list.board"> 운동정보 </a></li>
					<li><i class="bi bi-chat-dots"></i> <a href="/PHGYM/board/main_qna_list.board"> 문의사항 </a></li>
				</ul>
				<div class="nav_logout">
					<c:if test="${sessionScope.sessionAdminNo != null && sessionScope.sessionAdminNo != ''}">
						<input type="button" value="로그아웃" onclick="location.href='../join/LogoutAdmin.join'">
					</c:if>
				</div>
			</nav>
		</div>

	<script type="text/javascript" src="js/admin-navigation.js"></script>

