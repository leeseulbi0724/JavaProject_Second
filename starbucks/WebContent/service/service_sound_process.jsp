<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"
	import="com.starbucks.dao.*, com.starbucks.vo.*"
%>
<%
	serviceVO vo = new serviceVO();

	vo.setId(request.getParameter("id"));
	vo.setCategory(request.getParameter("category"));
	vo.setEmail1(request.getParameter("email1"));
	vo.setEmail2(request.getParameter("email2"));
	vo.setHp1(request.getParameter("hp1"));
	vo.setHp2(request.getParameter("hp2"));
	vo.setHp3(request.getParameter("hp3"));
	vo.setPlace(request.getParameter("place"));
	vo.setTitle(request.getParameter("title"));
	vo.setContent(request.getParameter("content"));
	
	serviceDAO dao = new serviceDAO();
	boolean result = dao.getInsertResult(vo);
	
	if (result) {
		response.sendRedirect("http://localhost:9000/starbucks/mystarbucks/mystarbucks_sound.jsp");
	} else {
		out.print("<script>alert('문의등록 실패');</script>");
		out.print("<script>location.replace('http://localhost:9000/starbucks/service/service_main.jsp');</script>");
	}
%>