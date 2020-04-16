<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<input id="num1" size="5"> + <input id="num2" size="5"> = <input id="sum" size="5">
<button id="btnConfrim">확인</button>
<div id="divResult">결과</div>

<script type="text/javascript">
num1.value=Math.floor(Math.randon() *10 );
num2.value=Math.floor(Math.randon() *10 );

btnConfirm.onclick=function() {
	var num1 = document.getElementById("num1");
	var num2 = document.getElementById("num2");
	var sum2 = Number(num1.value)+Number(num2.value);
	var sum = document.getElementById("sum");
	
	if( sum.value == sum2 ) {
		
	}
}
sum.onfocus = function name() {
	divResult.innerHTML = "";
}
</script> 
</body>
</html>