<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript">
	//문자열 자르기
	var url = "http://localhost/js/dom/search.jsp"
	var pageName1 = url.lastIndexOf("/")	//lastIndexOf, substring 이용
	var pageName2 = url.substr( pageName1 +1 );
	console.log(pageName1) //search.jsp 출력되도록
	console.log(pageName2)

	var id="881206-1234567";
	var sex = id.substr(7,1);			//substd (몇번째문자열인지 , 나타낼문자 길이)
	console.log(sex);
	console.log( sex == '1' ? '남' : '여' );
	console.log( "출생월 : " + id.substr(2,2) + "월");
</script>
</head>
<body>

<h3>자바스크립트 데이터 타입 연습</h3>

</body>
</html>