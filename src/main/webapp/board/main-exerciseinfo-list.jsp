<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>

    <link rel="stylesheet" href="css/main-exerciseinfo-list.css">
</head>
<body>
    
    <div class="container">
        <h1>운동정보</h1>
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
            <button>등록</button>
        </div>
    </div>

</body>
</html>