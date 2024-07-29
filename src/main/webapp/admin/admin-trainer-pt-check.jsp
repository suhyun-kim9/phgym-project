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
     <link rel="stylesheet" href="css/admin-trainer-pt-check.css">
     
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.min.css">
    	<script src="https://code.jquery.com/jquery-3.7.1.min.js"></script>
    	     <script src='https://cdn.jsdelivr.net/npm/fullcalendar@6.1.15/index.global.min.js'></script>
    <script>
      
      
      document.addEventListener('DOMContentLoaded', function () {
          var calendarEl = document.getElementById('calendar');
          var calendar = new FullCalendar.Calendar(calendarEl, {
        	  
        	  
              initialView: 'dayGridMonth',
              events: [
              	<c:forEach var="date" items="${ptPerDayList}">
	                	{
	                		title: '${date.cnt}',
	                        start: '${date.localDate}',
	                        url: '/PHGYM/admin/doTrainerPtCheck.admin?date='+'${date.localDate}'
	                    },
	                    
              	</c:forEach>
              ]
          });
          calendar.render();
      });
      
      
      
      
      

    </script>
    	


</head>
<body>
    <div class="content"> 
    	<jsp:include page="../include/admin-navigation.jsp"/>


<!--  여기에 넣어주시면 됩니다. -->
<div class="main">
<section id="wrap">
        

         <!-- admin 페이지 헤더  -->
          <div class="admin_main_name">
              <i class="bi bi-calendar4-event"></i> <span> 스케쥴 관리 </span>
          </div>
        
          <!--  회원 정보 간략하게 -->
          
          <!--  1) 다시 화면에 찍기 ?? -->
          <form action="trainer-pt-check.admin" method="post">
         <div class="search_box">
                <div class="search_name">
                     <b> ${adDto.adminName} </b>  트레이너 (<b>${adDto.adminNo}</b>)
                  </div>
  
                 <%--   <div class="search_bar">
                      <input type="text" name="userName" placeholder="이름을 입력하세요">
                      <input type="submit"  class="btn-hover color-4" value="조회">
                  </div> --%>
          </div>
          </form>
          
          <div class="mini_header"> <p> 스케쥴 관리 </p></div>

          
          <div class="pt_trainer_box">

          	           <!-- pt 일정 -->
                 <div class="pt_plan">
                     <div class="pt_planer">
 
                    <!-- 캘린더 전체 컨테이너 -->
				     <!-- 캘린더 전체 컨테이너 -->
   <!--  <div class="calendar">
        헤더 부분: 이전, 다음 버튼과 월/연 표시
        <div class="header">
            <button id="prevMonth">&lt;</button>
            <div class="month-year" id="monthYear"></div>
            <button id="nextMonth">&gt;</button>
        </div>
        요일 이름 표시
        <div class="weekdays">
            <div>Sun</div>
            <div>Mon</div>
            <div>Tue</div>
            <div>Wed</div>
            <div>Thu</div>
            <div>Fri</div>
            <div>Sat</div>
        </div>

        <div>
            <label for="type">날짜 : </label>
            <input type="text" id="date" readonly />
        </div>
        날짜 표시
        <div class="days" id="days"></div>
           </div>
       </div> -->
          <div class="wrap4">
          	  <div id='calendar'></div>
          </div>
       

       
          <div class="list_box">
            <div class="pt_content">
               <table class="table_list">
                <tbody class="tbody_list">
                <c:forEach var="list" items="${reserDto}">
	                  <tr>
                        <th>예약일 : ${list.reservationDate}  </th>
                        <td> 회원 : ${list.userNo}  </td>
                        <td> 상태 : ${list.progressStatus}</td>
                        <td> pt 내용 :${list.content}</td>
                    </tr>
	           </c:forEach>
                </tbody>
                </table>

            </div>

        </div>
    </div>
       
    </div>

       
          </div>
 </section>
    
    
  

<!-- 	<script  type="text/javascript" src="js/calendar2.js"> </script> -->
    <script type="text/javascript" src="../include/js/admin-navigation.js"> </script>
