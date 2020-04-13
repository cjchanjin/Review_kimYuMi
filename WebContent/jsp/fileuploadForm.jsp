<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1>File Upload</h1> 
<form enctype="multipart/form-data" method="post" action="../boardInsert.do"> 
<input type="text" name =" title"><br>
<input type="text" name =" contents"><br>

Select file to upload: 
<input type="file" name="file" size="60" /> <br /><br /> 
<input type="submit" value="전송" /> 
</form>


</body>
</html>