<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ajaxTest.jsp</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script type="text/javascript">
	//버튼 이벤트
	$(function(){
		$("#btnSearch").bind("click", searchEmp);
	});
	function searchEmp() {
		$.ajax({
			type: "post",
			url: "../server/findName.jsp",
			data: { id : $("#empNo").val() },
			success: function(datas) {
				/* if($.trim(data) == 0) {
					$("#result").html("<p style='color:blue'>사용 가능</p>");
				} else {
					$("#result").html("<p style='color:red'>사용 불가능</p>");
				} */
				$("#result").html(datas);
//				$("#result").html(data.first_name + " : " + data.last_name);
			}
		});
	};

</script>
</head>
<body>

<input id="empNo">
	<button type="button" id="btnSearch">검색</button>
<div id="result"></div>
	
</body>
</html>