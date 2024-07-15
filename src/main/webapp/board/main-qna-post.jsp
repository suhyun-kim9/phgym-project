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
        <div class="header">
            <button class="back-btn">←</button>
            <span class="header-title">글 작성하기</span>
            <div class="header-icons">
                <button class="icon-btn">⋮</button>
            </div>
        </div>
        <form>
            <input type="text" id="title" name="title" placeholder="제목을 입력하세요">

            <label for="content"></label>
            <textarea id="content" name="content" placeholder="내용을 입력하세요"></textarea>

            <div class="buttons">
                <button type="button" class="reset-btn">등록</button>
                <button type="submit" class="submit-btn">취소</button>
            </div>
        </form>
    </div>

</body>
</html>