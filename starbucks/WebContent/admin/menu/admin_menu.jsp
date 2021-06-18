<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>문의관리 | 관리자 페이지</title>
<style>
	.table { text-align:center; margin:15px; width:1150px; font-size:13px; }
	.table, .table th, .table td { 
		border:1px solid lightgray;
 		border-collapse:collapse;
 	 }
 	 .table thead tr:first-child { background-color:rgb(237,237,237); }
 	 .table tr th { padding:5px 0 5px 0; }
 	 
 	 button.btn_style { font-size:10px; }
 	 
 	 .content_menu div.search { text-align:left; padding: 10px; border:1px solid lightgray; }
	.content_menu div.search input { width:150px; height:12px; }
	.content_menu div.search button { background-color:rgb(56,57,78); color:white; border:1px solid lightgray; cursor:pointer; }
	
</style>
<script src="../../js/jquery-3.6.0.min.js"></script>
<script>
$(document).ready(function() {	
	
	
});
</script>
</head>
<body>
	<!-- header -->
	<jsp:include page = "../admin_header.jsp"></jsp:include>

	<!-- 문의 관리 -->
	<div class="content_menu" id="content">
		<jsp:include page = "admin_menu_menu.jsp"></jsp:include>
	<section>
		<div class="text">Home > <span>메뉴 관리</span></div>
		<div class="search">
			<select>
				<option value="id">이름</option>
			</select>
			<input type="text" id="search_input">
			<button id="search">검색</button>
		</div>
		<div class="center" style="overflow:scroll">
		<form name="comment" action="admin_question_comment.jsp" method="post">
			<table border=1 class="table" >
			<thead>
				<tr>
					<th>NO</th>
					<th>종류</th>
					<th>분류</th>
					<th>이름</th>
				</tr>
			</thead>
			<tbody class="tbody">
			
			</tbody>
		</table>
		</form>
		</div>
	</section>	
	</div>
</body>
</html>