<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.min.css">
<link rel="stylesheet" href="../include/css/main-navigation.css">
<style>
	.main_nav_bar .animation{
    position: absolute;
    top: 80%;
    left: ${left};
    width: ${width};
    height: 2px;
    background-color: #f97316;
    transition: 0.5s;
</style>
<nav class="main_nav_bar">
	<ul class="main_nav">
		<a href="/PHGYM/main/userhome.main"> <img src="../include/img/logo-light2.png"> </a>
		<li class="dr1"><a href="/PHGYM/main/introduction.main" style="color: black;"> 헬스장 소개 </a></li>
		<li class="dr2"><a href="/PHGYM/main/promotionList.main" style="color: black;"> 프로모션 </a></li>
		<li class="dr dropdown2"><a style="color: black;"> 문의/고객센터 </a></li>
		<div class="dropdownContent2">
			<li><i class="bi bi-bell"></i> <a href="/PHGYM/board/main_notice_list.board"> 공지사항 </a></li>
			<li><i class="bi bi-archive"></i> <a href="/PHGYM/board/main_exe_list.board"> 운동정보 </a></li>
			<li><i class="bi bi-chat-dots"></i> <a href="/PHGYM/board/main_qna_list.board"> 문의사항 </a></li>
		</div>

		<li class="dr4"><a href="/PHGYM/main/map.main" style="color: black;"> 오시는 길 </a></li>
		<li id="mypage" class="dr dropdown" style="display: none;"><a style="color: black;"> 마이페이지 </a></li>
		<div class="dropdownContent">
			<li><i class="bi bi-check-lg"></i> <a href="/PHGYM/mypage/checkin.mypage"> 출석체크 </a></li>
			<li><i class="bi bi-bar-chart-line"></i> <a href="/PHGYM/mypage/statistics.mypage"> 통계확인 </a></li>
			<li><i class="bi bi-calendar-check"></i> <a href="/PHGYM/mypage/reservationTrainer.mypage"> PT예약 </a></li>
			<li><i class="bi bi-send"></i> <a href="/PHGYM/mypage/transfer.mypage"> 회원권양도 </a></li>
			<li><i class="bi bi-person-circle"></i> <a href="/PHGYM/mypage/userInfo.mypage"> 회원정보 </a></li>
		</div>

		<li class="gnb">
			<c:if test="${sessionScope.sessionUserNo == null || sessionScope.sessionUserNo == ''}">
				<input type="button" value="로그인" onclick="location.href='../join/LoginPage.join'">
				<input type="button" value="회원가입" onclick="location.href='../join/JoinPage.join'">
			</c:if>
			<c:if test="${sessionScope.sessionUserNo != null && sessionScope.sessionUserNo != ''}">
				<input type="button" value="로그아웃" onclick="location.href='../join/LogoutUser.join'">
			</c:if>
		</li>
		<div class="animation"></div>
	</ul>
</nav>
<script type="text/javascript" src="../include/js/main-navigation.js"></script>
<script type="text/javascript"> 
	var showMypage = '${sessionScope.sessionUserNo}';
	var mypage = document.getElementById("mypage");
	if(showMypage != null && showMypage != '') {
		mypage.style.display = "block";
	}
</script>