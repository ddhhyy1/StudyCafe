<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<link rel="stylesheet" href="http://code.jquery.com/ui/1.8.18/themes/base/jquery-ui.css" type="text/css" />  
<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.7.1/jquery.min.js"></script>  
<script src="http://code.jquery.com/ui/1.8.18/jquery-ui.min.js"></script>

<!DOCTYPE html>
<html>
<head>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-Zenh87qX5JnK2Jl0vWa8Ck2rdkQ2Bzep5IDxbcnCeuOxjzrPF/et3URy9Bv1WTRi" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-OERcA2EqjJCMA+/3y+gxIOqMEjwtxJY7qPCqsdltbNJuaOe923+mo//f6V8Qbsw3" crossorigin="anonymous"></script>

<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/title.css">
<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/content.css">

<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">    
<!-- jQuery  -->
<!-- <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script> -->
<!-- bootstrap JS -->
<script src="https://netdna.bootstrapcdn.com/bootstrap/3.0.0/js/bootstrap.min.js"></script>   
<!-- bootstrap CSS -->
<link href="https://netdna.bootstrapcdn.com/bootstrap/3.0.0/css/bootstrap.min.css" rel="stylesheet">

<script type="text/javascript">


		<!--      달력 추가 js 시작       -->
    $(document).ready(function () {
            $.datepicker.setDefaults($.datepicker.regional['ko']); 
            $( "#pickDate" ).datepicker({
                 changeMonth: true, 
                 changeYear: true,
                 nextText: '다음 달',
                 prevText: '이전 달', 
                 dayNames: ['일요일', '월요일', '화요일', '수요일', '목요일', '금요일', '토요일'],
                 dayNamesMin: ['일', '월', '화', '수', '목', '금', '토'], 
                 monthNamesShort: ['1월','2월','3월','4월','5월','6월','7월','8월','9월','10월','11월','12월'],
                 monthNames: ['1월','2월','3월','4월','5월','6월','7월','8월','9월','10월','11월','12월'],
                 dateFormat: "yymmdd",
                 minDate: 0,
                 maxDate: "+10Y",                       // 선택할수있는 최소날짜, ( 0 : 오늘 이후 날짜 선택 불가)
                 onClose: function( selectedDate ) {    
                      //시작일(startDate) datepicker가 닫힐때
                      //종료일(endDate)의 선택할수있는 최소 날짜(minDate)를 선택한 시작일로 지정
                     $("#endDate").datepicker( "option", "minDate", selectedDate );
                 }    
 
            });
            $( "#endDate" ).datepicker({
                 changeMonth: true, 
                 changeYear: true,
                 nextText: '다음 달',
                 prevText: '이전 달', 
                 dayNames: ['일요일', '월요일', '화요일', '수요일', '목요일', '금요일', '토요일'],
                 dayNamesMin: ['일', '월', '화', '수', '목', '금', '토'], 
                 monthNamesShort: ['1월','2월','3월','4월','5월','6월','7월','8월','9월','10월','11월','12월'],
                 monthNames: ['1월','2월','3월','4월','5월','6월','7월','8월','9월','10월','11월','12월'],
                 dateFormat: "yymmdd",
                 
                 maxDate: "+2Y",                       // 선택할수있는 최대날짜, ( 0 : 오늘 이후 날짜 선택 불가)
                 onClose: function( selectedDate ) {    
                     // 종료일(endDate) datepicker가 닫힐때
                     // 시작일(startDate)의 선택할수있는 최대 날짜(maxDate)를 선택한 시작일로 지정
                     $("#startDate").datepicker( "option", "maxDate", selectedDate );
                 }    
 
            });    
    });
    
   
    <!--      달력 추가 js 끝       -->

