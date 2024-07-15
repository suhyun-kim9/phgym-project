<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="../include/css/admin-navigation.css">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.min.css">
    <link rel="stylesheet" href="css/admin-exerciseinfo-list.css">
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
                <div class="container">
                    <div class="admin_main_name">
                        공지사항
                    </div>
                    <div class="search-bar">
                        <input type="text" placeholder="검색">
                        <button>조회</button>
                    </div>
                    <table>
                        <thead>
                            <tr>
                                <th>번호</th>
                                <th>제목</th>
                                <th>이름</th>
                                <th>아이디</th>
                                <th>작성일</th>
                                <th>조회수</th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr>
                                <td>6</td>
                                <td>안녕하세요</td>
                                <td>홍길동</td>
                                <td>abc123</td>
                                <td>2024-07-08</td>
                                <td>100</td>
                            </tr>
                            <tr>
                                <td>5</td>
                                <td>반갑습니다</td>
                                <td>홍길자</td>
                                <td>abc123</td>
                                <td>2024-07-08</td>
                                <td>100</td>
                            </tr>
                            <tr>
                                <td>4</td>
                                <td>반갑습니다</td>
                                <td>이순신</td>
                                <td>abc123</td>
                                <td>2024-07-08</td>
                                <td>100</td>
                            </tr>
                            <tr>
                                <td>3</td>
                                <td>반갑습니다</td>
                                <td>홍길순</td>
                                <td>abc123</td>
                                <td>2024-07-08</td>
                                <td>100</td>
                            </tr>
                            <tr>
                                <td>2</td>
                                <td>반갑습니다</td>
                                <td>신사임당</td>
                                <td>abc123</td>
                                <td>2024-07-08</td>
                                <td>100</td>
                            </tr>
                            <tr>
                                <td>1</td>
                                <td>반갑습니다</td>
                                <td>세종대왕</td>
                                <td>abc123</td>
                                <td>2024-07-08</td>
                                <td>100</td>
                            </tr>
                        </tbody>
                    </table>
                    <div class="pagination">
                        <button>◀ Previous</button>
                        <button>1</button>
                        <button>2</button>
                        <button>3</button>
                        <span>...</span>
                        <button>67</button>
                        <button>Next ▶</button>
                    </div>
                    <div class="buttons">
                        <button>삭제</button>
                        <button>글쓰기</button>
                    </div>
                </div>
            </div>
    <!--  -------------. -->
    
    </div>
    
        <script type="text/javascript" src="../include/js/admin-navigation.js"> </script>
   

</body>
</html>