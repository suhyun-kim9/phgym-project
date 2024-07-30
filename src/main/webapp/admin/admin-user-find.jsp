<!-- 수정완료 -->

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
<link rel="stylesheet" href="css/admin-user-find.css">
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.min.css">
</head>
<body>

	<div class="content">

		<jsp:include page="../include/admin-navigation.jsp" />


		<!--  여기에 넣어주시면 됩니다. -->
		<div class="main">
			<section id="wrap">

	<div class="content2">

		<!--  여기에 넣어주시면 됩니다. -->
		<div class="main">
			<section id="wrap">
				<!-- admin 페이지 헤더  -->
				<div class="admin_main_name">
					<i class="bi bi-person-circle"></i> <span>회원 정보 조회</span>
				</div>
				<form action="getUserAccount.admin" method="post">
					<div class="search_bar1">
						<input type="text" name="userName"
							placeholder="조회 할 회원 이름을 입력하세요."> <input type="submit"
							value="조회">
					</div>
				</form>
				<div class="select_bar1">
					<select class="sel">
						<option value="0">-정렬선택-</option>
						<option value="1">번호순</option>
						<option value="2">이름순</option>
						<option value="3">PT회원</option>
					</select>
				</div>

				<div class="wrap3">
					<c:if test="${!empty list1}">
						<table class="user_table" style="table-layout: fixed">
							<tbody>
								<tr>
									<th width="1%">회원번호</th>
									<th width="3%">이름</th>
									<th width="5%">생년월일</th>
									<th width="1%">성별</th>
									<th width="5%">전화번호</th>
									<th width="5%">이메일</th>
									<th width="1%">PT회원</th>
								</tr>

								<c:forEach var="dto" items="${list1}">
									<tr>
										<td><a href="getUserAccount2.admin?userNo=${dto.userNo}">
												${dto.userNo}</a></td>
										<td><a href="getUserAccount2.admin?userNo=${dto.userNo}">
												${dto.userName}</a></td>
										<td><a href="getUserAccount2.admin?userNo=${dto.userNo}">
												${dto.userBirth}</a></td>
										<td><a href="getUserAccount2.admin?userNo=${dto.userNo}">
												${dto.userGender}</a></td>
										<td><a href="getUserAccount2.admin?userNo=${dto.userNo}">
												${dto.userPhone}</a></td>
										<td><a href="getUserAccount2.admin?userNo=${dto.userNo}">
												${dto.userEmail}</a></td>
												
										<c:if test="${dto.ptYn == 'N'}">	
										<td><a href="getUserAccount2.admin?userNo=${dto.userNo}" id="${dto.ptYn}"></a><i class="bi bi-check-lg" style='color:red'></i></td></c:if>
										<c:if test="${dto.ptYn == 'Y'}">
										<td><a href="getUserAccount2.admin?userNo=${dto.userNo}" id="${dto.ptYn}"></a> <i class="bi bi-dot"  style='color:#ddd'> </i></td></c:if>
									</tr>
								</c:forEach>
							</tbody>
						</table>
						<!-- 페이지네이션 컨트롤 -->
						<div class="pagination">
							<!-- 이전 페이지 링크 -->
							<c:if test="${currentPage > 1}">
								<a href="goUserFind.admin?page=${currentPage - 1}">이전</a>
							</c:if>

							<!-- 페이지 번호 링크 -->
							<c:forEach var="i" begin="1" end="${totalPages}">
								<c:choose>
									<c:when test="${i == currentPage}">
										<span class="current">${i}</span>
									</c:when>
									<c:otherwise>
										<a href="goUserFind.admin?page=${i}">${i}</a>
									</c:otherwise>
								</c:choose>
							</c:forEach>

							<!-- 다음 페이지 링크 -->
							<c:if test="${currentPage < totalPages}">
								<a href="goUserFind.admin?page=${currentPage + 1}">다음</a>
							</c:if>
						</div>
					</c:if>
					<c:if test="${!empty list2}">
						<table class="user_table" style="table-layout: fixed">
							<tbody>
								<tr>
									<th width="1%">회원번호</th>
									<th width="3%">이름</th>
									<th width="5%">생년월일</th>
									<th width="1%">성별</th>
									<th width="5%">전화번호</th>
									<th width="5%">이메일</th>
									<th width="1%">PT회원</th>
								</tr>

								<c:forEach var="dto" items="${list2}">
									<tr>
										<td><a href="getUserAccount2.admin?userNo=${dto.userNo}">
												${dto.userNo}</a></td>
										<td><a href="getUserAccount2.admin?userNo=${dto.userNo}">
												${dto.userName}</a></td>
										<td><a href="getUserAccount2.admin?userNo=${dto.userNo}">
												${dto.userBirth}</a></td>
										<td><a href="getUserAccount2.admin?userNo=${dto.userNo}">
												${dto.userGender}</a></td>
										<td><a href="getUserAccount2.admin?userNo=${dto.userNo}">
												${dto.userPhone}</a></td>
										<td><a href="getUserAccount2.admin?userNo=${dto.userNo}">
												${dto.userEmail}</a></td>
										<td><a href="getUserAccount2.admin?userNo=${dto.userNo}">${dto.ptYn}</a></td>
									</tr>
								</c:forEach>
							</tbody>
						</table>
						<!-- 페이지네이션 컨트롤 -->
						<div class="pagination">
							<!-- 이전 페이지 링크 -->
							<c:if test="${currentPage > 1}">
								<a href="select2.admin?page=${currentPage - 1}">이전</a>
							</c:if>

							<!-- 페이지 번호 링크 -->
							<c:forEach var="i" begin="1" end="${totalPages}">
								<c:choose>
									<c:when test="${i == currentPage}">
										<span class="current">${i}</span>
									</c:when>
									<c:otherwise>
										<a href="select2.admin?page=${i}">${i}</a>
									</c:otherwise>
								</c:choose>
							</c:forEach>

							<!-- 다음 페이지 링크 -->
							<c:if test="${currentPage < totalPages}">
								<a href="select2.admin?page=${currentPage + 1}">다음</a>
							</c:if>
						</div>
					</c:if>
					<c:if test="${!empty list3}">
						<table class="user_table" style="table-layout: fixed">
							<tbody>
								<tr>
									<th width="1%">회원번호</th>
									<th width="3%">이름</th>
									<th width="5%">생년월일</th>
									<th width="1%">성별</th>
									<th width="5%">전화번호</th>
									<th width="5%">이메일</th>
									<th width="1%">PT회원</th>
								</tr>

								<c:forEach var="dto" items="${list3}">
									<tr>
										<td><a href="getUserAccount2.admin?userNo=${dto.userNo}">
												${dto.userNo}</a></td>
										<td><a href="getUserAccount2.admin?userNo=${dto.userNo}">
												${dto.userName}</a></td>
										<td><a href="getUserAccount2.admin?userNo=${dto.userNo}">
												${dto.userBirth}</a></td>
										<td><a href="getUserAccount2.admin?userNo=${dto.userNo}">
												${dto.userGender}</a></td>
										<td><a href="getUserAccount2.admin?userNo=${dto.userNo}">
												${dto.userPhone}</a></td>
										<td><a href="getUserAccount2.admin?userNo=${dto.userNo}">
												${dto.userEmail}</a></td>
										<td><a href="getUserAccount2.admin?userNo=${dto.userNo}">${dto.ptYn}</a></td>
									</tr>
								</c:forEach>
							</tbody>
						</table>
						<!-- 페이지네이션 컨트롤 -->
						<div class="pagination">
							<!-- 이전 페이지 링크 -->
							<c:if test="${currentPage > 1}">
								<a href="select3.admin?page=${currentPage - 1}">이전</a>
							</c:if>

							<!-- 페이지 번호 링크 -->
							<c:forEach var="i" begin="1" end="${totalPages}">
								<c:choose>
									<c:when test="${i == currentPage}">
										<span class="current">${i}</span>
									</c:when>
									<c:otherwise>
										<a href="select3.admin?page=${i}">${i}</a>
									</c:otherwise>
								</c:choose>
							</c:forEach>

							<!-- 다음 페이지 링크 -->
							<c:if test="${currentPage < totalPages}">
								<a href="select3.admin?page=${currentPage + 1}">다음</a>
							</c:if>
						</div>
					</c:if>
				</div>
			</section>
		</div>

		<script type="text/javascript" src="../include/js/admin-navigation.js"></script>
		<script>
		
		


		const rows = document.querySelectorAll('.user_table tr');

		rows.forEach(row=> {
		    row.addEventListener("click", function(event){
		        const link = row.querySelector("a");
		        if(link) {
		            const href = link.getAttribute("href");
		            window.location.href = href;
		        }
		    })
		})
		
		
		let N = 'N';

		if (`${result}` === N) {
		    window.alert('없는 회원 입니다.');
		}
		
			var sel = document.querySelector(".sel");
			sel.addEventListener("change", function() {
				if (sel.value == 1) { //기본순
					location.href = "/PHGYM/admin/select1.admin";
				} else if (sel.value == 2) { //이름순
					location.href = "/PHGYM/admin/select2.admin";
				} else if (sel.value == 3) { //PT회원
					location.href = "/PHGYM/admin/select3.admin";
				}
			});
		</script>
</body>
</html>