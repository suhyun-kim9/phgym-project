<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>main-qna-post</title>
<link rel="stylesheet" href="css/main-qna-post.css">
</head>
<body>
	<div class="form-container">
		<form action="main_qna_post_regist.board" method="post">
			<div class="header">
				<input type="button" value="←" style="width: 30px"
					onclick="location.href='main_qna_list.board'"> <span
					class="header-title">글 작성하기</span>
				<div class="header-icons">
					비밀번호 <input type="text" name="pw" id= "pw" placeholder="글 삭제 비밀번호 입니다.">
				</div>
			</div>
			<input type="text" id="title" name="title" placeholder="제목을 입력하세요" required>
			<input type="text" id="writer" name="writer" size="10"
				placeholder="이름을 입력하세요" required> <label for="content"></label>
			<textarea id="content" name="content" placeholder="내용을 입력하세요" required></textarea>

			<div class="buttons">
				<button type="submit" onclick="return pwCheck()" class="reset-btn">등록</button>
				<button type="reset" class="submit-btn">취소</button>
			</div>
		</form>
	</div>
	<script type="text/javascript">
		function pwCheck() {
			var pw = document.getElementById("pw");
			if(pw.value == null || pw.value == "") {
				alert("비밀번호 입력은 필수입니다.");
				return false;
			}
			return true;
		}
	</script>
</body>
</html>