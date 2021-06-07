<%@ page language="java" contentType="text/html; charset=UTF-8"  pageEncoding="UTF-8"
	import = "com.starbucks.dao.noticeDAO,com.starbucks.vo.noticeVO,java.sql.*,java.util.*"%>  
	<%
  		noticeDAO ndao = new noticeDAO();
    	noticeVO vo = new noticeVO();
    	
    	String title = request.getParameter("ntitle");
    	String content = request.getParameter("ncontent");   	
    	
    	vo.setTitle(title);
    	vo.setContent(content);
    	
    	if (ndao.getInsertResult(vo)) {
    		response.sendRedirect("admin_notice.jsp");
    	} else {
    		out.print("<script>alert('글쓰기 실패');</script>");
    		out.print("<script>location.replace('http://localhost:9000/starbucks/admin/notice/admin_notice.jsp');</script>");
    	}
    	
    	ndao.close();
  	%>