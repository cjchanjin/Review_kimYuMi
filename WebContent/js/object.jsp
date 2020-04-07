<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript">
	
	var emp = { employee_id : 100,
					 first_name : 'Steven',
					 last_name : 'King',
					 department : {department_id: 90, 
						 				 department_name : 'Executive'},
					 hobby : ['스키', '볼링', '게임']						 				 
					}
	
	document.write("사원번호:" + emp.employee_id + "<br>");
	document.write("사원명:" + emp.first_name +" "+ emp.last_name + "<br>");
	document.write("부서명:" + emp.department.department_name + "<br>");
	document.write("첫번째 취미:" + emp.hobby[0] + "<br>");

	var emps = [
		  { employee_id : 110, 
		    first_name:'Steven', 
		    last_name : 'King',
		    department : {department_id: 90, department_name : 'Executive'},
		    hobby : ['스키','볼링','게임']
		  },
		  { employee_id : 105, 
		    first_name:'길동', 
		    last_name : 'King',
		    department : {department_id: 90, department_name : 'businessManage'},
		    hobby : ['스키','볼링','게임']
		  },
		  { employee_id : 120, 
		    first_name:'유신', 
		    last_name : 'King',
		    department : {department_id: 90, department_name : 'qualityManage'},
		    hobby : ['스키','볼링','게임']
		 }
	]
	
	//emps 전 사원의 fisrt_name, department_name 출력
	for(i=0; i<emps.length; i++) {
		document.write("사원명:" + emps[i].first_name + "<br>");
		document.write("부서명:" + emps[i].department.department_name + "<br>");
	}
	
</script>


</head>
<body>
<h3>자바스크립트 객체 표현 : {}</h3>
</body>
</html>