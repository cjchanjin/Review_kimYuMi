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
		//사번으로 사원정보 검색
		$.ajax({ url : "../server/findName.jsp",
				  data: { id : $("#empNo").val() },
//				  dataType : "JSON",
//				  async : true, 				//비동기 -> 트루가 디폴트
//				  method: get 			//get or post
					})
		.done(function(datas){
			//json 타입으로 파싱할 필요 x (위에서 이미 함)
			$("#result").html(datas.first_name + " " + datas.last_name);
		})
		.fail(function(xhr, status){
			$("#result").html(status);
			console.dir(xhr);
		})
		.always(function(){
			console.dir("처리완료");
		});
	}

</script>
</head>
<body>

<input id="empNo">
	<button type="button" id="btnSearch">검색</button>
<div id="result"></div>
	
</body>
</html>