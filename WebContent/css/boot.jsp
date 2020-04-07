<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>

</style>
</head>
<body>
<div class="container">
  <!-- Content here -->
  <!-- help start  -->
  <div class="alert alert-success" role="alert">
  A simple success alert—check it out!
  <button type="button" class="btn btn-primary">
  Notifications <span class="badge badge-light">4</span>
</button>
</div>
<!-- help end  -->

	<div class="row align-items-center">
	<!-- 목록 시작 -->
		<div class="col-xl-6 col-md-12 col-sm-12 border bg-danger px-5 table-responsive">
				<table class="table table-hover table-bordered table-sm bg-warning	">
					<thead class="thead-dark">
						<tr>
							<th>번호</th>
							<th>이름</th>
							<th>설명</th>
						</tr>
					</thead>
					<tbody>
						<tr>
							<td>4</td>
							<td>5</td>
							<td class="text-truncate" style="max-width: 10px;">설명하는칸입니다 설명하는칸입니다 설명하는칸입니다 설명하는칸입니다 설명하는칸입니다 설명하는칸입니다</td>
						</tr>
						<tr>
							<td>7</td>
							<td>8</td>
							<td>9</td>
						</tr>
						<tr>
							<td>10</td>
							<td>11</td>
							<td>12</td>
						</tr>
					</tbody>
				</table>
				<!--  row col col , mr-auto 써서 가운데로 묶을 수 있다 -->
				<nav aria-label="Page navigation example">
					<ul class="pagination">
						<li class="page-item"><a class="page-link" href="#">Previous</a></li>
						<li class="page-item"><a class="page-link" href="#">1</a></li>
						<li class="page-item"><a class="page-link" href="#">2</a></li>
						<li class="page-item"><a class="page-link" href="#">3</a></li>
						<li class="page-item"><a class="page-link" href="#">Next</a></li>
					</ul>
				</nav>
			</div>
			<!-- 목록 시작 -->
			
			<!-- 등록 폼 시작 -->
			<div class="col-xl-6 col-md-12 col-sm-12 border">
				<!-- 버튼 그룹 시작-->
				<div class="col-12" align="center">
					<button class="btn btn-outline-primary">등록</button>
					<span class="btn btn-outline-success">수정</span> 
					<a href="#" class="btn btn-outline-dark">삭제</a>
				</div>
				<!-- 버튼 그룹 시작-->
				<!-- 등록 폼 시작 -->
				<form id="frm" name="frm" action="" method=post>
					<div class="row form-group">
						<label for="id" class="col-2">ID</label>
						<div class="col-8">
							<input type="text" name=id id="id" class="form-control">
						</div>
					</div>
					<div class="row form-group">
						<label for="pw" class="col-2">PW</label>
						<div class="col-8">
							<input type="password" id="pw" name="pw" placeholder="비밀번호를 입력하세요" required class="form-control">
						</div>
					</div>
					
					<div class="row form-group" >
						<label for="role" class="col-2">ROLE</label>
						<div class="form-check form-check-inline">
							<label for="admin" class="col-12">admin</label> 
							<input	type="radio" id="admin" name="ROLE" value="admin" 	class="form-check-input">
						</div>
						<div class="form-check form-check-inline">
							<label for="user" class="col-12">user</label>
							 <input type="radio"  id="user" name="ROLE" value="user" class="form-check-input">
						</div>
					</div>
					
					<div class="form-check form-check-inline">
					  <input class="form-check-input" type="radio" name="inlineRadioOptions" id="inlineRadio1" value="option1">
					  <label class="form-check-label" for="inlineRadio1">1</label>
					</div>
					<div class="form-check form-check-inline">
					  <input class="form-check-input" type="radio" name="inlineRadioOptions" id="inlineRadio2" value="option2">
					  <label class="form-check-label" for="inlineRadio2">2</label>
					</div>
					<div class="form-check form-check-inline">
					  <input class="form-check-input" type="radio" name="inlineRadioOptions" id="inlineRadio3" value="option3" disabled>
					  <label class="form-check-label" for="inlineRadio3">3 (disabled)</label>
					</div>

					<div>
						JOB: <select id="job" name="job">
							<option value="개발자" selected>개발자</option>
							<option value="자영업">자영업</option>
							<option value="직장인">직장인</option>
							<option value="학생">학생</option>
							<option value="기타">기타</option>
						</select>
					</div>
					<div>
						가입동기:
						<textarea id="reason" name="reason" rows="4" cols="50"></textarea>
					</div>
					<div>
						Hobby: <label>
						<input type="checkbox" id="hobby1"
							name="hobby" value="음악감상">음악감상</label> <label><input
							type="checkbox" id="hobby2" name="hobby" value="운동">운동</label> <label><input
							type="checkbox" id="hobby3" name="hobby" value="요리">요리</label> <label><input
							type="checkbox" id="hobby4" name="hobby" value="등산">등산</label> <label><input
							type="checkbox" id="hobby5" name="hobby" value="게임">게임</label>
					</div>
					<div>
						주소: <input type="text" id="adr" name="adr" pattern="[A-Za-z]{3}">
						<button type="button" id="search" name="search" onclick="#">검색</button>
					</div>
					<hr width="500">
					<div>
						<button type="reset">초기화</button>
						<button type="submit">등록</button>
					</div>
				</form>
			</div>
			<!-- 등록 폼 끝 -->		
	</div>
</div>
</body>
</html>