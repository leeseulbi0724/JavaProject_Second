<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>관리자 페이지</title>
<style>	
	.content_user { text-align:center; width:100%; }
	
	.content_user ul { border:1px solid lightgray; display:inline-block; font-size:13px; float:left; padding:5px; width:200px; clear:left; }
	.content_user div.text { 
		text-align:left; font-size:13.5px; font-weight:bold; border:1px solid lightgray;
		padding:5px 0 5px 15px;
	}
	.content_user div.search { text-align:left; padding: 10px; border:1px solid lightgray; }
	.content_user div.search input { width:150px; height:12px; }
	/*.content_user div.search button { background-color:rgb(56,57,78); color:white; border:1px solid lightgray; cursor:pointer; }*/
	.content_user div.center { 
		border:1px solid lightgray; height:500px; float:left; width:1200px;
	 }
	 .content_user section { float:left; }

	.submenu { background-color:rgb(243,243,243); color:black; display:inline-block; list-style-type:none; padding:0; margin:0; }
	
	.table { text-align:center; margin:15px; width:1150px; font-size:13px; }
	.table, .table th, .table td { 
		border:1px solid lightgray;
 		border-collapse:collapse;
 	 }
 	 .table thead tr:first-child { background-color:rgb(237,237,237); }
 	 .table tr th { padding:5px 0 5px 0; }
	
</style>

<script src="../../js/jquery-3.6.0.min.js"></script>
<script>
	$(document).ready(function() {	
		  $("#mykeyword").on("keyup", function() {
		        var value = $(this).val().toLowerCase();
		        $(".tbody tr").filter(function() {
		            $(this).toggle($(this).text().toLowerCase().indexOf(value) > -1)
		        });
		    });	
		  
		  
		  $("span").click(function() {
			  location.replace("http://localhost:9000/starbucks/admin/user/admin_user.jsp"); 
		  });
	});
</script>

</head>
<body>
<!-- header -->
<jsp:include page = "../admin_header.jsp"></jsp:include>

<!-- 회원 관리 -->
<div class="content_user" id="content">
<section>
	<ul class="submenu">
		<li>전체 회원 정보</li>
	</ul>
