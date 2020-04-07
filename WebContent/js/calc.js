function calc() {
	//var n1 = document.getElementByID("num1").value ;
	var n1 = document.getElementsByName("num1")[0].value ;
	var n2 = document.getElementById("num2").value ;
	
	//함수호출
//	var result = parseInt(n1) + parseInt(n2);
	var result = sum(n1,n2);
	//결과출력
	//document.getElementById("result").innerHTML = result;
	//document.getElementsByTagName("div")[0].innerHTML = result;	//배열로 받는다(태그네임)
	document.getElementsByClassName("result")[0].innerHTML = result;	//배열로 받는다(클래스)
	document.querySelectorAll("#result")[0].innerHTML = result;	//css 선택자로 찾음(id, class등)
	
}

function sum(num1, num2) {
	var r = parseInt(num1) + parseInt(num2);
	return r;
}
