<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"
	import="com.starbucks.dao.noticeDAO, com.starbucks.vo.noticeVO"
%>
<%
	String nid = request.getParameter("nid");
	noticeDAO ndao = new noticeDAO();		
	noticeVO vo = ndao.getContentResult(nid);		
	ndao.close();
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>관리자 페이지</title>
<style>
	.table { text-align:center; margin:20px 15px; width:1150px; font-size:13px; }
	.table, .table th, .table td { 
		border:1px solid lightgray;
 		border-collapse:collapse;
 	 }
 	 .table td { padding:10px 0 10px 20px; text-align:left; }
 	 .table input { width:500px; }
 	 .table #title, .table textarea { border:1px solid lightgray; }
 	 .table th { background-color:rgb(237,237,237); }
 	 .table textarea { width:90%; height:300px; }
 	 .table tr th { padding:5px 0 5px 0; }
 	 
 	 button.btn_style { background-color:rgb(56,57,78); color:white; border:1px solid lightgray; cursor:pointer; }
</style>
<script src="../../js/jquery-3.6.0.min.js"></script>
<script>
	$(document).ready(function() {
			$(".span1").click(function() {
				location.replace("http://localhost:9000/starbucks/admin/notice/admin_notice.jsp");
			});
			
			$(".span2").click(function() {
				location.replace("http://localhost:9000/starbucks/admin/notice/admin_notice_content.jsp");
			}); 	
			
			$(".span3").click(function() {
				location.replace("http://localhost:9000/starbucks/admin/notice/admin_notice_update.jsp");
			}); 				
			$("#reset").click(function() {
				location.replace("http://localhost:9000/starbucks/admin/notice/admin_notice.jsp");
			});
			$("#commit").click(function() {
				notice_update.submit();
			});
		});
</script>
</head>
<body>
<!-- header -->
<jsp:include page = "../admin_header.jsp"></jsp:include>

	<div class="content_notice" id="content">
		<jsp:include page = "admin_notice_menu.jsp"></jsp:include>
		<section>
			<div class="text">Home > <span class="span1">공지사항 관리</span> > <span class="span2">상세보기</span> > <span class="span3">수정하기</span></div>
			<div class="center">
			<form name="notice_update" action="admin_notice_update_process.jsp?nid=<%= nid %>" method="post" >
				<table border=1 class="table" >
					<tr>
						<th>제목</th>
						<td><input type="text" name="title" id ="title" value="<%= vo.getTitle() %>"></td>
					</tr>
					<tr>
						<th>내용</th>
						<td><textarea  name="content" id="content"><%= vo.getContent() %></textarea></td>
					</tr>
					<tr>
						<th>파일</th>
						<td><input type="file" name="file"></td>
					</tr>					
				</table>
				<button type="button"  class="btn_style" id ="commit" >수정완료</button>
				<button type="button" class="btn_style" id="reset">수정취소</button>
			</form>
			</div>
		</section>
	</div>
</body>
</html>