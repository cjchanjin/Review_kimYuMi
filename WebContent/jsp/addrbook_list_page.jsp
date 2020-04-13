<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" errorPage="addrbook_error.jsp"
	import="java.util.*, jspbook.addrbook.*"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="myTag" tagdir="/WEB-INF/tags"%>

<!DOCTYPE HTML>
<html>
<head>
<link rel="stylesheet" href="addrbook.css" type="text/css"
	media="screen" />
<script type="text/javascript">
	function check(ab_id) {
		pwd = prompt('수정/삭제 하려면 비밀번호를 넣으세요');
		document.location.href = "AddrServ?action=edit&ab_id=" + ab_id
			+ "&upasswd=" + pwd;
	}
</script>
<title>주소록:목록화면</title>
<style>
.pagination ul {  
    list-style:none;  
    float:left;  
    display:inline;  
}  
.pagination ul li {  
    float:left;  
}  
.pagination ul li a {  
    float:left;  
    padding:4px;  
    margin-right:3px;  
    width:15px;  
    color:#000;  
    font:bold 12px tahoma;  
    border:1px solid #eee;  
    text-align:center;  
    text-decoration:none;  
}  
.pagination ul li.active {  
    float:left;  
    padding:4px;  
    margin-right:3px;  
    width:15px;  
    color:#000;  
    font:bold 12px tahoma;  
    border:1px solid #eee;  
    text-align:center;  
    text-decoration:none;  
} 

.pagination ul li a:hover, .pagination ul li a:focus {  
    color:#fff;  
    border:1px solid #f40;  
    background-color:#f40;  
}
</style>
<script>
function dolist(page){
	location.href="AddrServ.do?action=list&page="+page;
}
</script>
</head>
<body>
	<div align="center">
		<H2>주소록:목록화면</H2>
		<a href="addrbook_form.jsp">주소록 등록</a>
		<table border="1">
			<tr>
				<th>번호</th>
				<th>이 름</th>
				<th>전화번호</th>
				<th>생 일</th>
				<th>회 사</th>
				<th>메 모</th>
			</tr>
			<c:forEach items="${addrList}" var="ab">
				<tr>
					<td><a href="javascript:check(${ab.ab_id})">${ab.ab_id}</a></td>
					<td>${ab.ab_name}</td>
					<td>${ab.ab_tel}</td>
					<td>${ab.ab_birth}</td>
					<td>${ab.ab_comdept}</td>
					<td>${ab.ab_memo}</td>
				</tr>
			</c:forEach>
		</table>
	</div>
	${paging}
<myTag:paging paging="${paging}" jsfunc="dolist"/> 
</body>
</html>

