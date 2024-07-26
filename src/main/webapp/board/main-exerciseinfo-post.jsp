<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>main-exerciseinfo-post</title>

    <link rel="stylesheet" href="css/main-exerciseinfo-post.css">
</head>
<body>
    
    <div class="form-container">
        <div class="header">
            <input type="button" value="←" onclick="location.href='main_exe_list.board'">
            <span class="header-title">글 작성하기</span>
            <div class="header-icons">
                <button class="icon-btn">⋮</button>
            </div>
        </div>
        <form action="main_exe_post_regist.board" method="post">
            <input type="text" id="title" name="title" placeholder="제목을 입력하세요">
            <input type="text" id="writer" name="adminNo" size="10" placeholder="이름을 입력하세요" required>

            <label for="content"></label>
            <textarea id="content" name="content" placeholder="내용을 입력하세요"></textarea>

            <div class="buttons">
                <input type="submit" value="등록" class="reset-btn" style="width: 50px">
                <input type="reset" value="다시" class="submit-btn" style="width: 50px">
            </div>
        </form>
    </div>

</body>
</html>