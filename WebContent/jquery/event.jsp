<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>event.jsp</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script type="text/javascript">
//페이지 로드 이벤트
$(function(){
	// li mouserover 이벤트
	// on 메서드 -> 이벤트를 걸어주는 부모노드에 위임한다 (새로 추가되도 계속 반영)
	$("ul").on("mouseover", "li", function(){
		//$this  -> 현재 이벤트 타켓을 가리킨다
		//css 함수 : css(바꿀속성, 값)
		$(this).css("backgroundColor", "gray");
	});
	
	$("ul").on("mouseout", "li", function(){
		$(this).css("backgroundColor", "");
	});
	
	//버튼 클릭 이벤트
	$("button").bind("click", function(){
		$("ul").append( $("<li>").html("spring") );
//		$("ul").append( "<li>spring</li>" );				//  li 태그를 추가하는 위 아래 같은 방법
	});
});
</script>
</head>
<body>
<button type="button">추가</button>
<ul>
	<li>자바</li>
	<li>jsp
</ul>
</body>
</html>