<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>header</title>
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/table.css">
</head>
<body>
	<table class="t-type02" width="100%" border="0" cellspacing="0" cellpadding="0">
		<tr height="50">
			<td width="61%">&nbsp;</td>
			<td width="5%"><a href="${pageContext.request.contextPath}/">Home</a></td>
			<td width="5%">
				<% 
					String sessionId = (String) session.getAttribute("id"); 
					if(sessionId == null) {
				%>
					<a href="login">Login</a>
				<%
					} else {
				%>
					<a href="logout">Logout</a>
				<%
					}
				%>
			</td>
			<td width="4%">
				<% 
					if(sessionId == null) {
				%>
					<a href="join">Join</a>
				<%
					} else {
				%>
				
					<a href="infoModify">Modify</a>
				<%
					}
				%>
			</td>
			<td width="6%"><a href="menu">Menu/Order</a></td>
			<td width="5%"><a href="profile">OrderList</a></td>
			<td width="6%"><a href="question">Location</a></td>
			<td width="5%"><a href="contact">Contact</a></td>		
		</tr>
		<tr>
			<td height="50" colspan="8" bgcolor="#FFFFFF">&nbsp;</td>
		</tr>
	</table>
</body>
</html>