<!--     <script type="text/javascript">
    

 
 document.addEventListener('DOMContentLoaded', function () {


	    const monthYear = document.getElementById('monthYear');  // 월/연 표시 요소
	    const daysContainer = document.getElementById('days');  // 날짜 표시 요소
	    const prevMonthButton = document.getElementById('prevMonth');  // 이전 달 버튼
	    const nextMonthButton = document.getElementById('nextMonth');  // 다음 달 버튼
	    
	    let currentMonth = new Date().getMonth();  // 현재 월
	    let currentYear = new Date().getFullYear();  // 현재 연도

	    const months = [
	        '1', '2', '3', '4', '5', '6',
	        '7', '8', '9', '10', '11', '12'
	    ];

	    var month1 = "";
	    var year1 = "";

	    // 캘린더 렌더링 함수
	    function renderCalendar(month, year) {
	        daysContainer.innerHTML = '';  // 날짜 표시 요소 초기화
	        monthYear.innerText = ` ${year}년 ${months[month]}월`;  // 월/연 업데이트

	        month1 = months[month];
	        year1 = year;

	        const firstDay = new Date(year, month, 1).getDay();  // 해당 월의 첫날 요일
	        const daysInMonth = new Date(year, month + 1, 0).getDate();  // 해당 월의 총 날짜 수

	        // 빈 칸 추가
	        for (let i = 0; i < firstDay; i++) {
	            const emptyCell = document.createElement('div');
	            daysContainer.appendChild(emptyCell);
	        }

	        // 날짜 추가
	        for (let day = 1; day <= daysInMonth; day++) {

	            
	            const dayCell = document.createElement('div');
	            dayCell.setAttribute("class","day");
	            dayCell.setAttribute("id",day); // 아이디값에 날짜 저장하기
	            const dayLink = document.createElement('a');
	            dayLink.innerText = day;
	         
	            dayCell.appendChild(dayLink);
	            daysContainer.appendChild(dayCell);
	        }

	     

	    }

	    // 월 변경 함수
	    function changeMonth(increment) {
	        currentMonth += increment;
	        if (currentMonth < 0) {
	            currentMonth = 11;
	            currentYear--;
	        } else if (currentMonth > 11) {
	            currentMonth = 0;
	            currentYear++;
	        }
	        renderCalendar(currentMonth, currentYear);  // 새로운 월로 캘린더 렌더링
	    }

	    // 이전 달 버튼 클릭 이벤트
	    prevMonthButton.addEventListener('click', () => changeMonth(-1));
	    // 다음 달 버튼 클릭 이벤트
	    nextMonthButton.addEventListener('click', () => changeMonth(1));

	    renderCalendar(currentMonth, currentYear);  // 초기 캘린더 렌더링
	    

	    //---
	      
    
    var arr = [];
		//지윤 여기다 뿌리기
	/* 	 <c:forEach items="${dateDto}" var="date">
		 arr.push({reservationDate:new Date("${date.reservationDate}")});
		 </c:forEach>
		 
		  */
		 
		 
			/* ${dto.cnt}
			${dto.localDate}
		  */
		  
		  var jiArr = [];
		  var jiArr2 = [];
		<c:forEach var="dto" items="${ptPerDayList}">
		  console.log(${dto.cnt} , ${dto.localDate});
			jiArr.push({reservationDate:new Date("${dto.localDate}")});
			jiArr2.push("${dto.cnt}");
		</c:forEach>
		 
		 for (var i = 0; i < jiArr.length; i++) {
			 
			console.log(jiArr[i]);
			
		   var startDate = jiArr[i].reservationDate;
		   var day12 = startDate.getDate();
		   console.log(day12);
		   console.log('#'+day12);
		   
			let eventDiv = $('<span>').addClass('day_content').text('예약건수 ' + jiArr2[i]);
		    $('#'+ day12).append(eventDiv);
		
		 }
		 
		 $('.day_content').css('color','white');
		 $('.day_content').css('border','1px solid red');
		 $('.day_content').css('font-size','10px');
		 $('.day_content').css('text-align','center');
		 $('.day_content').css('padding','3px 7px');
		 $('.day_content').css('background-color','red');
		 $('.day_content').css('border-radius','100px');
			    
	    //----
	    
	    
	    $('#days').on("click",".day",function () {
	        $('.list_box').css('display', 'block');
	        
	        let day1 = $(this).attr('id'); // day 값 가져오기 
	        let month2 = $('#monthYear').html();

	        
	        var checkedmonth ="";
	        var checkedyear ="";
	        var checkedday ="";

	        checkedyear = year1;
	        if (month1 < 10){
	            month11 = "0"+month1;
	            checkedmonth = month11;
	        }else {
	            checkedmonth = month1;
	        }
	        if (day1 < 10){
	            day11 = "0"+day1;
	            checkedday = day11;
	        }
	        else {
	            checkedday = day1;
	        }
	    

	        var datetest = checkedyear +"-"+ checkedmonth +"-"+  checkedday;
	        console.log(datetest);

	        var dateReuslt = new Date(datetest);
	        console.log(dateReuslt);

	        
	        $('#date').val(datetest);
	        
	        location.href="doTrainerPtCheck.admin?date=" + datetest;
	    });
	    

	});

	
    
  /*   var arr = new Array();
   
 
    
    for (var i = 0; i < arr.length; i++){
    	console.log(arr[i]);
    	var startDate = new Date(arr[i].toStirng);
    	
    	startDate.getMonth();
    	console.log(startDate);
    	console.log(startDate.getMonth());
    	
    }
     */
/*     console.log(hehe);
    for (var  i= 0 ; i< hehe.length; i++){
    	console.log(hehe[i].reservationDate);
    } */
    
/* 
 		var result = "${reserDto}";
 		var listBox = document.querySelector(".list_box");
 		
 		if(result == null || result == "") {
 			listBox.style.display = "none";
 		} */
 		 
 	</script> -->
 
</body>
</html>