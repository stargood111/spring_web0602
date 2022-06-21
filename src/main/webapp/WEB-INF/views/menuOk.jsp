<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
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
	
		<table class="t-type01" width = "100%" border="0" cellspacing="0" cellpadding="20" align="center" >
		<tr>
			<td><span class="title01">IS COFFEE WELCOME</span></td>
		</tr>
		<tr>
			<td><span class="title02">MENU</span></td>
		</tr>
						</table>
	<table class="t-type01" border="0" cellspacing="0" cellpadding="20" align="center">
                  		    <td class="td-type08" colspan = "2">${orderdto.hid }</td>   
                  		    <td class="td-type08" colspan = "1">${orderdto.hnum}</td>       		
						<%
							String order1check = request.getAttribute("order1ok").toString();							
							
						
							if(!order1check.equals("0")) {					
						
						%>
						<tr>
							
									<td class="td-type07">${orderdto.hname1}</td>
										<td class="td-type07">${orderdto.hcup1}잔</td>
											<td class="td-type07">${orderdto.hprice1}원</td>
							</tr>
							
							<% } %>
						
											<%
							String order2check = request.getAttribute("order2ok").toString();							
							
						
							if(!order2check.equals("0")) {					
						
							%>
						
							<tr>
								
									<td class="td-type07">${orderdto.hname2}</td>
										<td class="td-type07">${orderdto.hcup2}잔</td>
											<td class="td-type07">${orderdto.hprice2}원</td>
							</tr>
					 	<%} %>
					 												<%
							String order3check = request.getAttribute("order3ok").toString();							
							
						
							if(!order3check.equals("0")) {					
						
							%>
						
							<tr>
								
									<td class="td-type07">${orderdto.hname3}</td>
										<td class="td-type07">${orderdto.hcup3}잔</td>
											<td class="td-type07">${orderdto.hprice3}원</td>
							</tr>
							
										 	<%} %>
					 												<%
							String order4check = request.getAttribute("order4ok").toString();							
							
						
							if(!order4check.equals("0")) {					
						
							%>
						
							<tr>
							
									<td class="td-type07">${orderdto.hname4}</td>
										<td class="td-type07">${orderdto.hcup4}잔</td>
											<td class="td-type07">${orderdto.hprice4}원</td>
							</tr>
											 	<%} %>
					 												<%
							String order5check = request.getAttribute("order5ok").toString();							
							
						
							if(!order5check.equals("0")) {					
						
							%>
							<tr>
							
									<td class="td-type07">${orderdto.hname5}</td>
										<td class="td-type07">${orderdto.hcup5}잔</td>
											<td class="td-type07">${orderdto.hprice5}원</td>
							</tr>
							
											 	<%} %>
					 												<%
							String order6check = request.getAttribute("order6ok").toString();							
							
						
							if(!order6check.equals("0")) {					
						
							%>
							<tr>
							
									<td class="td-type07">${orderdto.hname6}</td>
										<td class="td-type07">${orderdto.hcup6}잔</td>
											<td class="td-type07">${orderdto.hprice6}원</td>
							</tr>
						
							<%} %>
					
		
		<tr>
			<td class = "td-type07" colspan="3"> 총가격 : ${orderallprice }원</td>
		</tr> 
		
			</table>
	<%@ include file="include/footer.jsp" %>
</body>
</html>