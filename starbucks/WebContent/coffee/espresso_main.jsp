<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>에스프레소 음료 | Starbucks Coffee Korea</title>
<style>
/******************* 타이틀 ****************************/
.espresso_ttl{
	padding-top: 30px;
	position: relative;
}
.sub_title{
	width: 100%;
	height: 98px;
	background: #ffffff;
}
.sub_title_inner{
	width: 96%;
	margin: 0 auto;
	padding-top: 0;
}

ul.smap li{
	float: left;
	margin: 0 2.5px;
}
a:link {text-decoration: none; color: #333333;}
a:visited {text-decoration: none; color: #333333;}

.sub_inner_title{
	width: 1100px;
	height: 91px;
	margin: 0 auto;
	position: relative;
}
ul.smap{
	position: absolute;
	right: 0;
	top: 60px;
	list-style: none;
	display: inline-block;
}
ul.smap li{
	display: inline-block;
	margin-right: 2px;
	color: #ffffff;
}

/******************* 에스프레소 content ****************************/
.espresso, section.espresso_list {
	position: relative;
	text-align:center;

}
.espresso {
	width:100%; height:750px;
}
.espresso_img {
	padding-bottom:30px;
}
.espresso div {
	width:1100px;
	position: relative;
	margin:10px auto;
}
.espresso_info dl {
	margin: 0 auto 150px 23%;
	text-align:left;
}
.espresso_info dt{
	color:#006633; font-size:18px; line-height:1.4; font-weight:normal; letter-spacing:-1px;
}

/******************* 에스프레소 list    ****************************/
.espresso_list {
	width:100%; height:1100px;
	position: relative;
	text-align:center;
	background-color:rgb(244,244,242);
	padding-top:30px;
}
.espresso_list div.espresso_list_inner {
	width:1100px; 
	margin:0 auto;
}
.espresso_list img.list_img{
	width:340px; height:200px;
}
.espresso_list ul {
	width:100%; height:1100px;
	
}
.espresso_list ul li {
	display:inline-block;
	width:340px; height:320px;
	float:left;
	padding:5px 12px;
}

.espresso_list div.esp_text {
	width:350px; 
	text-align:left;
	font-size: 12px;
	padding:10px 0 0 5px;
	
}
.espresso_list div.esp_text p:hover {
	text-decoration:underline;
}
.espresso_list a>img:hover{
	transform: scale(1.1, 1.1);
	transition: all 1s ease-in-out;
}
</style>
</head>
<body>
<!-- Header -->
<jsp:include page="../header.jsp"></jsp:include>

<!-- content -->

	<!-- 타이틀  -->
	<div class="sub_title">
		<div class="sub_inner_title">
			<img class="espresso_ttl"src="http://localhost:9000/starbucks/images/espresso_ttl.jpg">
		<ul class="smap">
			<li><a href="http://localhost:9000/starbucks/index.jsp"><img class="home_icon" src="http://localhost:9000/starbucks/images/icon_home.png"></a></li>
			<li><img class=arrow_icon src="http://localhost:9000/starbucks/images/icon_arrow.png"></li>
			<li><a class= "this" href="http://localhost:9000/starbucks/coffee/espresso_main.jsp" style="text-decoration-line: none;">ESPRESSO</a></li>
			<li><img class=arrow_icon src="http://localhost:9000/starbucks/images/icon_arrow.png"></li>
			<li><a class= "this" href="http://localhost:9000/starbucks/coffee/espresso_main.jsp" style="text-decoration-line: none;">에스프레소 음료</a></li>
		</ul>
	</div>
	</div>	
	
	<!-- 에스프레소 content -->
	<section class="espresso">
		<div>
			<p class="espresso_img"><img src="http://localhost:9000/starbucks/images/espresso_classlcs_img01.jpg"></p>
			<dl class="espresso_info">
				<dt>“오늘날, 스타벅스에 있어 꼼꼼하고 세심한 노력은 다양한 음료 메뉴만큼이나 중요합니다. ”</dt>
				<dd>
					<p>1983년 하워드 슐츠는 이탈리아 밀라노의 한 커피숍에서 카페라떼를 한 잔 주문했습니다. 앞에 준비된 에스프레소를 봤을 때 그는 갑자기 무엇인가를 느꼈습니다. <br>   그것은 바로 자신의 음료를 만들기 위해 들어간 엄청난 열정과, 오랫동안 지속되는 감동을 이루어내는 훌륭한 커피를 둘러싸고 형성된 공동체였습니다. <br>그는 자신이 특별한 무언가를 발견했다는 것을 깨달았습니다.</p>
					<p class="last">오늘날, 스타벅스에 있어 이처럼 꼼꼼하고 세심한 노력은 다양한 음료 메뉴만큼이나 중요합니다. <br>순수하고 강렬한 에스프레소 풍미의 도피오 한 잔이나, 완벽하게 만들어진 부드러운 크림 블렌드의 라떼 한 잔 등, 모든 커피 한 잔 한 잔에는 열정이 담겨있습니다. </p>
				</dd>
			</dl>
		</div>
	</section>
		
		<!-- 에스프레소 list -->
<!--  for(){ -->
	<section class="espresso_list">
		<div class="espresso_list_inner">
			<ul>
				<li>
					<div><a href="http://localhost:9000/starbucks/coffee/espresso_list.jsp" ><img src="http://localhost:9000/starbucks/images/espresso_list_img01.jpg" class="list_img"></a></div>
					<div class="esp_text"><p>모든 에스프레소 음료의 생명이자 영혼입니다. </br>스타벅스에서 추출하는 모든 샷에는 깊고 강렬한 풍미를 내는 </br>독특한 세 개의 층이 형성됩니다. </p></div>
				</li>
		</div>
	</section>
<!-- } -->
				
				
				
				<li>
					<div><a href="http://localhost:9000/starbucks/coffee/espresso_list.jsp"><img src="http://localhost:9000/starbucks/images/espresso_list_img02.jpg" class="list_img"></a></div>
					<div class="esp_text"><p> </p></div>
				</li>
				<li>
					<div><a href="http://localhost:9000/starbucks/coffee/espresso_list.jsp"><img src="http://localhost:9000/starbucks/images/espresso_list_img03.jpg" class="list_img"></a></div>
					<div class="esp_text"><p></p></div>
				</li>
				<li>
					<div><a href="http://localhost:9000/starbucks/coffee/espresso_list.jsp"><img src="http://localhost:9000/starbucks/images/espresso_list_img04.jpg" class="list_img"></a></div>
					<div class="esp_text"><p></p></div>
				</li>
				<li>
					<div><a href="http://localhost:9000/starbucks/coffee/espresso_list.jsp"><img src="http://localhost:9000/starbucks/images/espresso_list_img05.jpg" class="list_img"></a></div>
					<div class="esp_text"><p> </p></div>
				</li>
				<li>
					<div><a href="http://localhost:9000/starbucks/coffee/espresso_list.jsp"><img src="http://localhost:9000/starbucks/images/espresso_list_img06.jpg" class="list_img"></a></div>
					<div class="esp_text"><p>맛있는 에스프레소와 스팀 밀크가 섞인 라떼는 더하고자 하는 </br>어떤 맛과도 완벽한 조화를 이룹니다. </p></div>
				</li>
				<li>
					<div><a href="http://localhost:9000/starbucks/coffee/espresso_list.jsp"><img src="http://localhost:9000/starbucks/images/espresso_list_img07.jpg" class="list_img"></a></div>									
					<div class="esp_text"><p>뜨거운 에스프레소와 달콤쌉싸름한 초콜릿이 스팀 밀크와 </br>혼합된 달콤하고 맛있는 음료입니다. </p></div>
				</li>
				<li>
					<div><a href="http://localhost:9000/starbucks/coffee/espresso_list.jsp"><img src="http://localhost:9000/starbucks/images/espresso_list_img08.jpg" class="list_img"></a></div>
					<div class="esp_text"><p>강렬한 리스트레토 샷과 적당한 양의 스팀 밀크가 어우러져 </br>너무 진하지도 너무 크리미하지도 않은 풍미를 냅니다. </p></div>
				</li>
			</ul>

<!-- Footer -->	
<jsp:include page="../footer.jsp"></jsp:include>	

</body>
</html>