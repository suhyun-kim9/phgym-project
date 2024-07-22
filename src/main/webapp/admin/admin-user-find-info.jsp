<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
    
    
    
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="../include/css/admin-navigation.css">
     <link rel="stylesheet" href="css/admin-user-find.css">
     <link rel="stylesheet" href="css/admin-pt-check.css">
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
        

         <!-- admin 페이지 헤더  -->
          <div class="admin_main_name">
              회원 정보 조회
          </div>
        
          <!--  회원 정보 간략하게 -->
          
          <!--  1) 다시 화면에 찍기 ?? -->
          <form action="getUserAccount.admin" method="post">
          <div class="search_box">
                <div class="search_name">
                     <b>${dto.userName}</b>  님 (<b>${dto.userNo}</b>)
                  </div>
  
                  <div class="search_bar">
                      <input type="text" name="userName" placeholder="이름을 입력하세요">
                      <input type="submit"  class="btn-hover color-4" value="조회">
                  </div>
          </div>
          </form>
    </section>
      
<table class="admin-account-table">
    <tbody class="admin-account-tbody">
        <tr>
            <th> 이름 </th>
            <td> <div> ${dto.userName}</div> </td>
        </tr>  
        <tr>
            <th> 아이디 </th>
            <td> <div> ${dto.userId} </div> </td>
        </tr> 
        <tr >
            <th> 생년월일 </th>
            <td> <div> ${dto.userBirth} </div> </td>
        </tr>  
          <tr >
            <th> 성별 </th>
            <td> <div> ${dto.userGender} </div> </td>
        </tr>  
        <tr >
            <th> 연락처 </th>
            <td><div>  ${dto.userPhone} </div> </td>
        </tr>  
        <tr>
            <th> 이메일 </th>
            <td> <div> ${dto.userEmail} </div> </td>
        </tr>  
          <tr>
            <th> 주소 </th>
            <td> <div> ${dto.userAddress} </div> </td>
        </tr>  
         <tr>
            <th> 가입일 </th>
            <td> <div> ${dto.userRegDate} </div> </td>
        </tr>
    </tbody>
</table>
</div>


    <script type="text/javascript" src="../include/js/admin-navigation.js"> </script>
 
</body>
</html>