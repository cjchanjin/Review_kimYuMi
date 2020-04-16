<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>clientMovie.jsp</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script type="text/javascript">
/*$(function() {
	$("#searchXML").bind("click", rankMovieXML); */


$(function() {
	$("#searchJSON").bind("click", rankMovieJSON);
})

/* function rankMovieXML() {
	$.get("http://www.kobis.or.kr/kobisopenapi/webservice/rest/boxoffice/searchDailyBoxOfficeList.xml?key=430156241533f1d058c603178cc3ca0e&targetDt=20200406", function(datas) {
		var list = datas.getElementsByTagName("dailyBoxOffice");
		var str="";
		console.log(list);
		
		for(i=0; i<list.length; i++) {
			var rank = list[i].getElementsByTagName("rank")[0].firstChild.nodeValue;
			var movieNm = list[i].getElementsByTagName("movieNm")[0].firstChild.nodeValue;
			
			str += "<tr>"+
							"<td>" + rank +"</td>" +
							"<td>" + movieNm + "</td>"+
				"</tr>";
		$("#tableXML").html(str);					  
		}
	}, "xml");
} */

function rankMovieJSON () {
	$.get("../DaeguXY.json", function(datas) {
//		var arry = datas.getElementById("boxOfficeResult");
		var obj = datas.features;
		var str="";
		
		
		 for(i in obj){
			var coordinates = obj[i].geometry.coordinates;
			console.log(coordinates);
			for(k in coordinates){
				
				
			
				} 
			 }
		}, "json");
	}


</script>
</head>
<body>
날짜<input id="searchDay">
<h3>XML 영화순위</h3>
<button type="button" id="searchXML">XML 조회</button>
<table id="tableXML"></table>

<h3>JSON 영화순위</h3>
<button type="button" id="searchJSON">JSON 조회</button>
<div id="divJSON"></div>

</body>
</html>