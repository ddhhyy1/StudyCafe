<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/title.css">
<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/content.css">
<meta charset="UTF-8">
<title>사용&예약 확인 후 결제</title>
</head>
<body>
<%@ include file="include/header.jsp" %>
<center>
	<table width="75%" border="0" cellspacing="0" cellpadding="20">
		<tr>
			<td class="titlebox1">
				<span class="title01">STUDY CAFE</span>
			</td>
		</tr>
		<tr>
			<td class="titlebox1">
				<span class="title02">좌석등록 및 예약 확인</span>
			</td>
		</tr>
		<tr>
			<td>
				<center>
				<table width="80%" border="0" cellspacing="0" cellpadding="10">
					<tr class="contentbox">
						<td class="content">
							<center>						
							<table border="0" cellspacing="0" cellpadding="10">
									<tr>
										<td colspan="2" align="center" class="content_text01">
										회원 정보 수정 완료
										</td>
									</tr>
									<tr>
										<td><span class="content_text01">아 이 디 : </span></td>
										<td>${memberDto.mid}
										
										</td>
									</tr>
									<tr>
										<td><span class="content_text01">이용날짜 : </span></td>
										<td>${memberDto.mpw}
										
										</td>
									</tr>
									
									<tr>
										<td><span class="content_text01">지정좌석 : </span></td>
										<td>${memberDto.mname}
										
										</td>
									</tr>
									<tr>
										<td><span class="content_text01">이용시간 : </span></td>
										<td>${memberDto.memail}
										
										</td>
									</tr>
									
									<tr>
										<td colspan="2">
											<input class="button_type01" type="button" value="결제하기" onclick="script:window.location='memberModify'">&nbsp;&nbsp;
											<input class="button_type01" type="button" value="뒤로" onclick="window.history.back() ">
										</td>
									</tr>
												
							</table>
							</center>							
						</td>						
					</tr>
					
				</table>
				</center>			
			</td>
		</tr>
	</table>
	</center>
<%@ include file="include/footer.jsp" %>
</body>
</html>