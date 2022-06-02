<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/span.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/table.css">
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript">
   function printName1() {
   name = document.getElementById('name1').value;      
   document.getElementById('result1').value = name;      
   orderNum = document.getElementById('quantity1').value;      
   document.getElementById('resultNum1').value = orderNum;
   priceNum = document.getElementById('price1').value;      
   document.getElementById('resultPrice1').value = parseInt(priceNum) * parseInt(orderNum);
   }
   function printName2() {
   name = document.getElementById('name2').value;      
   document.getElementById('result2').value = name;      
   orderNum = document.getElementById('quantity2').value;      
   document.getElementById('resultNum2').value = orderNum;
   priceNum = document.getElementById('price2').value;      
   document.getElementById('resultPrice2').value = parseInt(priceNum) * parseInt(orderNum);
   }
   function printName3() {
   name = document.getElementById('name3').value;      
   document.getElementById('result3').value = name;      
   orderNum = document.getElementById('quantity3').value;      
   document.getElementById('resultNum3').value = orderNum;
   priceNum = document.getElementById('price3').value;      
   document.getElementById('resultPrice3').value = parseInt(priceNum) * parseInt(orderNum);
   } 
   function printName4() {
   name = document.getElementById('name4').value;      
   document.getElementById('result4').value = name;      
   orderNum = document.getElementById('quantity4').value;      
   document.getElementById('resultNum4').value = orderNum;
   priceNum = document.getElementById('price4').value;      
   document.getElementById('resultPrice4').value = parseInt(priceNum) * parseInt(orderNum);
   }
   function printName5() {
   name = document.getElementById('name5').value;      
   document.getElementById('result5').value = name;      
   orderNum = document.getElementById('quantity5').value;      
   document.getElementById('resultNum5').value = orderNum;
   priceNum = document.getElementById('price5').value;      
   document.getElementById('resultPrice5').value = parseInt(priceNum) * parseInt(orderNum);
   }
   function printName6() {
   name = document.getElementById('name6').value;      
   document.getElementById('result6').value = name;      
   orderNum = document.getElementById('quantity6').value;      
   document.getElementById('resultNum6').value = orderNum;
   priceNum = document.getElementById('price6').value;      
   document.getElementById('resultPrice6').value = parseInt(priceNum) * parseInt(orderNum);
   }
 
   

</script>
</head>
<body>
<%@ include file="include/header.jsp" %>
	<table class="t-type01" width="75%" border="0" cellspacing="0" cellpadding="20" align="center" >
		<tr>
			<td><span class="title01">IS COFFEE WELCOME</span></td>
		</tr>
		<tr>
			<td><span class="title02">MENU</span></td>
		</tr>
	</table>

<table>
<tr>
	<td class ="td-type06">
	<img src="/resources/img/ame.jpg">아메리카노(ICE)<br><br>
		<input type = "text" name = "imeprice" id = "price1" value ="1800" size= "5" readonly>원
	  <input type = "text" id = "name1" value = "아메리카노(ICE)" hidden = "true">
	  <select name="ame" id="quantity1">
         <option>1</option><option>2</option><option>3</option><option>4</option><option>4</option> 
		<option>6</option><option>7</option><option>8</option><option>9</option><option>10</option>    
      </select>
      <input type="button" value="선택" onclick="printName1()">
	</td>
	
	<td class = "td-type06"><img src="/resources/img/cold.jpg"><br>콜드브루(ICE)<br><br>
	<input type = "text" name = "coldprice" id = "price2" value ="3300" size= "5" readonly>원
	  <input type = "text" id = "name2" value = "콜드브루(ICE)" hidden = "true">
	  <select name="cold" id="quantity2">
         <option>1</option><option>2</option><option>3</option><option>4</option><option>4</option> 
		<option>6</option><option>7</option><option>8</option><option>9</option><option>10</option>    
      </select>
        <input type="button" value="선택" onclick="printName2()">
	</td>
	
	<td class = "td-type06"><img src="/resources/img/caramel.jpg"><br>카라멜마끼아또(ICE)<br><br>
	  <input type = "text" name = "caramelprice" id = "price3" value ="3300" size= "5" readonly>원
	  <input type = "text" id = "name3" value = "카라멜마끼아또(ICE)" hidden = "true">
	  <select name="caramel" id="quantity3">
         <option>1</option><option>2</option><option>3</option><option>4</option><option>4</option> 
		<option>6</option><option>7</option><option>8</option><option>9</option><option>10</option>    
      </select>
      <input type="button" value="선택" onclick="printName3()">
	</td>
