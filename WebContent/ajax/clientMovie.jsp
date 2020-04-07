<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>clientMovie.jsp</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script type="text/javascript">
$(function() {
	$("#searchXML").bind("click", rankMovieXML);
})
/* $(function() {
	$("#searchJSON").bind("click", rankMovieJSON);
}) */

function rankMovieXML() {
	$.get("../server/cd2.xml", function(datas) {
		var list = datas.getElementsByTagName("dailyBoxOffice");
		var str="";
		
		for(i=0; i<list.length; i++) {
			var rank = list[i].getElementesByTagName("rank")[0].firstChild.nodeValue;
			var movieNm = list[i].getElementesByTagName("movieNm")[0].firstChild.nodeValue;
			
			str += "<tr>"+
							"<td>" + rank +"</td>" +
							"<td>" + movieNm + "</td>"+
					  "</tr>";
		$("#tableXML").html(str);					  
		}
	}, "xml");
}

</script>
</head>
<body>
날짜<input id="searchDay">
<h3>XML 영화순위</h3>
<button type="button" id="searchXML" onclick="getMovieXML()">xml 조회</button>
<table id="tableXML"></table>

<h3>JSON 영화순위</h3>
<button type="button" id="searchJSON" onclick="getMovieJSON()">JSON 조회</button>
<div id=""></div>

</body>
</html>