</section>
<section>
	<div class="text">Home > <span>회원 관리</span></div>
	<div class="search">
		<select>
			<option value="id">TABLE</option>
		</select>
		<input type="text" id="mykeyword">
	</div>
	<div class="center" style="overflow:scroll">
		<table border=1 class="table" >
			<thead>
				<tr>
					<th>NO</th>
					<th>아이디</th>
					<th>이름</th>
					<th>생년월일</th>
					<th>휴대폰번호</th>
					<th>이메일</th>
					<th>닉네임</th>
					<th>가입일자</th>
				</tr>
			</thead>
			<tbody class="tbody">
				<tr>
					<td>1</td>
					<td>dltmfql</td>
					<td>이슬비</td>
					<td>1998-07-24</td>
					<td>010-9369-2489</td>
					<td>tmfql4428@naver.com</td>
					<td>슬비</td>
					<td>2021-06-03</td>
				</tr>
				<tr>
					<td>1</td>
					<td>dltmfql</td>
					<td>이슬비</td>
					<td>1998-07-24</td>
					<td>010-9369-2489</td>
					<td>tmfql4428@naver.com</td>
					<td>슬비</td>
				</tr>
				<tr>
					<td>1</td>
					<td>dltmfql</td>
					<td>이슬비</td>
					<td>1998-07-24</td>
					<td>010-9369-2489</td>
					<td>tmfql4428@naver.com</td>
					<td>슬비</td>
				</tr>
				<tr>
					<td>1</td>
					<td>dltmfql</td>
					<td>이슬비</td>
					<td>1998-07-24</td>
					<td>010-9369-2489</td>
					<td>tmfql4428@naver.com</td>
					<td>슬비</td>
				</tr>
				<tr>
					<td>2</td>
					<td>test</td>
					<td>테스트</td>
					<td>테스트</td>
					<td>테스트</td>
					<td>테스트@naver.com</td>
					<td>테스트</td>
				</tr>
				<tr>
					<td>2</td>
					<td>test</td>
					<td>테스트</td>
					<td>테스트</td>
					<td>테스트</td>
					<td>테스트@naver.com</td>
					<td>테스트</td>
				</tr>
				<tr>
					<td>2</td>
					<td>test</td>
					<td>테스트</td>
					<td>테스트</td>
					<td>테스트</td>
					<td>테스트@naver.com</td>
					<td>테스트</td>
				</tr>
				<tr>
					<td>2</td>
					<td>test</td>
					<td>테스트</td>
					<td>테스트</td>
					<td>테스트</td>
					<td>테스트@naver.com</td>
					<td>테스트</td>
				</tr>
				<tr>
					<td>2</td>
					<td>test</td>
					<td>테스트</td>
					<td>테스트</td>
					<td>테스트</td>
					<td>테스트@naver.com</td>
					<td>테스트</td>
				</tr>
				<tr>
					<td>2</td>
					<td>test</td>
					<td>테스트</td>
					<td>테스트</td>
					<td>테스트</td>
					<td>테스트@naver.com</td>
					<td>테스트</td>
				</tr>
				<tr>
					<td>2</td>
					<td>test</td>
					<td>테스트</td>
					<td>테스트</td>
					<td>테스트</td>
					<td>테스트@naver.com</td>
					<td>테스트</td>
				</tr>
				<tr>
					<td>2</td>
					<td>test</td>
					<td>테스트</td>
					<td>테스트</td>
					<td>테스트</td>
					<td>테스트@naver.com</td>
					<td>테스트</td>
				</tr>
				<tr>
					<td>2</td>
					<td>test</td>
					<td>테스트</td>
					<td>테스트</td>
					<td>테스트</td>
					<td>테스트@naver.com</td>
					<td>테스트</td>
				</tr>
				<tr>
					<td>2</td>
					<td>test</td>
					<td>테스트</td>
					<td>테스트</td>
					<td>테스트</td>
					<td>테스트@naver.com</td>
					<td>테스트</td>
				</tr>
				<tr>
					<td>2</td>
					<td>test</td>
					<td>테스트</td>
					<td>테스트</td>
					<td>테스트</td>
					<td>테스트@naver.com</td>
					<td>테스트</td>
				</tr>
				<tr>
					<td>2</td>
					<td>test</td>
					<td>테스트</td>
					<td>테스트</td>
					<td>테스트</td>
					<td>테스트@naver.com</td>
					<td>테스트</td>
				</tr>
				<tr>
					<td>2</td>
					<td>test</td>
					<td>테스트</td>
					<td>테스트</td>
					<td>테스트</td>
					<td>테스트@naver.com</td>
					<td>테스트</td>
				</tr>
				<tr>
					<td>2</td>
					<td>test</td>
					<td>테스트</td>
					<td>테스트</td>
					<td>테스트</td>
					<td>테스트@naver.com</td>
					<td>테스트</td>
				</tr>
				<tr>
					<td>2</td>
					<td>test</td>
					<td>테스트</td>
					<td>테스트</td>
					<td>테스트</td>
					<td>테스트@naver.com</td>
					<td>테스트</td>
				</tr>
				<tr>
					<td>2</td>
					<td>test</td>
					<td>테스트</td>
					<td>테스트</td>
					<td>테스트</td>
					<td>테스트@naver.com</td>
					<td>테스트</td>
				</tr>
				<tr>
					<td>2</td>
					<td>test</td>
					<td>테스트</td>
					<td>테스트</td>
					<td>테스트</td>
					<td>테스트@naver.com</td>
					<td>테스트</td>
				</tr>
				<tr>
					<td>2</td>
					<td>test</td>
					<td>테스트</td>
					<td>테스트</td>
					<td>테스트</td>
					<td>테스트@naver.com</td>
					<td>테스트</td>
				</tr>
				<tr>
					<td>2</td>
					<td>test</td>
					<td>테스트</td>
					<td>테스트</td>
					<td>테스트</td>
					<td>테스트@naver.com</td>
					<td>테스트</td>
				</tr>
				<tr>
					<td>2</td>
					<td>test</td>
					<td>테스트</td>
					<td>테스트</td>
					<td>테스트</td>
					<td>테스트@naver.com</td>
					<td>테스트</td>
				</tr>
				<tr>
					<td>2</td>
					<td>test</td>
					<td>테스트</td>
					<td>테스트</td>
					<td>테스트</td>
					<td>테스트@naver.com</td>
					<td>테스트</td>
				</tr>
				<tr>
					<td>2</td>
					<td>test</td>
					<td>테스트</td>
					<td>테스트</td>
					<td>테스트</td>
					<td>테스트@naver.com</td>
					<td>테스트</td>
				</tr>
			</tbody>
		</table>
	</div>
</section>
</div>
</body>
</html>