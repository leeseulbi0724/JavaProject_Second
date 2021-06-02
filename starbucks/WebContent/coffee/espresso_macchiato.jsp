<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
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
	width:100%; height:730px;
}
.espresso_img {
	padding-bottom:30px;
}
.espresso div {
	width:55%;
	position: absolute;
	margin: 0 auto 0 23%;
}
.espresso_info dl {
	margin: 0 auto 150px 23%;
	text-align:left;
}
.espresso_info dt{
	color:#006633; font-size:18px; line-height:1.4; font-weight:normal; letter-spacing:-1px;
}
/******************* 관련제품 content ****************************/
.espresso_list {
	width:100%; height:350px;
	position: relative;
	text-align:center;
	background-color:rgb(244,244,242);
	padding-top:30px;
}
.line {
	border:1px solid lightgray;
	width:1100px;
	margin:20px auto;
}
.product_title {
	width:1100px;
	margin:30px auto;
	text-align:left;
	font-weight:bold;
	font-size:18px;
}
.product_list {
	width:1100px; 
	margin:0 auto;
}
.espresso_list ul {
	list-style-type:none;
	float:left;
}
.espresso_list ul li>div {
	display:inline-block;
	text-align:left;
	padding:0 10px 0 10px;
	
}
.espresso_list ul li>div span {
	font-weight:bold;
}
.espresso_list ul li>div p {
	padding:15px 0;
	font-size:13px;
}
.product_img {
	width:160px; height:160px;
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
			<img class="espresso_ttl"src="http://localhost:9000/starbucks/images/espresso_macchiato_ttl.jpg">
		<ul class="smap">
			<li><a href="http://localhost:9000/starbucks/index.jsp"><img class="home_icon" src="http://localhost:9000/starbucks/images/icon_home.png"></a></li>
			<li><img class=arrow_icon src="http://localhost:9000/starbucks/images/icon_arrow.png"></li>
			<li><a class= "this" href="http://localhost:9000/starbucks/coffee/coffee_main.jsp" style="text-decoration-line: none;">COFFEE</a></li>
			<li><img class=arrow_icon src="http://localhost:9000/starbucks/images/icon_arrow.png"></li>
			<li><a class= "this" href="http://localhost:9000/starbucks/espresso/espresso_main.jsp" style="text-decoration-line: none;">에스프레소 음료</a></li>
			<li><img class=arrow_icon src="http://localhost:9000/starbucks/images/icon_arrow.png"></li>
			<li><a class= "this" href="http://localhost:9000/starbucks/espresso/espresso_main.jsp" style="text-decoration-line: none;">에스프레소 마키아또</a></li>
		</ul>
	</div>
	</div>	

	<!-- 마키아또 content -->
	<section class="espresso">
		<div>
			<p class="espresso_img"><img src="http://localhost:9000/starbucks/images/espresso_macchiato_img01.jpg"></p>
			<dl class="espresso_info">
				<dt>“에스프레소 마키아또는 전통적인 유럽 스타일의 음료입니다.”</dt>
				<dd>
					<p>에스프레소 마키아또는 전통적인 유럽 스타일의 음료로, 스타벅스 특유의 완벽하게 추출된 에스프레소 샷에 항상 사랑 받는 스팀 밀크가 더해집니다.<br>
						우유를 너무 많이 올리면 에스프레소에 매혹적인 강렬함을 주는 진한 풍미와 캐러멜 풍미를 가릴 수 있으므로 우유 거품은 아주 조금만 올립니다.</p>
				</dd>
			</dl>
		</div>
	</section>

	<!-- 관련 제품 -->
	<section class="espresso_list">
		<div class="line"></div>
		
			<div class="product_title">관련 제품</div>
			
				<div class="product_list">
					<ul>
						<li><a href="#"><img src="http://localhost:9000/starbucks/images/20210415144211211.jpg" class="product_img"></a>
							<div>
								<span>에스프레소 마키아또</span>
								<p>신선한 에스프레소 샷에 우유<br>
									거품을 살짝 얹은 커피 음료로<br>
									써, 강렬한 에스프레소의 맛과<br>
									우유의 부드러움을 같이 즐길<br>
									 수 있는 커피 음료</p>
								<a href="#"><img src="http://localhost:9000/starbucks/images/cf_more_btn.png"></a>
							</div>
						</li>					
					</ul>
				</div>
	</section>
		
<!-- Footer -->	
<jsp:include page="../footer.jsp"></jsp:include>
</body>
</html>













