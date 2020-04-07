<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script>
	//추가
	function addFruit() {
		var x = document.getElementById("selFruit");
		var opt = document.createElement("option");
		opt.text = document.getElementById("txtFruit").value;
		console.log(opt.text);
		x.add(opt);
	}
	
	//삭제
	function delFruit() {
		var x = document.getElementById("selFruit");
		var selected = document.getElementById("txtFruit").value;
		x.remove(selected);
	}
</script>
</head>
<body>
<input name="txtFruit" id="txtFruit">
<button type="button" onclick="addFruit()">추가</button><br>
<select name="selFruit" id="selFruit" size="10" style="width:170px"></select>
<button type="button"  onclick="delFruit()">삭제</button>
</body>
</html>