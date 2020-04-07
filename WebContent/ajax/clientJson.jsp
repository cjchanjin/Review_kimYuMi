<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>clientJson</title>
<script type="text/javascript">
function findName() {
	  var xhttp = new XMLHttpRequest();
	  xhttp.onreadystatechange = function() {
	    if (this.readyState == 4 && this.status == 200) {
	    	//응답 결과 입력
	    	var obj = JSON.parse(this.responseText);		//json 형식으로 파싱
	    	 document.getElementById("firstName").innerHTML = obj.first_name;
	    	 document.getElementById("lastName").innerHTML = obj.last_name;
	    	
	    }
	  };
	  
	  var param = "id="	+ document.getElementById("id").value;
	  xhttp.open("post", "../server/findName.jsp?", true);
	  xhttp.setRequestHeader("Content-type", "application/x-www-form-urlencoded");
	  xhttp.send(param);
	}
</script>

</head>
<body>

<h3>교육 신청</h3>
	id<input id="id" onchange="findName()">
		<span id="firstName"></span>
		<span id="lastName"></span><br>
	교육과정<input id="id">
	
	
</body>
</html>