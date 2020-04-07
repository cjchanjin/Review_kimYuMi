<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>client.jsp</title>
<script type="text/javascript">
function dupCheck() {
	//1. xhr 객체 생성
	  var xhttp = new XMLHttpRequest();
	
	//2. 응답시 반응할 callBack 함수 지정(on 으로 시작하는것은 다 event)
	  xhttp.onreadystatechange = function() {			// onready ... -> 해당 속성값이 변경 될 때 함수 작동
		console.log(this.readyState);
	    if (this.readyState == 4) {		//요청 완료
	    	if(this.status == 200) {		//실행 OK
	     console.log("asax 요청 완료");		//메시지 찍히는 순서 확인 2
	     document.getElementById("result").innerHTML = this.responseText; // id 가 result 인 태그를 받아서 this. 이후로 변경한다.
	    	} else {
	    		document.getElementById("result").innerHTML = this.statusText;	//200이 아니라면 에러 메시지 출력
	    	}
	    } else {
	    	document.getElementById("result").innerHTML = "로딩중";	//요청 완료가 안된상태	
	    }	 
	  };	
	  
	  //3. 요청 준비	//get 방식으로 데이터 검증위해 문장 끝에 ? 붙이고 들어갈 값 예약해줌
	  var param ="id=" + frm.id.value;		//document.getElementById("id")  //id.value ( id가 id 라서)
	  xhttp.open("post", "../server/idCheck.jsp?", true);		//true -> 비동기 여부. 디폴트라서 생략 가능
	 
	  //동기식(false)일때는 send 함수가 실행 완료 되면 다음으로 넘어간다. -> 블록킹 함수
	  //메시지 찍히느 순서가 비동기식이랑 반대. 요청 완료 되고, 요청 처리
	  //ajax는 디폴트가 비동기 -> 필요시 동기식으로 변경
	  
	  //4. 요청 시작
	  xhttp.setRequestHeader("Content-type", "application/x-www-form-urlencoded");
	  xhttp.send(param);	//get & post 방식시 코드 차이 확인할것 (w3school)
	  console.log("asax 요청 처리"); // 메시지 찍히는 순서 1
	}
	
</script>
</head>
<body>
<form id="frm" name="frm">
	id<input id="id" name="id" onchange="dupCheck()">
			<span id="result"></span><br>
	pw<input id="pw" name="pw">
</form>



</body>
</html>