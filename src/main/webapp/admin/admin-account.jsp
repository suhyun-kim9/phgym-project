<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
            <section id="wrap">
        
                <div class="join_page">
                  
  <div class="admin_main_name">
    관리자 계정 (내 정보)
</div>
                        <div class="left">
                            <div>
                                <img src="img/image 01.png" alt="">
                                <button>+</button>
                            </div>
                            <button class="gender">남</button>
                            <button class="gender">여</button>
                            <div class="name">
                                <p>이름</p>
                                <input type="text" name="이름" style="text-align: left;">
                            </div>
                            <div class="date">
                                <p>생년월일</p>
                                <input type="date" name="date" style="text-align: left;">
                            </div>
                            <div class="number">
                                <p>연락처</p>
                                <input type="text" name="연락처" style="text-align: left;">
                            </div>
                        </div>
    
                        <div class="right">
                            <div class="">
                            <div class="id">
                                <p>아이디</p>
                                <input type="text" name="id" style="text-align: left;">
                                <button>중복확인</button>
                            </div>
                            <div class="pw">
                                <p>패스워드</p>
                                <input type="password" name="pw" style="text-align: left;">
                            </div>
                            <div class="pw">
                                <p>비밀번호확인</p>
                                <input type="password" name="pw" style="text-align: left;">
                            </div>
                            <div class="job">
                                <p>직책</p>
                                <input type="text" name="job" style="text-align: left;">
                            </div>
                            <div class="date">
                                <p>입사일</p>
                                <input type="date" name="date" style="text-align: left;">
                            </div>
                            <div class="email">
                                <p>이메일</p>
                                <input type="email" name="email" style="text-align: left;">
                            </div>
                            </div>
                        </div>
                        
                    <div class="bottom"> 
                        <div class="license">
                            <p>경력 및 자격사항</p>
                            <textarea name="" id=""></textarea>
                        </div>
                    </div>
                
                <div class="btn">
                    <button>가입</button>
                    <button>취소</button>
                </div>
            </div>
        </section>
<!--  -------------. -->

</div>

    <script type="text/javascript" src="nav/admin-navigation.js"> </script>
 
</body>
</html>