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
				<h1 class="admin_main_name">
					<i class="bi bi-person-fill"></i> <span> 관리자 계정 (내 정보) </span>
				</h1>

				<table class="admin-account-table">
					<tbody class="admin-account-tbody">
						<tr>
							<th>이름</th>
							<td>
								<div>${dto.adminName}</div>
							</td>
						</tr>
						<tr>
							<th>생년월일</th>
							<td>
								<div>${dto.adminBirth}</div>
							</td>
						</tr>
						<tr>
							<th>성별</th>
							<td>
								<div>${dto.adminGender}</div>
							</td>
						</tr>
						<tr>
							<th>연락처</th>
							<td><div>${dto.adminPhone}</div></td>
						</tr>
						<tr>
							<th>아이디</th>
							<td>
								<div>${dto.adminId}</div>
							</td>
						</tr>
						<tr>
							<th>직책</th>
							<td>
								<div>${dto.adminJobTitle}</div>
							</td>
						</tr>
						<tr>
							<th>입사일</th>
							<td><div>${dto.adminCareerHis}</div></td>
						</tr>
						<tr>
							<th>이메일</th>
							<td>
								<div>${dto.adminEmail}</div>
							</td>
						</tr>
						<tr>
							<th>경력 및 자격사항</th>
							<td>
								<div>${dto.adminCareerHis}</div>
							</td>
						</tr>

					</tbody>
				</table>

				<input type="submit" value="수정하기" class="btn-hover color-4" id="modify_btn" onclick="location.href='doModifyAdminAccount.admin'">
			</section>
			<!--  -------------. -->

		</div>
	</div>
		<script type="text/javascript" src="../include/js/admin-navigation.js"> </script>
		
		
		
		
</body>
</html>