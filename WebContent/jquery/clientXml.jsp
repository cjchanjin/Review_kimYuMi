<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>jquery/clientXml.jsp</title>
<style type="text/css">
	.redText {color : red;}
	.blueText {color : blue;}
</style>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script type="text/javascript">


//window load event handler
//$(document).bind("ready", function(){})
$(function(){
	$("#btnSearch").bind("click", loadCD);
})

//CD 카타로그 조회 함수 생성
function loadCD() {
	$.get("../server/cd.xml", function(datas){
		var list = datas.getElementsByTagName("CD");
		var str ="";
		var style="";
		for (i=0; i<list.length; i++) {
			var title = list[i].getElementsByTagName("TITLE")[0].firstChild.nodeValue;
			var artist = list[i].getElementsByTagName("ARTIST")[0].firstChild.nodeValue;

			// price 10$ 이상만 출력
			var price = list[i].getElementsByTagName("PRICE")[0].firstChild.nodeValue;
			style = price > 10? "blueText" : "redText";
			
			str += "<tr><td>" + title + 
					  "</td><td>" + artist +
					  "</td><td class=' "+style+" '>" + price +
					  "</td></tr>";
			$("#result").html(str);		// innerHTML 과 같은 기능
		}
	}, "xml");
}
</script>
</head>
<body>
<h3>CD 목록</h3>
<button type="button" id="btnSearch">조회</button>
<table id="result" border="1">
	
</table>
</body>
</html>
