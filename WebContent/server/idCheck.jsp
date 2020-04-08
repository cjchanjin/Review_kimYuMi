<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%

	String id = request.getParameter("id");
//	Thread.sleep(3000); //3초 대기
	if(id != null) {
		if (id.equals("admin")){
			out.print("중복된 이메일 입니다.");
		} else {
			out.print("사용가능");
		}
	}

%>