<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
	.content_question ul { border:1px solid lightgray; display:inline-block; font-size:13px; float:left; padding:5px; width:200px; clear:left; }
	.content_question div.text { 
		text-align:left; font-size:13.5px; font-weight:bold; border:1px solid lightgray;
		padding:5px 0 5px 15px;
	}
	 .content_question section { float:left; }	 
	
	.submenu { background-color:rgb(243,243,243); color:black; display:inline-block; list-style-type:none; padding:0; margin:0; }
	
	.content_question { text-align:center; width:100%; }
	
	 .content_question div.center { 
		border:1px solid lightgray; height:500px; float:left; width:1200px;
	 }
</style>
</head>
<body>
		<section>
		<ul class="submenu">
			<li>전체 문의사항</li>
		</ul>
			<ul class="submenu">
			<li>미답변 문의사항</li>
		</ul>
			<ul class="submenu">
			<li>답변완료 문의사항</li>
		</ul>
	</section>
</body>
</html>