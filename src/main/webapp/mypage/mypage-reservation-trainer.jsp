<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Document</title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.min.css">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/swiper@11/swiper-bundle.min.css" />
<link rel="stylesheet" href="../include/css/main-navigation.css">
<link rel="stylesheet" href="../include/css/main-footer.css">
<link rel="stylesheet" href="css/mypage-reservation-trainer.css">
<script src="https://cdn.jsdelivr.net/npm/swiper@11/swiper-bundle.min.js"></script>
</head>
<body>
	<jsp:include page="../include/main-navigation.jsp" />

	<section class="content">
		<div class="wrap-top">
			<h2>PT예약</h2>
			<p>${sessionScope.sessionUserName}님의 PT잔여횟수는 <b style="color:#f97316">${remainingPtCnt}회</b>입니다.</p>
		</div>
		
		<div class="wrap-middle">
			<!-- Swiper -->
			<div class="swiper mySwiper">
				<div class="swiper-wrapper">
					<div class="swiper-slide">
						<img src="img/Trainer(1).webp">
						<div class="box bg-1">
							<button onclick="location.href='reservationDate.mypage?adminNo=1'" class="button button--wapasha button--round-s">예약하기</button>
						</div>
						<div class="intro-content">
							<p>✔︎ 잉혜죽 트레이너</p>
							<div>
								<p>한국체육대학교 사회체육학과 전공</p>
								<p>생활 스포츠 지도사 2급 (보디빌딩)</p>
								<p>KATA ATC (한국선수트레이너협회)</p>
								<p>NSCA 스포츠 영양코치 Level.1</p>
								<p>현)파워하우스 퍼스널트레이너</p>
							</div>
						</div>
					</div>
					<div class="swiper-slide">
                        <img src="img/Trainer(2).webp">
                        <div class="box bg-1">
                            <button onclick="location.href='reservationDate.mypage?adminNo=2'" class="button button--wapasha button--round-s"> 예약하기 </button>
                        </div>
                        <div class="intro-content">
                            <p>✔︎ 김물현 트레이너</p>
                            <div>
                            	<p>생활 스포츠 지도사 2급 (보디빌딩)</p>
	                            <p>피돌로지 영양 전문가 과정 수료</p>
	                            <p>독일 블랙롤 국제자격 과정 수료</p>
	                            <p>2020 INFC 피지크 오픈 6위</p>
	                            <p>현)파워하우스 퍼스널트레이너</p>
                            </div>
                        </div>
                    </div>
                    <div class="swiper-slide">
                        <img src="img/Trainer(3).webp">
                        <div class="box bg-1">
                            <button onclick="location.href='reservationDate.mypage?adminNo=3'" class="button button--wapasha button--round-s"> 예약하기 </button>
                        </div>
                        <div class="intro-content">
                            <p>✔︎ 북상혁 트레이너</p>
                            <div>
                            	<p>계명대학교 사회체육학과 전공</p>
	                            <p>생활 스포츠 지도사 2급 (보디빌딩)</p>
	                            <p>생활 스포츠 지도사 2급</p>
	                            <p>스포츠 마사지 1급</p>
	                            <p>현)파워하우스 퍼스널트레이너</p>
                            </div>
                        </div>
                    </div>
                    <div class="swiper-slide">
                        <img src="img/Trainer(4).webp">
                        <div class="box bg-1">
                            <button onclick="location.href='reservationDate.mypage?adminNo=4'" class="button button--wapasha button--round-s"> 예약하기 </button>
                        </div>
                        <div class="intro-content">
                            <p>✔︎ 해찬들 트레이너</p>
                            <div>
                            	<p>생활 스포츠 지도사 2급 (보디빌딩)</p>
	                            <p>바디밸런스 필라테스 교육과정 수료</p>
	                            <p>바디아티스트 교정운동전문가 교육 이수</p>
	                            <p>L&K 교정운동 교육과정 이수</p>
	                            <p>현)파워하우스 퍼스널트레이너</p>
                            </div>
                        </div>
                    </div>
                    <div class="swiper-slide">
                        <img src="img/Trainer(5).webp">
                        <div class="box bg-1">
                            <button onclick="location.href='reservationDate.mypage?adminNo=5'" class="button button--wapasha button--round-s"> 예약하기 </button>
                        </div>
                        <div class="intro-content">
                            <p>✔︎ 박욱인 트레이너</p>
                            <div>
                            	<p>앞구르기 대회 1등</p>
	                            <p>복싱 클럽 운영</p>
	                            <p>생활 스포츠 지도사 2급</p>
	                            <p>스포츠 마사지 1급</p>
	                            <p>현)파워하우스 퍼스널트레이너</p>
                            </div>
                        </div>
                    </div>
                    <div class="swiper-slide">
                        <img src="img/Trainer(6).webp">
                       <div class="box bg-1">
                            <button onclick="location.href='reservationDate.mypage?adminNo=6'" class="button button--wapasha button--round-s"> 예약하기 </button>
                        </div>
                        <div class="intro-content">
                            <p>✔︎ 간지윤 트레이너</p>
                           	<div>
                           		<p>앞구르기 대회 1등</p>
	                            <p>복싱 클럽 운영</p>
	                            <p>생활 스포츠 지도사 2급</p>
	                            <p>스포츠 마사지 1급</p>
	                            <p>현)파워하우스 퍼스널트레이너</p>
                           	</div>
                        </div>
                    </div>
				</div>
				<div class="swiper-button-prev"></div>
				<div class="swiper-button-next"></div>
			</div>
		</div>
	</section>
	
	<jsp:include page="../include/main-footer.jsp"/>

	<script type="text/javascript">
		var btn = document.querySelectorAll("button");
		var remainingPtCnt = ${remainingPtCnt};
		if (remainingPtCnt < 1) {
			for (var i = 0; i < btn.length; i++) {
				btn[i].setAttribute("disabled", true);
				btn[i].style.cursor = "default";
				btn[i].style.backgroundColor = "#8c8c8c";
				btn[i].style.pointerEvents = "none";
				btn[i].innerHTML = "예약불가";
			}
		}

		var swiper = new Swiper(".mySwiper", {
			slidesPerView : 3,
			spaceBetween : 30,
			pagination : {
				el : ".swiper-pagination",
				clickable : true,
			},
			navigation : {
				nextEl : '.swiper-button-next',
				prevEl : '.swiper-button-prev',
			}
		});

		var doPtReservationMsg = "${sessionScope.doPtReservationMsg}";
		if (doPtReservationMsg) {
			alert("PT 예약이 완료되셨습니다.");
		}
		<c:remove var="doPtReservationMsg" scope="session"/>
	</script>
</body>
</html>