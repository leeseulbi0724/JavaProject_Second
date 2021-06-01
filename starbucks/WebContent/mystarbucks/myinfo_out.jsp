<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!--  날짜 Import -->    
<%@ page import = "java.util.Calendar" %>
<!-- 오늘 날짜  -->
<%
Calendar cal = Calendar.getInstance();
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<script src="../js/jquery-3.6.0.min.js"></script>
<style>
html, body, div, span, object, iframe, h1, h2, h3, h4, h5, h6, p,
	blockquote, pre, abbr, address, cite, code, del, dfn, em, img, ins, kbd,
	q, samp, small, strong, sub, sup, var, b, i, dl, dt, dd, ol, ul, li,
	fieldset, form, label, legend, table, caption, tbody, tfoot, thead, tr,
	th, td, article, aside, canvas, details, figcaption, figure, footer,
	header, hgroup, menu, nav, section, summary, time, mark, audio, video {
	margin: 0;
	padding: 0;
	border: 0;
	font-size: 100%;
	vertical-align: baseline;
	background: transparent;
}

.sub_title {
	width: 100%;
	height: 178px;
	background:
		url(http://localhost:9000/starbucks/images/ms_sub_ttl_bg.jpg);
}

.sub_inner_title {
	width: 1100px;
	height: 91px;
	margin: 0 auto;
	position: relative;
}

.smap a:link {
	text-decoration: none;
	color: #ffffff;
}

.smap a:visited {
	text-decoration: none;
	color: #ffffff;
}

ul.smap {
	position: absolute;
	right: 0;
	top: 116px;
	list-style: none;
	display: inline-block;
}

ul.smap li {
	display: inline-block;
	margin-right: 2px;
	color: #ffffff;
}

.sub_title h1 {
	font: bold 36px Avenir, Arial, georgia;
	color: #ffffff;
	padding-top: 30px;
	position: relative;
	top: 60px;
}
.wrap{
	position: relative;
	width: 100%;
	height: 949px;
}
.container{
	width: 100%;
}
.ms_cont_wrap{
	left: 50%;
	margin: 50px 0 0 -550px;
	position: relative;
	width: 1100px;
	height: 1000px;
}
.ms_cont{
	float: left;
	width: 830px;
	margin-bottom: 90px;
}
.ms.nav{
	float: right;
	font-weight: bold;
	width: 220px;
	margin-bottom: 90px;
	border: 2px solid red;
}

nav ul, li {
	list-style: none;
}

.hide {
	display: none;
}

.ms_nav>ul {
	border-top: 2px solid #222;
}

.ms_nav {
	float: right;
	font-weight: bold;
	width: 220px;
	margin-bottom: 90px;
}

.ms_nav>ul>li {
	border-bottom: 1px solid #ddd;
	width: 220px;
}

.ms_nav>ul>li>a {
	color: #444;
	display: block;
	font-size: 14px;
	padding: 20px 30px 20px 15px;
	position: relative;
	width: 175px;
}

.ms_nav a:link {
	text-decoration: none;
	color: #444;
}

.ms_nav a:visited {
	text-decoration: none;
	color: #444;
}

.sbox_arrow_down {
	height: 7px;
	margin-top: -3px;
	position: absolute;
	right: 15px;
	top: 50%;
	width: 12px;
	background:
		url(http://localhost:9000/starbucks/images/sbox_arrow_down.png);
}

.ms_nav>ul>lu>ul>li {
	width: 220px;
}

.ms_nav a {
	cursor: pointer;
}
.font{
	color: #444;
	display: block;
	font-size: 12px;
	padding: 6px 0 6px 15px;
	width: 205px;
}
.container{
	top: 1px;
}
.ms-cont{
	float: left;
	width: 100%;
	margin-bottom: 90px;
}
.my_info_wrap{
	padding-bottom: 40px;
	margin-bottom: 40px;
	position: relative;
}
.my_info_f{
	width: 830px;
	height: 170px;
	background: url(http://localhost:9000/starbucks/images/mem_bg.jpg) 0 0 no-repeat;
	position: relative;
	margin-bottom: 50px;
}
.last_txt{
	font-size: 14px;
	font_weight: normal;
	color: #666666;
}
.my_info_f_txt p{
	color: #444;
	font-size: 18px;
	font-weight: bold;
	line-height: 1.2;
	margin-bottom: 15px;
	width: 465px;
}
.my_info_f_txt{
	padding: 45px 0 0 75px;
}
.my_info_f_txt span{
	margin-bottom: 15px;
	margin-right: 3px;
}
.mem_level{
	width: 480px;
}
.mem_level li{
	float: left;
	padding: 0 10px;
}
.li2{font-size: 14px; color: #444;} .li2 span{font-size: 18px; font-weight: bold; margin-left: 3px;}

</style>

<script>
$(document).ready(function(){    
    $(".user_if>a").click(function(){
        $(this).next("ul").toggleClass("hide");
    });
});
</script>
</head>
<body>
	<jsp:include page="../header.jsp"></jsp:include>
	<!-- 서브타이틀 -->
	<div class= "sub_title"> 
		<div class= "sub_inner_title">
			<h1>회원탈퇴</h1>
	
			<ul class="smap">
				<li><a href="http://localhost:9000/starbucks/index.jsp"><img class="home_icon" src="http://localhost:9000/starbucks/images/icon_home.png"></a></li>
				<li><img class=arrow_icon src="http://localhost:9000/starbucks/images/icon_arrow.png"></li>
				<li><a class= "this" href="http://localhost:9000/starbucks/mystarbucks/mystarbucks_main.jsp" style="text-decoration-line: none;">My StarBucks</a></li>
			</ul>
		</div>
	 </div>	
	 <!-- 메인 Wrap -->
	<div class ="wrap">
		<div class ="container">
			<div class="ms_cont_wrap">
				<div class="ms_cont">
					<section class="my_info">
		 				<div class="my_info_wrap">
		 					<div class="my_info_f">
		 						<div class="my_info_f_txt">
		 							<p>
		 								<span>***</span>님의 <span><%= cal.get(Calendar.YEAR) %>년</span><span><%= cal.get(Calendar.MONTH)+1 %>월</span><span><%= cal.get(Calendar.DATE) %>일</span>현재 스타벅스 서비스 현황입니다.<br><span class="last_txt">아래 사항들을 확인하시고, 회원탈퇴에 대해 다시 한번 신중히 결정해주세요.</span>
		 							</p>
		 							<ul class= "mem_level">
		 								<li class= "li1"><img src="http://localhost:9000/starbucks/images/mem_line.jpg"></li>
		 								<li class= "li2">유효한 스타벅스 별 :<span>0개</span></li>
		 								<li class= "li3"></li>
		 							</ul>
		 						</div>
		 					</div>
		 				</div>
		 			</section>
				</div>
				
				<nav class= "ms_nav">
					<ul>
						<li><a href="">My 고객의 소리</a></li>
						<li class="user_if">
						<a>개인정보관리<span class="sbox_arrow_down"></span></a>
						<ul class="hide">
						<li><a class="font" href="">. 개인정보확인 및 수정</a></li>
						<li><a class="font"href="http://localhost:9000/starbucks/mystarbucks/myinfo_out.jsp">. 회원 탈퇴</a></li>
						<li><a class="font"href="http://localhost:9000/starbucks/mystarbucks/mystarbucks_pass.jsp">. 비밀번호 변경</a></li>
						</ul>
						</li>
					</ul>	
				</nav>
				
			</div>
		</div>
	</div>
	 
	 

	 

	 
	<jsp:include page="../footer.jsp"></jsp:include>
</body>
</html>