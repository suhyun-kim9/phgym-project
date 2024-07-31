<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>문의글내용</title>
	<link rel="stylesheet" href="../include/css/main-navigation.css">
<link rel="stylesheet" href="css/main-qna-content.css">
	<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.min.css">
		<link rel="stylesheet" href="../include/css/main-footer.css">
	
	<script>
        function confirmDelete(inquiryNo) {
            if(confirm("삭제하시겠습니까?")) {
                location.href = 'main_qna_delete.board?inquiryNo=' + inquiryNo;
            }
        }
    </script>
	
</head>
<body>
<jsp:include page="../include/main-navigation.jsp"/>	
	<div class="content">
		<div class="main2">
			<section id="wrap">
				
				<div class="content2">
					<div class="inquiry-view">
						<div class="view-header">
							<div class="header1">
								<input type="button" class="back-btn" value="←" onclick="location.href='main_qna_list.board'">
								<div class="title-info">
									<div class="no_title"> ${dto.title} </div>
								</div>
									<input type="button" class="delBtn" value="삭제" onclick="confirmDelete(${dto.inquiryNo})">
							</div>
								<div class="title2-info">
									<div class="qnaWriter"><span>${dto.writer} </span></div>
									<div class="qnaDate"><span> <fmt:formatDate value="${dto.writeDate}" pattern="yyyy년 MM월 dd일" /> </span></div>
								</div>				
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
									<small>작성자: 관리자 | 작성일: <fmt:formatDate value="${dto.replyDate}" pattern="yyyy-MM-dd HH:mm:ss" /></small>
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
							<%-- 	<input type="button" value="삭제" onclick="confirmReplyDelete(${dto.inquiryNo})">
								<input type="submit" value="수정"> --%>
							</div>
						</div>
					</form>
				</c:if>
			</c:if>
		</div>
	</div>
				
			</section>
		</div>
	</div> 
	
		<jsp:include page="../include/main-footer.jsp"/>
	
			
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

