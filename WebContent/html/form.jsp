<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
	label {
		display: inline-block;
		width: 100px;
		background-color:silver;	
	}
	body {
		font-size:10px;
	}
	input, select, textarea, label {
		font-size: 2em;
	}
	input:hover {
		background-color:yellowgreen;
	}
	input [name='pw'] {
		background-color:red;
	}
</style>
<script>
	localStorage.setItem("lastname", "Smith");
	
	var x = document.getElementById("demo");
	
	function getLocation() {
	  if (navigator.geolocation) {
	    navigator.geolocation.getCurrentPosition(showPosition);
	  } else {
	    x.innerHTML = "Geolocation is not supported by this browser.";
	  }
	}

	function showPosition(position) {
	  x.innerHTML = "Latitude: " + position.coords.latitude +
	  "<br>Longitude: " + position.coords.longitude;
	}
	
	function inputCheck() {
		//form 태그 접근 방법들
		//document.forms["frm"]
		//id, pw 필수입력 체크
		if(frm.id.value == "" ) {
			alert("insert id");
			frm.id.focus();
			return;
		}
		if(frm.pw.value == "" ) {
			alert("insert pw");
			frm.pw.focus();
			return;
		}
		//job 선택 되었는지 확인
		//if(frm.job.value == "") {
		if(frm.job.selectedIndex < 1) {	
			window.alert("select job");
			frm.job.focus();
			return;
		}
		
		var hobbyCheck = document.querySelectorAll("[name='hobby']:checked").length;
		if(hobbyCheck < 1) {
			alert("select hobby");
			frm.hobby.focus();
			return false;	
			}
		
	}
</script>
</head>
<body>
<div align = "center">
	<div><h1>회 원 가 입</h1></div>
	<hr width="500">
	<div>
	<button onclick="getLocation()">Try It</button>
	<p id="demo"></p>
		<form id="frm" name="frm" action="" method=post>
			<div>
				<label for="id">id</label><input name=id id="id">
			</div>
			<div>
			PW: <input type="password" id="pw" name="pw" placeholder="비밀번호를 입력하세요" >
			</div>
			<div>
			Role: <label><input type="radio" id="role1" name="role" value="admin">admin</label>
					<label><input type="radio" id="role2" name="role" value="user" checked>user</label>
			</div>
			<div>
			JOB: 
				<select id="job" name="job">
					<option value="" selected>선택</option>
					<option value="개발자">개발자</option>
					<option value="자영업">자영업</option>
					<option value="직장인">직장인</option>
					<option value="학생">학생</option>
					<option value="기타">기타</option>
				</select>
			</div>
			<div>
			가입동기: <textarea id="reason" name="reason" rows="4" cols="50"></textarea>
			</div>
			<div>
				Hobby:
					<label><input type="checkbox" id="hobby1" name="hobby" value="음악감상">음악감상</label>
					<label><input type="checkbox" id="hobby2" name="hobby" value="운동">운동</label>
					<label><input type="checkbox" id="hobby3" name="hobby" value="요리">요리</label>
					<label><input type="checkbox" id="hobby4" name="hobby" value="등산">등산</label>
					<label><input type="checkbox" id="hobby5" name="hobby" value="게임">게임</label>
			</div>
			<div>
				주소: <input type="text" id="adr" name="adr" pattern="[A-Za-z]{3}">
						<button type="button" id="search" name="search" onclick="#">검색</button>				
			</div>
			<hr width="500">
			<div>
				<button type="reset">초기화</button>
				<button type="button" onclick=inputCheck()>등록</button>
			</div>
		</form>
	</div>
</div>
</body>
</html>