<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"
	import="com.starbucks.dao.noticeDAO, com.starbucks.vo.noticeVO"
%>
<%
	noticeVO vo = new noticeVO();

	String title = request.getParameter("title");
	String content = request.getParameter("content");
	String nid = request.getParameter("nid");
	
	vo.setTitle(title);
	vo.setContent(content);
	vo.setNid(nid);
	
	noticeDAO ndao = new noticeDAO();
	
	if ( ndao.getUpdateResult(vo) ) {
		response.sendRedirect("admin_notice_content.jsp?nid="+nid);
	} else {
		out.print("<script>alert('글수정 실패');</script>");
		out.print("<script>location.replace('http://localhost:9000/starbucks/admin/notice/admin_notice.jsp');</script>");
	}
	
	ndao.close();
%>