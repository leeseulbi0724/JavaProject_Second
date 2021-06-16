<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"
	import="com.starbucks.dao.*, com.starbucks.vo.*, java.util.*"
%>
<%
	String name = (String)session.getAttribute("signedUser");
	
	serviceDAO dao = new serviceDAO();
	
	int before_count = dao.getBeforeCount(name);
	int after_count = dao.getAfterCount(name);
	ArrayList<serviceVO> list = dao.getSelectResult(name);	
	ArrayList<serviceVO> c_list = dao.getCommentResult();	
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>고객의 소리 | Starbucks Coffee Korea</title>
<style>
	section {
		text-align:center;
	}
	div.title {
		width: 100%;
		height: 178px;
		background: url(http://localhost:9000/starbucks/images/ms_sub_ttl_bg.jpg);		
	}
	div.title h1 {
		font: bold 36px Avenir, Arial, georgia;
		color: #ffffff;
		padding-top: 30px;
		position:relative;
		top:60px; right:430px;
	}
	div.icon_home {
		position:relative; bottom:50px; left:450px; color:white; font-size:13px; font-weight:normal;
	}
	div.icon_home a {
		text-decoration:none; color:white;
	}
	div.icon_home a:hover { text-decoration:underline; }
	
	section.btn { height:100px; }
	div.button { 
		display:inline-block; 
		position:relative; 
		left:470px; top:50px;
		text-align:left; 
		border-bottom:1px solid lightgray; 
	}
	div.button>div:first-child { border-top:2px solid black; width:220px;  }
	div.button a { text-decoration:none; color:#444; font-weight:bold; }
	div.button p { font-size:14px; }
	div.button a:hover { text-decoration:underline; color:green; }
	div.button p { padding:10px; margin:0; }
	div.button>div.line { border-top:1px solid lightgray; width:220px; position:absolute; }
	div.button li {
		list-style: none; 		
	}
	div.button li:last-child { margin-bottom:10px; }
	
	.hide { display:none; position:relative; margin-left:10px; font-size:12px; }
	
	div.text { 
		display:inline-block; text-align:left; 
		background-color:rgb(244,244,242);
		width:830px; height:180px; margin-right:250px; margin-top:-50px;
		padding:10px 0 0 0;
	}
	div.text p, div.text li { padding-left:30px; padding-top:10px; }
	div.text p:first-child { font-weight:bold; font-size:15px; }
	div.text p:nth-child(2) { font-size:13px; }
	div.text li { font-size:12px; margin-bottom:20px; color:gray; list-style-type:square; }
	div.text a { 
		background-color:rgb(226,195,131); text-decoration:none; color:black; border:1px solid gray;
		margin:0 30px; font-size:12px; border-radius:4px; padding:5px 10px 5px 10px; font-weight:bold;
		cursor:pointer; position:relative; bottom:20px;
	}
	div.text a:hover { text-decoration:underline; }
	div.text img { margin-left:400px; margin-top:-140px; }

	.down_menu {
		cursor:pointer;		
	}	
	.down_menu img { margin-left:100px; }
	.list>div { width:650px; display:inline-block; margin-right:430px; margin-top:20px; font-family:나눔스퀘어_ac;  }
	.list div>div { 
		border:1px solid lightgray; 
		display:inline-block; 
		width:210px; 
		float:left;
		padding:10px 0; margin:0;
		font-size:14px;
		cursor:pointer;
		font-weight:bold;
	 }
	 .list div>div:first-child { background-color:rgb(0,102,51); color:white; }
	 .list div>div:nth-child(2), .list div>div:last-child { margin-left:-1px; }
	 .list div>div:hover { text-decoration:underline; background-color:rgb(0,102,51); color:white; }
	
	
	.table { text-align:center; margin-bottom:30px; }
	.table div { display:inline-block; }
	.table table { 
		border-collapse: collapse;
		border-spacing: 0; 
		margin-right:270px;
		font-size:15px;
		margin-top:50px;
	}	
	.table tr:first-child { border-top:1px solid; }
	.table tr:last-child { border-bottom:1px solid lightgray; }
	.table tr th { padding:10px 50px; font-family:나눔스퀘어_ac; }
	.table tr th:nth-child(2) { padding:10px 110px; }
	.table tr td { padding:10px 0; font-size:13px; font-family:나눔바른고딕; }
	
	.table td a { text-decoration:none; color:blue; }
	.table td a:hover { text-decoration:underline; }
	
</style>
<script src="../js/jquery-3.6.0.min.js"></script>
<script>
	$(document).ready(function() {
		$(".down_menu").click(function() {
			
			if ($(this).attr("id") == "down") {
				$(".hide").slideDown();
				$(".sbox_arrow_down").attr("src","http://localhost:9000/starbucks/images/sbox_arrow_up.png")
				$(this).attr("id","up");				
			} else {
				$(".hide").slideUp();
				$(".sbox_arrow_down").attr("src","http://localhost:9000/starbucks/images/sbox_arrow_down.png")
				$(this).attr("id","down");
				
			}
		});
		
		
		$("#before").click(function() {
			  var value = "미답변";
		        $("tbody tr").filter(function() {
		            $(this).toggle($(this).text().toLowerCase().indexOf(value) > -1)
		        });
		        $(".list div").css("background-color","white").css("color","black");
		        $("#before").css("background-color","rgb(0,102,51)").css("color","white");
		});
		
		$("#after").click(function() {
			var value ="답변완료";
			$("tbody tr").filter(function() {
	            $(this).toggle($(this).text().toLowerCase().indexOf(value) > -1)
	        });
			 $(".list div").css("background-color","white").css("color","black");
		     $("#after").css("background-color","rgb(0,102,51)").css("color","white");
		});
		
		$("#all").click(function() {
			var value="2021";
			$("tbody tr").filter(function() {
	            $(this).toggle($(this).text().toLowerCase().indexOf(value) > -1)
	        });
			 $(".list div").css("background-color","white").css("color","black");
		     $("#all").css("background-color","rgb(0,102,51)").css("color","white");
		});
		
		
	});
</script>
</head>
<body>
	<!--  header -->
	<jsp:include page ="../header.jsp"></jsp:include>
	
	<!--  content -->
	<section>
		<div class="title">
		<h1>고객의 소리</h1></div>
		<div class="icon_home">
			<a href="http://localhost:9000/starbucks/index.jsp"><img src="http://localhost:9000/starbucks/images/icon_home_white.png" ></a>
			<img src="http://localhost:9000/starbucks/images/icon_arrow_w.png" >
			<a href="http://localhost:9000/starbucks/mystarbucks/mystarbucks_main.jsp">My Starbucks</a>
			<img src="http://localhost:9000/starbucks/images/icon_arrow_w.png" >
			<a href="http://localhost:9000/starbucks/mystarbucks/mystarbucks_sound.jsp">참여 현황</a>
			<img src="http://localhost:9000/starbucks/images/icon_arrow_w.png" >
			<a href="http://localhost:9000/starbucks/mystarbucks/mystarbucks_sound.jsp">고객의 소리</a>
		</div>
	</section>	
	<section class="btn">
		<div class="button">
			<div></div>
			<p><a href="http://localhost:9000/starbucks/mystarbucks/mystarbucks_sound.jsp">My 고객의 소리</a></p>
			<div class="line"></div>
			<p><a class="down_menu" id="down">개인정보관리<img class="sbox_arrow_down" src="http://localhost:9000/starbucks/images/sbox_arrow_down.png"></a></p>
			<ul class="hide">
				<li><a class="font" href="">. 개인정보확인 및 수정</a></li>
				<li><a class="font"href="">. 회원 탈퇴</a></li>
				<li><a class="font"href="http://localhost:9000/starbucks/mystarbucks/mystarbucks_pass.jsp">. 비밀번호 변경</a></li>
			</ul>
		</div>
	</section>
	<section>
		<div class="text">
			<p>귀한 말씀 들려 주십시오. 작은 소리도 듣겠습니다.</p>
			<p>스타벅스에서는 고객 여러분의 즐겁고 행복한 시간을 위해 정성을 다하고 있습니다.<br>
			만족스러운 서비스였는지, 불만스러운 점은 없으셨는지 귀한 의견을 들려주시기 바랍니다.<br>보다 나은 서비스로 보답하겠습니다.</p>
			<li>고객의 소리 운영시간 : 09:00~18:00 (연중무휴)</li>
			<a href="http://localhost:9000/starbucks/service/service_sound.jsp">고객의 소리 문의하기</a>
			<img src="http://localhost:9000/starbucks/images/my_suggestion_inquiry_bg.png">
		</div>
	</section>
	<section class="list">
		<div>
			<div id="all">전체 <%= before_count+after_count %></div>
			<div id="before">접수완료 <%= before_count %></div>
			<div id="after">답변완료 <%= after_count %></div>
		</div>
	</section>
	<section class="table">
	<div>
		<table>
		<thead>
			<tr>
				<th>NO</th>
				<th>제목</th>
				<th>작성일</th>
				<th>답변일</th>
				<th>답변여부</th>
			</tr>
		</thead>
		<tbody>
			<% for (serviceVO vo : list) { %>
			<tr>
				<% if(list.size() != 0 ) { %>
					<td><%= vo.getRno() %></td>
					<td><%= vo.getTitle() %></td>
					<td><%= vo.getSdate() %></td>	
					<% if (vo.getReply() == 0) { %>
					<td></td>
					<td>미답변</td>
					<% } else { %> 
						<% for (serviceVO c_vo : c_list ) { %>
					 		<% if (c_vo.getSid().equals(vo.getSid())) { %>
							<td><%= c_vo.getCdate() %></td>
							<% } %>
						<% } %>		
					<td><a href="mystarbucks_sound_comment.jsp?sid=<%= vo.getSid() %>" id="comment_box_btn">답변완료</a></td>
					<% } %>
				<% } else { %>
				<td colspan="5">데이터가 없습니다</td>
				<% } %>
			</tr>
			<% } %>
		</tbody>
		</table>		
	</div>	
	</section>
	
	
	
	<!--  footer -->
	<jsp:include page ="../footer.jsp"></jsp:include>
</body>
</html>