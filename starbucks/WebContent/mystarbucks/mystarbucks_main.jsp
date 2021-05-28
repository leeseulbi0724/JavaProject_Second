<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
	section {
		text-align:center;
	}
	div.title>img {
		width:100%;
		background-size : cover;
	}
	div.icon_home {
		position:relative; bottom:50px; left:510px; color:white; font-size:12px;
	}
	div.icon_home a {
		text-decoration:none; color:white;
	}
	div.icon_home a:hover { text-decoration:underline; }
	
	div.button { position:relative; left:480px; top:60px; display:inline-block; text-align:left; margin-bottom:100px; }
	div.button>div { border-top:2px solid black; width:220px;  }
	div.button a, div.button p { text-decoration:none; color:#444; font-weight:bold; font-size:14px;  }
	div.button a:hover, div.button p:nth-child(4):hover { text-decoration:underline; color:green; }
	div.button p { padding:10px; margin:0; }
	div.button p:nth-child(4) { cursor:pointer; }
	div.button>div.line { border-top:1px solid lightgray; width:220px; margin:0; }
	div.button img { margin-left:100px; padding:0; }
	
	#d_menu { display:none; border:none; }
	#d_menu li { font-size:12px; margin:5px 5px 0 10px; list-style-type:none; padding:0; }
	#d_menu li:last-child { margin-bottom:10px; }
	#d_menu a:hover { color:black; }
	
</style>
<script src="//code.jquery.com/jquery-3.3.1.min.js"></script>
<script>
	$(document).ready(function() {
		
		$("#Drop").click(function() {
			var name = $(".img").attr("id");
			
			if (name == "img_down") {
				$("#d_menu").slideDown();
				$(".img").attr("src","http://localhost:9000/starbucks/images/m_up.PNG")
				$(".img").attr("id","img_up");				
			} else {
				$("#d_menu").slideUp();
				$(".img").attr("src","http://localhost:9000/starbucks/images/m_down.PNG")
				$(".img").attr("id","img_down");			
			}
		});
	});
</script>
</head>
<body>
	<!--  header -->
	<jsp:include page ="../header.jsp"></jsp:include>
	
	<!--  content -->
	<section>
		<div class="title"><img src="http://localhost:9000/starbucks/images/mystarbucks_bg.PNG"></div>
		<div class="icon_home">
			<a href="http://localhost:9000/starbucks/index.jsp"><img src="http://localhost:9000/starbucks/images/icon_home.png" ></a>
			<img src="http://localhost:9000/starbucks/images/icon_arrow_w.png" >
			<a href="http://localhost:9000/starbucks/service/mystarbucks_main.jsp">My Starbucks</a>
		</div>
	</section>
	<section>
		<div class="button">
			<div></div>
			<p><a href="#">My 고객의 소리</a></p>
			<div class="line"></div>
			<p id="Drop">개인정보관리<img src="http://localhost:9000/starbucks/images/m_down.PNG" id="img_down" class="img"></p>
			<div id="d_menu">
				<a href="#"><li>· 개인정보확인 및 수정</li></a>
				<a href="#"><li>· 회원 탈퇴</li></a>
				<a href="http://localhost:9000/starbucks/mystarbucks/mystarbucks_pass.jsp"><li>· 비밀번호 변경</li></a>
			</div>
			<div class="line"></div>
		</div>
	</section>
	
	<!-- footer -->
	<jsp:include page ="../footer.jsp"></jsp:include>
</body>
</html>