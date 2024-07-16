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
        <div class="aside">
            <nav>
            <ul class="nav_1">
                <div class="logo"> <img src="nav/logo_dark.webp"> </div>
                <li> <i class="bi bi-person-fill"></i> <a> 관리자 계정 </a> </li>
                <li> 
                    <div id="dropdown">
                        <i class="bi bi-search"></i> <a> 회원 조회</a> <i class="bi bi-chevron-compact-right"></i></i>
                    </div>
                </li>
                <ul id="nav_2">
                    <li><i class="bi bi-person-circle"></i> <a> 회원 정보 조회 </a>  </li>
                    <li> <i class="bi bi-calendar-check"></i> <a>  회원 스케쥴 조회 </a></li>
                </ul>
                <li> <i class="bi bi-calendar4-event"></i> <a> 스케쥴 관리 </a></li>
                <li> <i class="bi bi-bell"></i> <a> 공지사항 </a></li>
                <li> <i class="bi bi-archive"></i> <a> 운동정보 </a></li>
    
            </ul>
            <div class="nav_logout">
                <p> 로그아웃 </p>
            </div>
        </nav>
    </div>
    
    
    <!--  여기에 넣어주시면 됩니다. -->
            <div class="main">
             
    <div class="form-container">
        <div class="admin_main_name">
            글쓰기 (운동 정보)
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