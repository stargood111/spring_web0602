<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
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
   }
   function printName2() {
   
   name = document.getElementById('name2').value;      
   document.getElementById('result2').value = name;
   orderNum = document.getElementById('quantity2').value;      
   document.getElementById('resultNum2').value = orderNum;
   }
   function printName3() {
   
   name = document.getElementById('name3').value;      
   document.getElementById('result3').value = name;   
   orderNum = document.getElementById('quantity2').value;      
   document.getElementById('resultNum3').value = orderNum;
   }

</script>
</head>
<body>
   
   
      <input type="text" name="americano" id="name1" value="아메리카노"><br>      
      <select name="ameri_num" id="quantity1">
         <option>1</option>
         <option>2</option>
         <option>3</option>
         <option>4</option>      
      </select>
      <input type="button" value="주문" onclick="printName1()"><br>      
         
      <input type="text" name="latte" id="name2" value="카페라테"><br>
      <select name="latte_num" id="quantity2">
         <option>1</option>
         <option>2</option>
         <option>3</option>
         <option>4</option>      
      </select>      
      <input type="button" value="주문" onclick="printName2()"><br>      
         
      <input type="text" name="espresso" id="name3" value="에스프레소"><br>
      <select name="espre_num" id="quantity3">
         <option>1</option>
         <option>2</option>
         <option>3</option>
         <option>4</option>      
      </select>      
      <input type="button" value="주문" onclick="printName3()"><br>      
    
   <hr>
   <form>
      <input type="text" name="order1" id="result1" value="">
      수량<input type="text" name="order1num" id="resultNum1" value="" size="10"><br>
      <input type="text" name="order2" id="result2" value="">
      수량<input type="text" name="order2num" id="resultNum2" value="" size="10"><br>
      <input type="text" name="order3" id="result3" value="">
      수량<input type="text" name="order3num" id="resultNum3" value="" size="10"><br>
      <input type="submit" value="결제"><input type="reset" value="취소">
   </form>
   
</body>
</html>