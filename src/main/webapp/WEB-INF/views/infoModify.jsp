<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>## LeeGyoJin Profile</title>
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/span.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/table.css">
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/members.js"></script>
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
			<table width="70%" border="0" cellspacing="0" cellpadding="10">
				<tr>					
					<td height="500" bgcolor="#D5D5D5" align="center">
						<table border="0" cellspacing="0" cellpadding="10">							
							<form action="infoModifyOk" method="post" name="reg_frm">
								<tr>
									<td class="td-type01">MEMBER ID</td>
									<td><input id="input01" type="text" name="id" value="${memberDto.mid }" readonly></td>
								</tr>
								<tr>
									<td class="td-type01">PASSWORD</td>
									<td><input id="input01" type="password" name="pw"></td>
								</tr>
								<tr>
									<td class="td-type01">PW CHECK</td>
									<td><input id="input01" type="password" name="pw_check"></td>
								</tr>
								<tr>
									<td class="td-type01">NAME</td>
									<td><input id="input01" type="text" name="name" value="${memberDto.mname}"></td>
								</tr>
								<tr>
									<td class="td-type01">E-MAIL</td>
									<td><input id="input01" type="text" name="email" value="${memberDto.memail}"></td>
								</tr>
								<tr>
									<td class="td-type01">JOIN DATE</td>
									<td><input id="input01" type="text" name="date" value="${memberDto.mdate}" readonly></td>
								</tr>
								
								<tr>
									<td colspan="2">
									<input id="button01" type="button" value="정보수정" onclick="infoConfirm()">&nbsp;&nbsp;
									<input id="button01" type="button" value="취소" onclick="javascript:window.location='index'">
									</td>
									
								</tr>
							</form>						
						</table>
					</td>
				</tr>			
			</table>
		</tr>	
	</table>
	<center>
	
	
	<%@ include file="include/footer.jsp" %>
</body>
</html>