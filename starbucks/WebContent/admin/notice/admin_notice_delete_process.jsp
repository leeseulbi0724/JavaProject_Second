<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"
		import = "com.starbucks.dao.noticeDAO,com.starbucks.vo.noticeVO,java.sql.*,java.util.*"
%>
<%
	noticeDAO ndao = new noticeDAO();
	String nid[] = request.getParameterValues("select");
	ArrayList<String> nlist = new ArrayList<String>();	
	for ( int i=0; i<nid.length; i++) {
		nlist.add(i, nid[i]);		
	}
	
	if ( ndao.getDeleteResult(nlist) ) {
		response.sendRedirect("admin_notice.jsp");
	} else {
		out.print("<script>alert('글삭제 실패');</script>");
		out.print("<script>location.replace('http://localhost:9000/starbucks/admin/notice/admin_notice.jsp');</script>");
	}
	ndao.close();
	
%>