</script>
<script>
    // 테이블의 Row 클릭시 값 가져오기
    $("#example-table-1 tr").click(function(){     
        var str = ""
        var tdArr = new Array();    // 배열 선언
            
        // 현재 클릭된 Row(<tr>)
        var tr = $(this);
        var td = tr.children();
            
        // tr.text()는 클릭된 Row 즉 tr에 있는 모든 값을 가져온다.
        console.log("클릭한 Row의 모든 데이터 : "+tr.text());
            
        // 반복문을 이용해서 배열에 값을 담아 사용할 수 도 있다.
        td.each(function(i){
            tdArr.push(td.eq(i).text());
        });
            
        console.log("배열에 담긴 값 : "+tdArr);
            
        // td.eq(index)를 통해 값을 가져올 수도 있다.
        var no = td.eq(0).text();
        var userid = td.eq(1).text();
        var name = td.eq(2).text();
        var email = td.eq(3).text();
            
            
        str += " * 클릭된 Row의 td값 = No. : <font color='red'>" + no + "</font>" +
               ", 아이디 : <font color='red'>" + userid + "</font>" +
               ", 이름 : <font color='red'>" + name + "</font>" +
               ", 이메일 : <font color='red'>" + email + "</font>";        
          
        $("#ex1_Result1").html(" * 클릭한 Row의 모든 데이터 = " + tr.text());        
        $("#ex1_Result2").html(str);
    });    
</script>
<meta charset="UTF-8">
<title>당일권 사용&예약등록</title>
</head>
<body>
<%@ include file="include/header.jsp" %>
	<center>
	<form action="registToday" method="post">
	<table width="65%" border="0" cellspacing="0" cellpadding="20">
		<tr>
			<td class="titlebox">
				<h1>당일권_사용등록&예약하기</h1>
			</td>
		</tr>
		<tr>
			<td class="titlebox">
				<span class="title02">회원아이디:</span>
				<input type="text" name="userID">
			</td>
		</tr>
		<tr>
			<td class="titlebox">
				<span class="title02" name="ticketNAME">이용시간:
  					<select name="language" >
   						 <option value="none" name="usingTIME">=== 선택 ===</option>
   						 <option value="one" selected>1시간</option>
    					 <option value="two">2시간</option>
    					 <option value="four">4시간</option>
    					 <option value="six">6시간</option>
    					 <option value="eight">8시간</option>
 					 </select>
				</span>
			</td>
		
		</tr>
		<tr>
			<td class="titlebox">
				<span class="title02">날짜지정:
				<input type="text" id="pickDate" name="selectedDATE">
				</span>
			</td>
		</tr>
		<tr>
			<td class="titlebox">
				<span class="title02">좌석지정:
  					<select name="language" >
   						 <option value="none" name="seatNO">=== 선택 ===</option>
   						 <c:forEach begin="1" end="25" step="1" var="n">
    					 <option value="korean" name="selectTIME">${n}</option>
    					 </c:forEach>
 					 </select>
				</span>
			</td>
		
		</tr>
		<tr>
			<td class="titlebox">
			
				<span class="title02">선택한 시간:
					<input type="text" name="selectedTIME">
				</div>
				</span>
			</td>
		</tr>
		<tr>
			<td>
				<center>
					<div class="row">
						<table id="example-table-1"  width="80%" border="1" cellspacing="0" cellpadding="10"
						class="table table-bordered table-hover text-center">
							<thead>
									<tr>
										<th>시간</th>
										<th>가능여부</th>
										<th>매장지도</th>
									</tr>
							</thead>
							<tbody>
									<tr>
										<td class="skillbox" >8:00 ~ 9:00</td>
										<td class="skillbox" >사용&예약 가능</td>
										<td rowspan="16" class="picbox">
										<img src="${pageContext.request.contextPath }/resources/img/cafemap.png" width="700">
									</td>
									</tr>
					    				 <c:forEach begin="9" end="23" step="1" var="i">		 
									<tr>
										<td class="skillbox" >${i }:00 ~ ${i+1}:00</td>
										<td class="skillbox" >사용&예약 가능</td>
									</tr>
							</c:forEach>
									<tr>
										<td colspan="3">
											<input class="button_type01" type="button" value="바로시작" onclick="script:window.location='registTodayConfirm'">&nbsp;&nbsp;
											<input class="button_type01" type="button" value="예약하기" onclick="script:window.location='QuestionList'">
											<input class="button_type01" type="button" value="뒤로" onclick="window.history.back() ">
										</td>
									</tr>
							</tbody>
				</table>
						<div class="col-lg-12" id="ex1_Result1" ></div> 
						<div class="col-lg-12" id="ex1_Result2" ></div> 
				</div>
				</center>			
			</td>
		</tr>
	</table>
	
	</form>
	</center>
	<%@ include file="include/footer.jsp" %>
	
</body>
</html>