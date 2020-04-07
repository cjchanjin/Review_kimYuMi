<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
	div {
		text-align:center;
		width:200px;
		height:200px;
		margin-right: 20px;
		border: 1px solid blue;
		display: table-cell; 
		vertical-align:middle;
		font-size: 50px;
	}
	#divb {
		background-color: yellowgreen;
		position: fixed;
		bottom:10px;
		right:10px;
	}
	#divc {
		background-color: red;
		position: absolute;
		top:50%;
		left:50%;
		margin: -100px 0px 0px -100px;
	}
</style>
</head>
<body>
	<div>a</div>
	<div id="divb">b</div>
	<div id="divc">c</div>
	<div>d</div>
</body>
</html>