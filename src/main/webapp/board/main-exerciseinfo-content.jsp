<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>main-exerciseinfo-content</title>

    <link rel="stylesheet" href="css/main-exerciseinfo-content.css">
    
     <script>
        function confirmDelete(infoNo) {
            if(confirm("삭제하시겠습니까?")) {
                location.href = 'main_exe_delete.board?infoNo=' + infoNo;
            }
        }
    </script>
    
</head>
<body>
    
    <div class="content">
        <div class="inquiry-view">
            <div class="view-header">
            	<input type="button" value="←" onclick="location.href='main_exe_list.board'">
                <h2>글 내용</h2>
                <div class="title-info">
                    <span>제목 [ ${dto.title} ]</span>
                    <span>작성자 [ ${dto.adminNo} ]</span>
                    <span>작성일 [${dto.writeDate} ]</span>
                    <%-- <fmt:formatDate value="${dto.writeDate}" pattern="yyyy년 MM월 dd일 HH시 mm분 ss초"/>  --%>
                    <input type="button" value="삭제" onclick="confirmDelete(${dto.infoNo})">
                </div>
            </div>
            <div class="inquiry-content">
                <p>${dto.content }</p>
            </div>
        </div>
    </div>

</body>
</html>