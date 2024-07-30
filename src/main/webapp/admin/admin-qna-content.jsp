<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>문의글내용</title>
	
	<link rel="stylesheet" href="css/main-qna-content.css">
	<link rel="stylesheet" href="../include/css/admin-navigation.css">
	
</head>
<body>

		<jsp:include page="../include/admin-navigation.jsp" />
	<div class="content">
		<div class="inquiry-view">
			<div class="view-header">
				<input type="button" value="←" onclick="location.href='main_qna_list.board'">
				<h2>글 내용</h2>
				<form action="">
					<div class="title-info">
						<span>제목 [ ${dto.title} ]</span>
						<span>작성자 [] ${dto.writer} ]</span>
						<span>작성일 [ <fmt:formatDate value="${dto.writeDate}" pattern="yyyy년 MM월 dd일" /> ]</span>
						<input type="button" value="삭제" onclick="confirmDelete(${dto.inquiryNo})">
					</div>				
				</form>
			</div>
			<div class="inquiry-content">
				<p>${dto.content}</p>
			</div>

			<c:if test="${dto.replyContent == null || dto.replyContent == ''}"> <!-- 댓글 작성 가능 -->
				<c:if test="${sessionScope.sessionAdminNo != null && sessionScope.sessionAdminNo != ''}">
					<div class="dto-section">
						<span>댓글 작성하기</span>
						<form action="replyRegist.board" method="post">
							<input type="hidden" name="adminNo" value="${sessionScope.sessionAdminNo}"><input type="hidden" name="inquiryNo" value="${dto.inquiryNo}">
							<textarea id="replyContent" placeholder="내용을 입력하세요." name="replyContent"></textarea>
							<div class="button-container">
								<input type="submit" value="등록">
							</div>
						</form>
					</div>
				</c:if>
			</c:if>

			<c:if test="${dto.replyContent != null && dto.replyContent != ''}"> <!-- 이미 댓글 있음 -->
				<c:if test="${sessionScope.sessionAdminNo == null || sessionScope.sessionAdminNo == ''}"> <!-- 회원인 경우 -->
					<form action="updateReply.board" method="post">
						<input type="hidden" value="${dto.inquiryNo}" name="inquiryNo">
						<div class="dto-list">
							<div class="dto">
								<textarea name="content" disabled="disabled">${dto.replyContent}</textarea>
								<p>
									<small>작성자: ${dto.writer} | 작성일: <fmt:formatDate value="${dto.replyDate}" pattern="yyyy-MM-dd HH:mm:ss" /></small>
								</p>
							</div>
						</div>
					</form>
				</c:if>
				<c:if test="${sessionScope.sessionAdminNo != null && sessionScope.sessionAdminNo != ''}"> <!-- 어드민인 경우 -->
					<form action="updateReply.board" method="post">
						<input type="hidden" value="${dto.inquiryNo}" name="inquiryNo">
						<div class="dto-list">
							<div class="dto">
								<textarea name="content" rows="" cols="">${dto.replyContent}</textarea>
								<p>
									<small>작성자: 관리자 | 작성일: <fmt:formatDate value="${dto.replyDate}" pattern="yyyy-MM-dd HH:mm:ss" /></small>
								</p>
								<input type="button" value="삭제" onclick="confirmReplyDelete(${dto.inquiryNo})">
								<input type="submit" value="수정">
							</div>
						</div>
					</form>
				</c:if>
			</c:if>
		</div>
	</div>
	<script>
        function confirmDelete(inquiryNo) {
        	var pw = prompt("비밀번호를 입력해주세요.");
            location.href = 'main_qna_delete.board?inquiryNo=' + ${dto.inquiryNo} + '&pw=' + pw;
        }
        
        var result = '${sessionScope.msg}';
        if(result == 'fail') {
        	alert("비밀번호가 일치하지 않습니다.");
        }
        <c:remove var="msg" scope="session"/>

        function confirmReplyDelete(inquiryNo) {
            if (confirm("댓글을 삭제하시겠습니까?")) {
                location.href = 'deleteReply.board?inquiryNo=' + inquiryNo;
            }
        }
    </script>
</body>
</html>

