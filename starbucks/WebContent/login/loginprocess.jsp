<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="com.starbucks.dao.*, com.starbucks.vo.*" %>

<%
String id = request.getParameter("id");
	String pass = request.getParameter("pass");
	
	UserDAO dao = new UserDAO();
	boolean result = dao.getLoginResult(id, pass);
	
	if(result){
		response.sendRedirect("../mystarbucks/mystarbucks_main.jsp");
	}else{
		response.sendRedirect("find_id.jsp");	
	}
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

</body>
</html>