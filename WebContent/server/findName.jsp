<%@page import="net.sf.json.JSONObject"%>
<%@page import="review.emp.EmpDTO"%>
<%@page import="review.emp.EmpDAO" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<% 
	//EmpDAO dao = EmpDAO.getInstance();		//->싱글톤 사용시 new~ 할필요 없다
	int id = Integer.parseInt(request.getParameter("id"));
	EmpDTO dto = EmpDAO.getInstance().getEmp(id);
	//List ==> "[   ]"
	// DTO, Map ==> "{     }"   자동으로 형식을 바꿔주는 기능 있다.
	//  ->JSON Librariy 설치
	
	out.print( JSONObject.fromObject(dto).toString() );
%>

{ "first_name" : "<%=dto.getFirst_name() %>",
  "last_name" : " <%=dto.getLast_name() %>"
 }