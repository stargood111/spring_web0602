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
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/board.js"></script>
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
	
			<table width="70%" border="0" cellspacing="0" cellpadding="10">
					<tr>
								<td class="td-type03">NO</td>
								<td class="td-type03">ID</td>
								<td class="td-type03">MENU</td>
								<td class="td-type03">PRICE</td>
								<td class="td-type03">DATE</td>
							</tr>
									
							<c:forEach items="${orderlist }" var="dto">
							<tr>
								<td class="td-type04">${dto.hnum }</td>
								<td class="td-type04">${dto.hid }</td>
								<td class="td-type04">
								${dto.hname1 }${dto.hcup1 }잔${dto.hprice1 }원,<br> 
								${dto.hname2 }${dto.hcup2 }잔${dto.hprice2 }원,<br>
								${dto.hname3 }${dto.hcup3 }잔${dto.hprice3 }원,<br>
								${dto.hname4 }${dto.hcup4 }잔${dto.hprice4 }원,<br>
								${dto.hname5 }${dto.hcup5 }잔${dto.hprice5 }원,<br>
								${dto.hname6 }${dto.hcup6 }잔${dto.hprice6 }원<br></td>
								<td class="td-type04">${dto.hallprice }원</td>
								<td class="td-type04">${dto.hdate }</td>
									</tr>
							</c:forEach>
								
							<tr>
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