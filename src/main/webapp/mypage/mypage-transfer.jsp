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
    <link rel="stylesheet" href="css/mypage-transfer.css">
</head>
<body>
    <jsp:include page="../include/main-navigation.jsp"/>

    <section class="content">
    	<div class="wrap-top">
            <h2>회원권양도</h2>
            <p>양도 후 취소가 불가하오니, 신중하게 양도해 주시길 바랍니다.</p>
        </div>
        
        <div class="wrap-middle">
        	<p>회원권을 양도받으실 회원님의 <b style="color:#f97316">회원번호</b> 입력과 양도하실 <b style="color:#f97316">회원권</b>을 선택해 주세요.</p>
        	<p>(※양도받으신 회원권은 재양도가 불가합니다.)</p>
            <form action="doTransfer.mypage" method="post">
                <div>
	                <p class="user_no">회원번호</p>
	                <input type="text" name="userNo" class="inputSelect" placeholder=" 양도받으실 회원님의 회원번호를 입력해 주세요.">
	                <p class="mem_pay_no">회원권</p>
	                <c:choose>
	                	<c:when test="${!empty list}">
		                	<select name="membershipPayNo" class="inputSelect">
			                	<c:forEach var="dto" items="${list}">
			                		<option value="${dto.membershipPayNo}">[시작일] ${dto.startDate} / [종료일] ${dto.endDate}</option>
			                	</c:forEach>
			                </select>
		                </c:when>
		                <c:otherwise>
		                	<select name="membershipPayNo" class="inputSelect">
			                		<option>양도 가능한 회원권이 없습니다.</option>
			                </select>
		                </c:otherwise>
	                </c:choose>
                </div>
                <input type="submit" value="양도하기" onclick="return check()" class="transferBtn">
            </form>
        </div>
    </section>
    
    <script type="text/javascript">
    	var isEmptyList = ${empty list};
	    if(isEmptyList) {
			var transferBtn = document.querySelector(".transferBtn");
			transferBtn.disabled = true;
			transferBtn.style.cursor = "none";
			transferBtn.style.backgroundColor = "#8c8c8c";
		}
	    
	    var checkUserInfoMsg = ${empty sessionScope.checkUserInfoMsg};
	    console.log(checkUserInfoMsg);
	    if(!checkUserInfoMsg) {
	    	alert("존재하지 않는 회원번호입니다.");
	    }
	    <c:remove var="checkUserInfoMsg" scope="session"/>
	    
	    var doTransferMsg = "${sessionScope.doTransferMsg}";
	    if(doTransferMsg) {
	    	alert("회원권 양도가 완료되셨습니다.");
	    }
	    <c:remove var="doTransferMsg" scope="session"/>
	</script>
    <script type="text/javascript" src="js/mypage-transfer.js"></script>
</body>
</html>