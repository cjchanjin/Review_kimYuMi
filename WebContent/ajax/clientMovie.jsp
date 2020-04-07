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
$(function() {
	$("#searchJSON").bind("click", rankMovieJSON);
})

function rankMovieXML() {
	$.get("http://www.kobis.or.kr/kobisopenapi/webservice/rest/boxoffice/searchDailyBoxOfficeList.xml?key=430156241533f1d058c603178cc3ca0e&targetDt=20200406", function(datas) {
		var list = datas.getElementsByTagName("dailyBoxOffice");
		var str="";
		
		for(i=0; i<list.length; i++) {
			var title
		}
	}, "xml");
	
}

</script>
</head>
<body>
날짜<input id="searchDay">
<h3>XML 영화순위</h3>
<button type="button" id="searchXML" onclick="getMovieXML()">xml 조회</button>
<table id=""></table>

<h3>JSON 영화순위</h3>
<button type="button" id="searchJSON" onclick="getMovieJSON()">JSON 조회</button>
<div id=""></div>

</body>
</html>