<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/header.css">
<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/hyperlink.css">
<title>header</title>
</head>
<body>

<%-- 	<%
		String sessionId =(String) session.getAttribute("memberId");
	%>

	<table width="100%" border="0" cellspacing="0" cellpadding="0">
		<tr class="headline01">
			<td width="65%" class="menu01">&nbsp;</td>
			<td width="5%" class="menu01"><a href="index">HOME</a></td>
			<td width="5%" class="menu01">
			<%
			 	if(sessionId== null){
			%>
			
			<a href="login">LOGIN</a>
			
			<%
			 	}else{
			%>
			<a href="logout">LOGOUT</a>
			<%
			 	}
			%>
			
			</td>
			<td width="5%" class="menu01">
			
			<%
			 	if(sessionId== null){
			%>
			
			<a href="join">JOIN</a>
			
			<%
			 	}else{
			%>
			<a href="memberModify">MODIFY</a>
			
			<%
			 	}
			%>
			</td> --%>
			<table width="100%" border="0" cellspacing="0" cellpadding="0">
		<tr class="headline01">
			<td width="5%" class="menu01"><a href="index">StudyCafe</a></td>
			<td width="50%" class="menu01">&nbsp;</td>
			<td width="5%" class="menu01"><a href="index">HOME</a></td>
			<td width="5%" class="menu01">Login</td>
			<td width="5%" class="menu01">내 정보</td>
			<td width="5%" class="menu01"><a href="TicketPrice">이용금액</a></td>
			<td width="7%" class="menu01"><a href="ChooseTicket">이용권구매</a></td>
			<td width="5%" class="menu01">문의Q&A</td>
			
			<td width="2%">&nbsp;</td>
		</tr>
		<tr class="headline02">
			<td>&nbsp;</td>
		</tr>
	</table>
</body>
</html>