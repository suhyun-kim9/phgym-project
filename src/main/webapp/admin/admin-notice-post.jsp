<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>admin-exerciseinfo-post</title>

    <link rel="stylesheet" href="css/admin-exerciseinfo-post.css">
    <link rel="stylesheet" href="../include/css/admin-navigation.css">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.min.css">

</head>
<body>

    <div class="content"> 
        <jsp:include page="../include/admin-navigation.jsp"/>
    
    
    <!--  여기에 넣어주시면 됩니다. -->
            <div class="main">
             
    <div class="form-container">
        <div class="admin_main_name">
            글쓰기 (공지사항)
        </div>
        <form>
            <label for="title">글 제목</label>
            <input type="text" id="title" name="title">

            <label for="file">첨부파일</label>
            <input type="file" id="file" name="file">

            <label for="content">글 내용</label>
            <textarea id="content" name="content" rows="10"></textarea>

            <div class="buttons">
                <button type="submit" class="submit">등록</button>
                <button type="button" class="button">취소</button>
            </div>
        </form>
    </div>

            </div>
    <!--  -------------. -->
    
    </div>
    
    <script type="text/javascript" src="../include/js/admin-navigation.js"> </script>

</body>
</html>