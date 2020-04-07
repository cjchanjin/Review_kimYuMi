<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
		
</style>
<script type="text/javascript">
	window.onload = function() {
		goodsImg.style.width = "100px";
	}

	function imgSize() {
		//이미지 크기를 400픽셀로 변경
		
		/* var a = document.getElementById("goodsImg");
		a.style.width="400px"; */
		
		var b =document.getElementById("goodsImg").style.width="400px";
		console.log(b);
	}
	
	function imgChg() {
		//이미지 src 변경
		document.getElementById("goodsImg").src="../images/4.jpg";
		
		//ID값으로 바로 접근 가능(document.getElemtnebyID 생략)
		goodsImg.src="../images/4.jpg";
	}
	
	function imgSizeUp() {
		//이미지 크기를 클릭시 마다 100픽셀 증가
		var w = goodsImg.style.width;	 //width 값을 읽어냄
		console.log(w);
		
		var result = ( parseInt(w) + 100)+"px";
		console.log(result);
		
		goodsImg.style.width=result;
	}

	window.onload = function() {
		var imgs = document.images;	//현 문서 내 모든 이미지를 담음
		
		for(var i=0; i<imgs.length; i++) {
			imgs[i].style.width=100+"px";
			console.log(imgs[i]);
		}
	}
	
	window.setInterval(imgSizeUp, 3000);		//3초마다 imgSizeUp 함수 실행
</script>
</head>
<body>
	<div>
		<button onclick="imgSize()">크기변경</button>
		<button onclick="imgChg()">그림변경</button>
		<button onclick="imgSizeUp()">점점크게</button>
		<img src="../images/3.jpg" id="goodsImg">
		<img src="../images/4.jpg" id="">
		<img src="../images/5.jpg" id="">
	
	</div>
</body>
</html>