<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
 	 .table tr th { padding:5px 0 5px 0; }
 	 
 	 #one input { text-align:center; }
 	 
 	 button.btn_style { background-color:rgb(56,57,78); color:white; border:1px solid lightgray; cursor:pointer; margin-bottom:10px; }
 	 
 	 #one { width:400px; margin-bottom:0; }
	#one input { margin:10px 10px; }
	#one td:first-child input { width:100px; }
	#one td:nth-child(2) input { width:40px; }
	#one td:last-child input { width:70px; }
	
	#two th { width:128px; }	
	#two tr:first-child input { width:900px; }
	#two { margin-top:0; }
</style>
<script src="../../js/jquery-3.6.0.min.js"></script>
<script>
	$(document).ready(function() {
		$(".span1").click(function() {
			location.replace("http://localhost:9000/starbucks/admin/question/admin_question.jsp");
		});
		
		$(".span2").click(function() {
			location.replace("http://localhost:9000/starbucks/admin/question/admin_question_comment.jsp");
		});
	});
</script>
</head>
<body>
<!-- header -->
	<jsp:include page = "../admin_header.jsp"></jsp:include>

	<!-- 문의 관리 -->
	<div class="content_question" id="content">
		<jsp:include page = "admin_question_menu.jsp"></jsp:include>
		<section>
			<div class="text">Home > <span class="span1">문의사항 관리</span> > <span class="span2">답변하기</span></div>
			<div class="center" style="overflow:scroll">
				<table class="table" id="one">
					<tr>
						<th>ID</th>
						<th>유형</th>
						<th>메일</th>
						<th>연락처</th>
						<th>장소</th>
					</tr>
					<tr>						
						<td><input type="text" id ="cid" value="tmfql4428" disabled ></td>
						<td><input type="text" id ="ccategory" value="문의" disabled ></td>
						<td><input type="text" id ="cmail" value="tmfql4428@naver.com" disabled ></td>
						<td><input type="text" id ="chp" value="010-9369-2489" disabled ></td>
						<td><input type="text" id ="cplace" value="매장방문" disabled ></td>
					</tr>
				</table>
				<table border=1 class="table"  id="two">
					<tr>
						<th>제목</th>
						<td colspan="4"><input type="text" id ="ctitle" value="문의사항있어요" disabled ></td>
					</tr>
					<tr>
						<th>내용</th>
						<td colspan="4"><textarea class="content" disabled>내용</textarea></td>
					</tr>
					<tr>
						<th>답변</th>
						<td colspan="4"><textarea  class="comment" ></textarea></td>
					</tr>
				</table>
				<button type="button"  class="btn_style">답변완료</button>
				<button type="reset" class="btn_style">답변취소</button>
			</div>
		</section>
	</div>
</body>
</html>