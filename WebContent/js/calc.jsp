<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>calc.jsp</title>
<style>
	#result { border : 1px solid green; 
	          height : 200px;  
	        }
</style>
<script src="calc.js"></script>
</head>
<body>
<input type="number" name="num1" id="num1" value="10"> +
<input type="number" name="num2" id="num2" value="20">  
<input type="button" value="=" onclick="calc();">
<div id="result" class="result"></div> 
<script>
	document.getElementById("result").style.backgroundColor='gray';
</script>
</body>
</html>




