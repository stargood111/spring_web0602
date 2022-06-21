<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>## LeeGyoJin Profile</title>
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/span.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/table.css">
</head>
<body>
	<%@ include file="include/header.jsp" %>
	
	<center>
	<table class="t-type01" width="75%" border="0" cellspacing="0" cellpadding="20">
		<tr>
			<td><span class="title01">DEVELOPER GYOJIN'S PROFILE</span></td>
		</tr>
		<tr>
			<td><span class="title02">I'm Gyojin Lee, a developer who wants a development job. Please call me back.</span></td>
		</tr>
		<tr>
		
			${ordernumber }
			<table width="70%" border="0" cellspacing="0" cellpadding="10">
				<input type = "hidden" value = ${ordernumber }>
			</table>
		</tr>	
	</table>
	<center>
	
	
	<%@ include file="include/footer.jsp" %>
</body>
</html>