</tr>
</table>

<table align="center">
<tr>
	<td class = "td-type06"><img src="/resources/img/banila.jpg"><br>바닐라라떼(ICE)<br>
	  <input type = "text" name = "caramelprice" id = "price4" value ="3000" size= "5" readonly>원
	  <input type = "text" id = "name4" value = "바닐라라떼(ICE)" hidden = "true">
	  <select name="banila" id="quantity4">
         <option>1</option><option>2</option><option>3</option><option>4</option><option>4</option> 
		<option>6</option><option>7</option><option>8</option><option>9</option><option>10</option>    
      </select>
      <input type="button" value="선택" onclick="printName4()">
	</td>
	
	<td class = "td-type06"><img src="/resources/img/coldlatte.jpg"><br>콜드브루라떼(ICE)<br>
	  	  <input type = "text" name = "caramelprice" id = "price5" value ="3800" size= "5" readonly>원
	  <input type = "text" id = "name5" value = "콜드브루라떼(ICE)" hidden = "true">
	  <select name="coldlatte" id="quantity5">
         <option>1</option><option>2</option><option>3</option><option>4</option><option>4</option> 
		<option>6</option><option>7</option><option>8</option><option>9</option><option>10</option>    
      </select>
      <input type="button" value="선택" onclick="printName5()">
	</td>
	<td class = "td-type06"><img src="/resources/img/latte.jpg"><br>카페라떼(ICE)<br>
	 	  <input type = "text" name = "caramelprice" id = "price6" value ="2500" size= "5" readonly>원
	  <input type = "text" id = "name6" value = "카페라떼(ICE)" hidden = "true">
	  <select name="latte" id="quantity6">
         <option>1</option><option>2</option><option>3</option><option>4</option><option>4</option> 
		<option>6</option><option>7</option><option>8</option><option>9</option><option>10</option>    
      </select>
      <input type="button" value="선택" onclick="printName6()">
	</td>
</tr>
</table>

<hr>
	
   <form action = "menuOk" align = "center">
      <input type="text" name="order1" id="result1" value=" " size="10" readonly>
      수량<input type="text" name="order1num" id="resultNum1" value="" size="10" readonly>
    	가격<input type = "text" name = order1price id ="resultPrice1" value= "" size ="10" readonly>원
    <br>
    
      <input type="text" name="order2" id="result2" value=" " size = "10" readonly>
       수량<input type="text" name="order2num" id="resultNum2" value="" size="10" readonly>
    	가격<input type = "text" name = order2price id ="resultPrice2" value= "" size ="10" readonly>원
	<br>
    	
      <input type="text" name="order3" id="result3" value=" " size = "10" readonly>
      수량<input type="text" name="order3num" id="resultNum3" value="" size="10" readonly>
      가격<input type = "text" name = order3price id ="resultPrice3" value= "" size ="10" readonly>원
  	<br>
   <input type="text" name="order4" id="result4" value=" " size="10" readonly>
      수량<input type="text" name="order4num" id="resultNum4" value="" size="10" readonly>
    	가격<input type = "text" name = order4price id ="resultPrice4" value= "" size ="10" readonly>원
    <br>
    
      <input type="text" name="order5" id="result5" value=" " size = "10" readonly>
       수량<input type="text" name="order5num" id="resultNum5" value=" " size="10" readonly>
    	가격<input type = "text" name = order5price id ="resultPrice5" value= "" size ="10" readonly>원
	<br>
    	
      <input type="text" name="order6" id="result6" value=" " size = "10" readonly>
      수량<input type="text" name="order6num" id="resultNum6" value=" " size="10" readonly>
      가격<input type = "text" name = order6price id ="resultPrice6" value= "" size ="10" readonly>원
  	<br>
  	
   <input type="submit" value="결제"><input type="reset" value="취소">
   
    </form>
   

	<%@ include file="include/footer.jsp" %>


</body>
</html>