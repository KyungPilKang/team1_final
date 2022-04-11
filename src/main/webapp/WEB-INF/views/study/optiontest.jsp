<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>옵션테스트</title>
</head>
<body>
<p align="center" class="draggable" style="border: 1px solid red; width: 100px;">
 <select id="list1" onchange="getSelectValue();">
 	<option value="1학년">1학년</option> 
 	<option value="2학년">2학년</option> 
 	<option value="3학년">3학년</option> 
 	<option value="4학년">4학년</option> 
 	<option value="5학년">5학년</option> 
 	<option value="6학년">6학년</option> 
 </select>
 </p>
 <script>
   function getSelectValue(){
	   var selectedValue = document.getElementById("list1").value; 
	   console.log(selectedValue);
   }
   
   getSelectValue();
 </script>
</body>
</html>