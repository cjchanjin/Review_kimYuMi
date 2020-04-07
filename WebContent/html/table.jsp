<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
	.memberList1 tr:hover {
		background-color: yellowgreen;
	}
	.memberList2 tr:nth-child(odd) {
		background-color: silver;
	}
	.memberList1, .memberList2 {
		display: inline-block;		
	}
	table,tr,td {
		border: 3px solid blue;
	}
	td {
		padding: 10px;
	}
	table {
		margin: 0px 50px 10px 0px;
	}
	.memberList1 td:first-child {
		background-color:red;
	}
	.memberList1:nth-child(1) {display: none;}
</style>
</head>
<body>
	<table class="memberList1">
		<tr>
			<td>1</td>
			<td>2</td>
			<td>3</td>
		</tr>
		<tr>
			<td>4</td>
			<td>5</td>
			<td>6</td>
		</tr>
		<tr>
			<td>7</td>
			<td>8</td>
			<td>9</td>
		</tr>
		<tr>
			<td>10</td>
			<td>11</td>
			<td>12</td>
		</tr>
	</table>
	<table class="memberList2">
		<tr>
			<td>1</td>
			<td>2</td>
			<td>3</td>
		</tr>
		<tr>
			<td>4</td>
			<td>5</td>
			<td>6</td>
		</tr>
		<tr>
			<td>7</td>
			<td>8</td>
			<td>9</td>
		</tr>
		<tr>
			<td>10</td>
			<td>11</td>
			<td>12</td>
		</tr>
	</table>
</body>
</html>