<%@ page language="java" contentType="text/html; charset=UTF-8"  pageEncoding="UTF-8" %>
	
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>관리자 페이지</title>
<style>	
	.table { text-align:center; margin:20px 15px; width:1150px; font-size:13px; }	
	
	#two, #two th, #two td { 
		border:1px solid lightgray;
 		border-collapse:collapse;
 	 }
 	 #one { border-top:1px solid lightgray; border-left:1px solid lightgray; border-right:1px solid lightgray; border-collapse:collapse; }
 	 #one th, #one td { border-right:1px solid lightgray; }
 	 
 	 #two td { padding:10px 0 10px 20px; text-align:left; }
 	 .table #ctitle, .table textarea, table #ccategory { border:1px solid lightgray; }
 	 .table th { background-color:rgb(237,237,237); }
 	 .table textarea.content { width:90%; height:300px; }
 	 .table textarea.comment { width:90%; height:200px; }
 	 .table tr th { padding:5px 0 5px 0; text-align:center; vertical-align:middle;}
 	 
 	 #one input { text-align:center; }
 	 
 	 button.btn_style { background-color:rgb(56,57,78); color:white; border:1px solid lightgray; cursor:pointer; margin-bottom:10px; }
 	 
 	 #one { width:1000px; margin-bottom:0; }
 	 #one td { width:100px; }
	
	#two th { width:128px; }	
	#two tr:first-child input { width:900px; }
	#two { margin-top:0; }

	
</style>
<script src="../../js/jquery-3.6.0.min.js"></script>
<script>
$(document).ready(function() {
		$(".span1").click(function() {
			location.replace("http://localhost:9000/starbucks/admin/menu/admin_menu_main.jsp");
		});				
	
		
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
			<div class="text">Home > <span class="span1">메뉴 관리</span> > <span class="span2">메뉴 등록</span></div>
			<div class="center" style="overflow:scroll">
			<form>
				<table class="table" id="one">
					<tr>
						<th>분류</th>
						<th>서브분류</th>						
						<th>카테고리</th>						
						<th>카테고리</th>						
						<th>카테고리</th>						
						<th>카테고리</th>						
						<th>카테고리</th>						
						<th>카테고리</th>						
						<th>카테고리</th>						
					</tr>
					<tr>						
						<td>
							<select>
								<option>분류
								<option>분류
								<option>분류
							</select>
						</td>
						<td>
						<select>
								<option>분류
								<option>분류
								<option>분류
							</select>
						</td>
						<td>내용</td>
						<td>내용</td>
						<td>내용</td>
						<td>내용</td>
						<td>내용</td>
						<td>내용</td>
						<td>내용</td>
					</tr>
				</table>
				<table border=1 class="table"  id="two">
					<tr>
						<th>이름</th>
						<td colspan="4"><input type="text" id ="ctitle" ></td>
					</tr>
					<tr>
						<th>내용</th>
						<td colspan="4">
							<textarea class="content" ></textarea>											
						</td>
					</tr>
					<tr>						
						<th>이미지</th>
						<td><input type="file"></td>
					</tr>
				</table>
				<button type="button"  class="btn_style">등록</button>
				</form>
			</div>
		</section>
	</div>
</body>
</html>