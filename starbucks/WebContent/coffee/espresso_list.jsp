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
	width:100%; height:auto;
}
.espresso_img {
	padding-bottom:30px;
}
.espresso div {
	width:1100px;
	position: relative;
	margin:10px auto;
}

.espresso_info dd {
	text-align:left;
	font-size: 13px;
	padding: 20px 20px;
}
.espresso_info dt{
	color:#006633; font-size:18px; line-height:1.4; font-weight:normal; letter-spacing:-1px;
	text-align:left;
	padding: 10px 20px;
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
			<img class="espresso_ttl"src="http://localhost:9000/starbucks/images/doppio_ttl.jpg">
		<ul class="smap">
			<li><a href="http://localhost:9000/starbucks/index.jsp"><img class="home_icon" src="http://localhost:9000/starbucks/images/icon_home.png"></a></li>
			<li><img class=arrow_icon src="http://localhost:9000/starbucks/images/icon_arrow.png"></li>
			<li><a class= "this" href="http://localhost:9000/starbucks/coffee/coffee_main.jsp" style="text-decoration-line: none;">COFFEE</a></li>
			<li><img class=arrow_icon src="http://localhost:9000/starbucks/images/icon_arrow.png"></li>
			<li><a class= "this" href="http://localhost:9000/starbucks/coffee/espresso_main.jsp" style="text-decoration-line: none;">에스프레소 음료</a></li>
			<li><img class=arrow_icon src="http://localhost:9000/starbucks/images/icon_arrow.png"></li>
			<li><a class= "this" href="http://localhost:9000/starbucks/coffee/espresso_doppio.jsp" style="text-decoration-line: none;">도피오</a></li>
		</ul>
	</div>
	</div>	

	<!-- 도피오 content -->
	<section class="espresso">
		<div>
			<p class="espresso_img"><img src="http://localhost:9000/starbucks/images/doppio_img01.jpg"></p>
			<dl class="espresso_info">
				<dt>“라떼, 모카, 마끼아또 등 모든 스타벅스 음료의 기본이자 생명은 완벽하게 추출된 에스프레소입니다.”</dt>
				<dd>
					<p>도피오는 진한 샷 두 개를 섞은 것입니다. 바리스타는 매우 진한 각 샷을 정확히 5초 동안 추출합니다.</br>
						샷에는 반드시 크레마, 바디, 하트의 세 개 층이 존재해야 하며, 그렇지 않으면 버리고 다시 추출합니다.</br>
						이것이 지난 40여 년 간 스타벅스가 도피오를 만들어 온 방식입니다.</br>
						스타벅스는 완벽한 에스프레소를 만드는 것이 완벽한 음료를 만드는 핵심이라고 믿기 때문입니다.</p>
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
						<li><a href="#"><img src="http://localhost:9000/starbucks/images/20210415144252244.jpg" class="product_img"></a>
							<div>
								<span>에스프레소 콘 파나</span>
								<p>신선한 에스프레소 샷에 풍부</br>
									한 휘핑크림을 얹은 커피 음료</br>
									로서, 뜨거운 커피의 맛과 차갑</br>
									고 달콤한 생크림의 맛을 같이</br>
									 즐길 수 있는 커피 음료</p>
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













