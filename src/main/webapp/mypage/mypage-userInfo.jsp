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
    <link rel="stylesheet" href="css/mypage-userInfo.css">
</head>
<body>
    <jsp:include page="../include/main-navigation.jsp"/>
	
    <section class="content">
    	<div class="wrap-top">
    		<h2>회원정보</h2>
    		<input type="button" value="수정하기" onclick="location.href='userInfoContent.mypage'">
    	</div>
    	
    	<div class="wrap-middle">
    		<div class="wrap-middle-left">
    			<div class="profile">
    				<i class="bi bi-person"></i>
    			</div>
    		</div>
    		
    		<div class="wrap-middle-center">
    			<p>아이디</p>
    			<input type="text" name="userId" value="${dto.userId}" readonly="readonly">
    			<p>이름</p>
    			<input type="text" name="userName" value="${dto.userName}" readonly="readonly">
    			<p>성별</p>
    			<c:if test="${dto.userGender == 'M'}">
    				<div>
		    			<input type="radio" name="userGender" onclick="return false" class="userGenderRadio" checked="checked"><p>남</p>
		    			<input type="radio" name="userGender" onclick="return false" class="userGenderRadio"><p>여</p>
	    			</div>
    			</c:if>
    			<c:if test="${dto.userGender == 'W'}">
    				<div>
		    			<input type="radio" name="userGender" onclick="return false" class="userGenderRadio"><p>남</p>
		    			<input type="radio" name="userGender" onclick="return false" class="userGenderRadio" checked="checked"><p>여</p>
	    			</div>
    			</c:if>
    			<p>이메일</p>
    			<input type="text" name="userEmail" value="${dto.userEmail}" readonly="readonly">
    			<p>가입일</p>
    			<input type="date" name="userRegDate" value="${dto.userRegDate}" readonly="readonly">
    		</div>
    		<div class="wrap-middle-right">
    			<p>비밀번호</p>
    			<input type="text" name="userPw" value="" disabled="disabled">
    			<p>생년월일</p>
    			<input type="text" name="userBirth" value="${dto.userBirth}" readonly="readonly">
    			<p>전화번호</p>
    			<input type="text" name="userPhone" value="${dto.userPhone}" readonly="readonly">
    			<p>주소</p>
    			<input type="text" name="userAddress" value="${dto.userAddress}" readonly="readonly">
    			<p>보유회원권</p>
    			<c:choose>
                	<c:when test="${!empty list}">
	                	<select name="membershipPayNo" class="inputSelect">
		                	<c:forEach var="dto" items="${list}">
		                		<c:if test="${dto.startDate != null && dto.startDate != ''}">
		                			<option value="${dto.membershipPayNo}">[시작일] ${dto.startDate} / [종료일] ${dto.endDate}</option>
		                		</c:if>
		                		<c:if test="${dto.startDate == null || dto.startDate == ''}">
		                			<option value="${dto.membershipPayNo}">[양수일] ${dto.remarkTransferDate} / [종료일] ${dto.endDate}</option>
		                		</c:if>
		                	</c:forEach>
		                </select>
	                </c:when>
	                <c:otherwise>
	                	<select name="membershipPayNo" class="inputSelect">
		                		<option>보유한 회원권이 없습니다.</option>
		                </select>
	                </c:otherwise>
                </c:choose>
    		</div>
    	</div>
    	
    	<div class="wrap-bottom">
    		<p>PT예약내역</p>
    		<table>
	            <tr>
	            	<th>예약일자</th>
	                <th>예약시간</th>
	                <th>담당트레이너</th>
	                <th>진행여부</th>
	            </tr>
	            <c:if test="${!empty list3}">
	            	<c:forEach var="list3" items="${list3}">
		            	<tr>
			            	<td>${list3.reservationDate}</td>
			                <td>${list3.reservationTime}</td>
			                <td>${list3.adminName}</td>
			                <td>${list3.progressStatus}</td>
		             	</tr>
		            </c:forEach>
	            </c:if>
	            <c:if test="${empty list3}">
	            	<tr>
	            		<td colspan="4" height="150">PT내역이 없습니다.</td>
	            	</tr>
	            </c:if>
	        </table>
    	</div>
    </section>
    
    <script>
    	var msg = "${sessionScope.msg}";
    	if(msg == "Y") {
    		alert("회원정보가 수정되셨습니다.");
    		<c:remove var="msg" scope="session"/>
    	}
    </script>
</body>
</html>