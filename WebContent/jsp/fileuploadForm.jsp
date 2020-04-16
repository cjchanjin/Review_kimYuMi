<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<script src="https://cdn.ckeditor.com/ckeditor5/18.0.0/classic/ckeditor.js"></script>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1>File Upload</h1> 
<form enctype="multipart/form-data" method="post" action="../boardInsert.do"> 
제목<input type="text" name =" title"><br>
내용<textarea name="contents" id="contents"></textarea><br>

<script>
var editor;
ClassicEditor.create( document.querySelector( '#contents' ) , {
						    ckfinder: {
						        uploadUrl: 'fileUpload.jsp'
						    }
							} )
			    .then( newEditor => {
			        editor = newEditor;
			    } )
			    .catch( error => {
			        console.error( error );
			    } );
</script>

Select file to upload: 
<input type="file" name="file" size="60" /> <br /><br /> 
<input type="submit" value="전송" /> 
</form>


</body>
</html>