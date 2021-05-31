<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>관리자 페이지</title>
<style>
	.table { text-align:center; margin:15px; width:1150px; font-size:13px; }
	.table, .table th, .table td { 
		border:1px solid lightgray;
 		border-collapse:collapse;
 	 }
 	 .table thead tr:first-child { background-color:rgb(237,237,237); }
 	 .table tr th { padding:5px 0 5px 0; }
 	 
 	 button.btn_style { font-size:10px; }
</style>
<script src="../../js/jquery-3.6.0.min.js"></script>
<script>
$(document).ready(function() {
	  function addRemoveClass(theRows){
	         theRows.removeClass("odd even");
	         theRows.filter(":odd").addClass("add");
	         theRows.filter(":even").addClass("even");
	     }
	 var rows = $(".table tr:not(:first)");
	  addRemoveClass(rows);
	
	$(".choice").on("change",function(){
	    var selected = $('.choice').val();
	    if(selected != "all"){
	        rows.filter(":has(td:nth-child(2):contains("+selected+"))").show();
	        rows.not(":has(td:nth-child(2):contains("+selected+"))").hide();
	    }else{
	        rows.show();
	        addRemoveClass(rows);
	    }  
 	 });
	
	$("#com_btn").click(function() {
		var name = $("#com_btn").attr("value");
		
		if (name == "no") {
			location.href = "http://localhost:9000/starbucks/admin/question/admin_question_comment.jsp";
		}
	});
	
	$("span").click(function() {
		location.replace("http://localhost:9000/starbucks/admin/question/admin_question.jsp");
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
		<div class="text">Home > <span>문의사항 관리</span></div>
		<div class="center" style="overflow:scroll">
			<table border=1 class="table" >
			<thead>
				<tr>
					<th>NO</th>
					<th>
					<select class="choice">
						<option value="all">전체
						<option value="문의">문의
						<option value="칭찬">칭찬
						<option value="제안">제안
						<option value="불만">불만
					</select>
					</th>
					<th>작성자</th>
					<th>제목</th>
					<th>날짜</th>
					<th>답변여부</th>
				</tr>
			</thead>
			<tbody class="tbody">
				<tr>
					<td>1</td>
					<td>문의</td>
					<td>dltmfql</td>
					<td>문의제목</td>
					<td>2021-05-29</td>
					<td><button type="button" class="btn_style" value="no" id="com_btn">답변하기</button></td>
				</tr>
				<tr>
					<td>1</td>
					<td>제안</td>
					<td>dltmfql</td>
					<td>문의제목</td>
					<td>2021-05-29</td>
					<td><button type="button" class="btn_style">답변하기</button></td>
				</tr>
				<tr>
					<td>1</td>
					<td>제안</td>
					<td>dltmfql</td>
					<td>문의제목</td>
					<td>2021-05-29</td>
					<td><button type="button" class="btn_style">답변하기</button></td>
				</tr>
				<tr>
					<td>1</td>
					<td>문의</td>
					<td>dltmfql</td>
					<td>문의제목</td>
					<td>2021-05-29</td>
					<td><button type="button" class="btn_style" disabled>답변완료</button></td>
				</tr>
				<tr>
					<td>1</td>
					<td>문의</td>
					<td>dltmfql</td>
					<td>문의제목</td>
					<td>2021-05-29</td>
					<td><button type="button" class="btn_style">답변하기</button></td>
				</tr>
				<tr>
					<td>1</td>
					<td>불만</td>
					<td>dltmfql</td>
					<td>문의제목</td>
					<td>2021-05-29</td>
					<td><button type="button" class="btn_style">답변하기</button></td>
				</tr>
				<tr>
					<td>1</td>
					<td>칭찬</td>
					<td>dltmfql</td>
					<td>문의제목</td>
					<td>2021-05-29</td>
					<td><button type="button" class="btn_style">답변하기</button></td>
				</tr>
				<tr>
					<td>1</td>
					<td>칭찬</td>
					<td>dltmfql</td>
					<td>문의제목</td>
					<td>2021-05-29</td>
					<td><button type="button" class="btn_style">답변하기</button></td>
				</tr>
				<tr>
					<td>1</td>
					<td>칭찬</td>
					<td>dltmfql</td>
					<td>문의제목</td>
					<td>2021-05-29</td>
					<td><button type="button" class="btn_style">답변하기</button></td>
				</tr>
				<tr>
					<td>1</td>
					<td>칭찬</td>
					<td>dltmfql</td>
					<td>문의제목</td>
					<td>2021-05-29</td>
					<td><button type="button" class="btn_style">답변하기</button></td>
				</tr>
				<tr>
					<td>1</td>
					<td>칭찬</td>
					<td>dltmfql</td>
					<td>문의제목</td>
					<td>2021-05-29</td>
					<td><button type="button" class="btn_style">답변하기</button></td>
				</tr>
				<tr>
					<td>1</td>
					<td>칭찬</td>
					<td>dltmfql</td>
					<td>문의제목</td>
					<td>2021-05-29</td>
					<td><button type="button" class="btn_style">답변하기</button></td>
				</tr>
				<tr>
					<td>1</td>
					<td>칭찬</td>
					<td>dltmfql</td>
					<td>문의제목</td>
					<td>2021-05-29</td>
					<td><button type="button" class="btn_style">답변하기</button></td>
				</tr>
				<tr>
					<td>1</td>
					<td>칭찬</td>
					<td>dltmfql</td>
					<td>문의제목</td>
					<td>2021-05-29</td>
					<td><button type="button" class="btn_style">답변하기</button></td>
				</tr>
				<tr>
					<td>1</td>
					<td>칭찬</td>
					<td>dltmfql</td>
					<td>문의제목</td>
					<td>2021-05-29</td>
					<td><button type="button" class="btn_style">답변하기</button></td>
				</tr>
				<tr>
					<td>1</td>
					<td>칭찬</td>
					<td>dltmfql</td>
					<td>문의제목</td>
					<td>2021-05-29</td>
					<td><button type="button" class="btn_style">답변하기</button></td>
				</tr>
				<tr>
					<td>1</td>
					<td>칭찬</td>
					<td>dltmfql</td>
					<td>문의제목</td>
					<td>2021-05-29</td>
					<td><button type="button" class="btn_style">답변하기</button></td>
				</tr>
				<tr>
					<td>1</td>
					<td>칭찬</td>
					<td>dltmfql</td>
					<td>문의제목</td>
					<td>2021-05-29</td>
					<td><button type="button" class="btn_style">답변하기</button></td>
				</tr>
				<tr>
					<td>1</td>
					<td>칭찬</td>
					<td>dltmfql</td>
					<td>문의제목</td>
					<td>2021-05-29</td>
					<td><button type="button" class="btn_style">답변하기</button></td>
				</tr>
				<tr>
					<td>1</td>
					<td>칭찬</td>
					<td>dltmfql</td>
					<td>문의제목</td>
					<td>2021-05-29</td>
					<td><button type="button" class="btn_style">답변하기</button></td>
				</tr>
				<tr>
					<td>1</td>
					<td>칭찬</td>
					<td>dltmfql</td>
					<td>문의제목</td>
					<td>2021-05-29</td>
					<td><button type="button" class="btn_style">답변하기</button></td>
				</tr>
				<tr>
					<td>1</td>
					<td>칭찬</td>
					<td>dltmfql</td>
					<td>문의제목</td>
					<td>2021-05-29</td>
					<td><button type="button" class="btn_style">답변하기</button></td>
				</tr>
				<tr>
					<td>1</td>
					<td>칭찬</td>
					<td>dltmfql</td>
					<td>문의제목</td>
					<td>2021-05-29</td>
					<td><button type="button" class="btn_style">답변하기</button></td>
				</tr>
			</tbody>
		</table>
		</div>
	</section>
	</div>
</body>
</html>