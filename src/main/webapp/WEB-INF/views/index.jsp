<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
	<table class="t-type01" width="75%" border="0" cellspacing="0" cellpadding="20" >
		<tr>
			<td><span class="title01">IS COFFEE WELCOME</span></td>
		</tr>
		<tr>
			<td><span class="title02">Ethiopia Beans</span></td>
		</tr>
		<tr>
			<table width="55%" border="0" cellspacing="30" cellpadding="0" >
				<tr>
					<td height="400" bgcolor="#353535" rowspan="6" align="center">
						<img src="<c:url value="/resources/img/coffee.png" />">
					</td>
				</tr>		
					<tr>
			<table width="55%" border="0" cellspacing="30" cellpadding="0" a>
				<tr>
					<td height="400" bgcolor="#353535" rowspan="6" align ="center">
						<img src="<c:url value="/resources/img/beans.jpg" />">
					</td>
				</tr>		
			</table>
		</tr>	
	</table>
	<center>
	
	<%@ include file="include/footer.jsp" %>
</body>
</html>