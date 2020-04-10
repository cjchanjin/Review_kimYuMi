<%@page import="java.util.HashMap"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>elmap.jsp</title>
</head>
<body>
<%  HashMap<String, Object> map = new HashMap<String, Object>(); 
		map.put("first_name", "홍길동");
		map.put("empid", "100");
		request.setAttribute("emp", map);
%>
이름출력 : ${emp.first_name }; <br>

map 전체 조회<br>
<c:forEach items="${emp }" var="temp"><br>
	${temp.key }	${temp.value } <br>

</c:forEach>









</body>
</html>