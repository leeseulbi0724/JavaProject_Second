<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
/******************* 서브타이틀 ****************************/
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
	width:100%; height:800px;
}
.espresso div, .espresso_list div {
	width:50%;
	position: absolute;
	margin: 0 auto 0 23%;
}
.espresso_info dl {
	margin: 0 auto 150px 23%;
	text-align:left;
}
.espresso_info dt{
	color:green;
	font-size:15px;
}

/******************* 에스프레소 list    ****************************/
.espresso_list {
	padding-top:50px;
	width:100%; height:1200px;
	background-color:rgb(244,244,242);
	position: relative;
}
.espresso_list div {
	text-align:center;
	height:1000px;
}
.espresso_list ul{
	list-style-type:none;
	width: 1150px;
	margin: 0 110px;
	text-align:left;
}
.espresso_list ul>li {
	margin: 10px;
	position: relative;
	width: 350px;
	display: inline-block;
	
}
.espresso_list ul li div{
	width:300px; height:250px;
	position: relative;
}

.list_img {
	width:370px; height:200px; 
	position:relative;
}
.espresso_list p {
	display:inline-block;
	padding:11px 0 5px 15px;
	position: relative;
}
</style>
</head>
<body>
<!-- Header -->
<jsp:include page="../header.jsp"></jsp:include>

<!-- content -->

	<!-- 서브 타이틀  -->
	<div class="sub_title">
		<div class="sub_inner_title">
			<img class="espresso_ttl"src="http://localhost:9000/starbucks/images/espresso_ttl.jpg">
		<ul class="smap">
			<li><a href="http://localhost:9000/starbucks/index.jsp"><img class="home_icon" src="http://localhost:9000/starbucks/images/icon_home.png"></a></li>
			<li><img class=arrow_icon src="http://localhost:9000/starbucks/images/icon_arrow.png"></li>
			<li><a class= "this" href="http://localhost:9000/starbucks/espresso/espresso_main.jsp" style="text-decoration-line: none;">ESPRESSO</a></li>
			<li><img class=arrow_icon src="http://localhost:9000/starbucks/images/icon_arrow.png"></li>
			<li><a class= "this" href="http://localhost:9000/starbucks/espresso/espresso_main.jsp" style="text-decoration-line: none;">에스프레소 음료</a></li>
		</ul>
		
		
		
	</div>
	</div>	
	
	<!-- 에스프레소 content -->
	<section class="espresso">
		<div>
			<p class="espresso_img"><img src="//image.istarbucks.co.kr/common/img/coffee/espresso/espresso_classlcs_img01.jpg"></p>
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
	<section class="espresso_list">
		<div>
			<ul>
				<li>
					<div>
						<a href="#" ><img src="//image.istarbucks.co.kr/common/img/coffee/espresso/espresso_list_img01.jpg" class="list_img"></a>
						<p>모든 에스프레소 음료의 생명이자 영혼입니다. <br>스타벅스에서 추출하는 모든 샷에는 깊고 강렬한 풍미를 내는 <br>독특한 세 개의 층이 형성됩니다. </p>
					</div>
				</li>
				<li>
					<div>
						<a href="#"><img src="//image.istarbucks.co.kr/common/img/coffee/espresso/espresso_list_img02.jpg" class="list_img"></a>
						<p>완벽하고 강렬한 에스프레소 샷에 우유 거품이 살짝 <br>올라갑니다.</p>
					</div>
				</li>
				<li>
					<div>
						<a href="#"><img src="//image.istarbucks.co.kr/common/img/coffee/espresso/espresso_list_img03.jpg" class="list_img">	</a>
						<p>에스프레소의 풍미를 느낄 수 있습니다. <br>진한 에스프레소에 뜨거운 물 한 잔을 부어서 만든 아메리카노는 <br>커피콩 그 자체만큼이나 깊이 있고 다크한 맛을 냅니다.</p>
					</div>
				</li>
				<li>
					<div>
						<a href="#"><img src="//image.istarbucks.co.kr/common/img/coffee/espresso/espresso_list_img04.jpg" class="list_img">	</a>
						<p>달콤한 드리즐, 빽빽한 우유 거품, 진한 에스프레소, 스팀 밀크, <br>그리고 너무나도 달콤한 끝 맛이 층을 이루고 있는 <br>환상적인 맛입니다.</p>
					</div>
				</li>
				<li>
					<div>
						<a href="#"><img src="//image.istarbucks.co.kr/common/img/coffee/espresso/espresso_list_img05.jpg" class="list_img"></a>
						<p>부드러운 두꺼운 우유 거품 아래에 다크하고 진한 에스프레소가 <br>숨겨져 있습니다.<br>카푸치노는 진정으로 스타벅스 바리스타의 솜씨의 정수를 <br>보여줍니다. </p>
					</div>
				</li>
				<li>
					<div>
						<a href="#"><img src="//image.istarbucks.co.kr/common/img/coffee/espresso/espresso_list_img06.jpg" class="list_img"></a>
						<p>맛있는 에스프레소와 스팀 밀크가 섞인 라떼는 더하고자 하는 <br>어떤 맛과도 완벽한 조화를 이룹니다. </p>
					</div>
				</li>
				<li>
					<div>
						<a href="#"><img src="//image.istarbucks.co.kr/common/img/coffee/espresso/espresso_list_img07.jpg" class="list_img"></a>									
						<p>뜨거운 에스프레소와 달콤쌉싸름한 초콜릿이 스팀 밀크와 <br>혼합된 달콤하고 맛있는 음료입니다. </p>
					</div>
				</li>
				<li>
					<div>
						<a href="#"><img src="//image.istarbucks.co.kr/common/img/coffee/espresso/espresso_list_img08.jpg" class="list_img"></a>
						<p>강렬한 리스트레토 샷과 적당한 양의 스팀 밀크가 어우러져 <br>너무 진하지도 너무 크리미하지도 않은 풍미를 냅니다. </p>
					</div>
				</li>
			</ul>
		</div>
	</section>

		
<!-- Footer -->	
<jsp:include page="../footer.jsp"></jsp:include>
</body>
</html>