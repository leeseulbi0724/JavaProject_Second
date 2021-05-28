<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
	ul { list-style-type:none; background-color:black; text-align:center; padding:10px; }
	li { display:inline-block; background-color:black; color:white; font-size:18px; cursor:pointer; }
	ul div { display:inline-block; border-left:1px solid white; width:1px; height:18px; margin:0 20px 0 20px; }
	
	div.content { text-align:center; width:100%; }
	section { border:1px solid; display:inline-block; width:70%; height:500px; margin-top:50px; }
</style>
</head>
<body>
	<ul>
		<li>회원 관리</li><div></div>
		<li>공지사항 관리</li><div></div>
		<li>문의 관리</li>
	</ul>
	<div class="content">
		<section>내용</section>
	</div>
</body>
</html>