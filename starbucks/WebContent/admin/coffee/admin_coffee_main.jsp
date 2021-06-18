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
 	 
 	 .table td { vertical-align:middle; }
 	  	 
 	 button.btn_style { font-size:10px; }
 	 
 	 .content_coffee div.search { text-align:left; padding: 10px; border:1px solid lightgray; }
	.content_coffee div.search input { width:150px; height:12px; }
	.content_coffee div.search button { background-color:rgb(56,57,78); color:white; border:1px solid lightgray; cursor:pointer; }
	
	#update { float:right; }
	
</style>
<script src="../../js/jquery-3.6.0.min.js"></script>
<script>
$(document).ready(function() {	
	$("#update").click(function() {
		location.replace("http://localhost:9000/starbucks/admin/coffee/admin_coffee_write.jsp");
	})
	
});
</script>
</head>
<body>
	<!-- header -->
	<jsp:include page = "../admin_header.jsp"></jsp:include>

	<!-- 문의 관리 -->
	<div class="content_coffee" id="content">
		<jsp:include page = "admin_coffee_menu.jsp"></jsp:include>
	<section>
		<div class="text">Home > <span>커피 관리</span></div>
		<div class="search">
			<select>
				<option value="id">이름</option>
			</select>
			<input type="text" id="search_input">
			<button id="search">검색</button>
			<button id="update">커피등록</button>
		</div>
		<div class="center" style="overflow:scroll">
		<form name="comment" action="admin_question_comment.jsp" method="post">
			<table border=1 class="table" >
			<thead>
				<tr>
					<th>이미지</th>
					<th>종류</th>
					<th>분류</th>
					<th>이름</th>
				</tr>
			</thead>
			<tbody class="tbody">
			<tr>
				<td><img src="http://localhost:9000/starbucks/images/20150809120449047.jpg" width=50 height=50></td>
				<td>원두</td>
				<td>블론드로스트</td>
				<td>베란다 블렌드</td>
			</tr>
			<tr>
				<td><img src="http://localhost:9000/starbucks/images/20150809120449047.jpg" width=50 height=50></td>
				<td>원두</td>
				<td>블론드로스트</td>
				<td>베란다 블렌드</td>
			</tr>
			<tr>
				<td><img src="http://localhost:9000/starbucks/images/20150809120449047.jpg" width=50 height=50></td>
				<td>원두</td>
				<td>블론드로스트</td>
				<td>베란다 블렌드</td>
			</tr>
			<tr>
				<td><img src="http://localhost:9000/starbucks/images/20150809120449047.jpg" width=50 height=50></td>
				<td>원두</td>
				<td>블론드로스트</td>
				<td>베란다 블렌드</td>
			</tr>
			<tr>
				<td><img src="http://localhost:9000/starbucks/images/20150809120449047.jpg" width=50 height=50></td>
				<td>원두</td>
				<td>블론드로스트</td>
				<td>베란다 블렌드</td>
			</tr>
			<tr>
				<td><img src="http://localhost:9000/starbucks/images/20150809120449047.jpg" width=50 height=50></td>
				<td>원두</td>
				<td>블론드로스트</td>
				<td>베란다 블렌드</td>
			</tr>
			<tr>
				<td><img src="http://localhost:9000/starbucks/images/20150809120449047.jpg" width=50 height=50></td>
				<td>원두</td>
				<td>블론드로스트</td>
				<td>베란다 블렌드</td>
			</tr>
			<tr>
				<td><img src="http://localhost:9000/starbucks/images/20150809120449047.jpg" width=50 height=50></td>
				<td>원두</td>
				<td>블론드로스트</td>
				<td>베란다 블렌드</td>
			</tr>
			</tbody>
		</table>
		</form>
		</div>
	</section>	
	</div>
</body>
</html>