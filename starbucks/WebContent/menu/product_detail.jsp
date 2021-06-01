<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
div.drink_detail{
	text-align: center;
	width: 1110px;
	margin: 40px auto 0 auto;
	position: relative;
}
div.title{
	margin-bottom: 20px;
}
ul.route {
	list-style-type: none;
	text-align: right;
	margin: 0;
	padding: 0;
	position: absolute;
	right: 0;
	top: 20px;
}
ul.route li{
	display: inline-block;
	vertical-align: middle;
}
ul.route li:last-child>a{
	color: black;
}
ul.route li>a{
	vertical-align: middle;
	text-decoration: none;
	color: gray;
	font-size: 13px;
}
ul.route li>a:hover{
	text-decoration: underline;
}
div.title>div>h2{
	text-align: left;
	padding-bottom: 20px;
}

/* 내용 */
div.content>div:first-child{
	display: inline-block;
	padding-bottom: 40px;
	border-bottom: 1px solid lightgray;
}
/* 이미지 */
div.image{
	text-align: left;
	display: inline-block;
	float: left;
}
div.image>div>img:first-child{
	width: 450px;
	height: 470px;
}
div.image>div>img:last-child {
	position: relative;
	right: 80px;
	bottom: 15px;
}
div.image>div>ul{
	list-style-type: none;
	text-align: right;
	width: 318px;
}
div.image>div>ul>li{
	display: inline-block;
	float:left;
}
div.image>div>ul>li>img{
	margin-top: 5px;
	width: 106px;
	height: 111px;
}
div.image>div>ul>li>img:hover{
	cursor: pointer;
}
/* 정보 */
div.inform{
	text-align: left;
	float: right;
	width: 595px;
}
div.inform h2{
	font-size: 24px;
}
div.inform h2 + span{
	font-size: 14px;
	color: #666;
}
div.inform>div:first-child{
	margin-bottom: 40px;
}
div.inform>div:first-child>div {
	background-color: #333;
	width: 100%;
	height: 2px;	
	display: block;
	margin: 20px 0;
}
div.inform>div:first-child>span:last-child{
	font-size: 15px;
}
div.inform>div:last-child>div:first-child {
	border-bottom: 1px solid lightgray;
	border-top: 1px solid lightgray;
	padding: 20px 10px;
}
div.inform>div:last-child>div:first-child>span:first-child {
	font-size: 18px;
}
div.inform>div:last-child>div:first-child>span:last-child {
	float: right;
	font-size: 16px;
}
div.inform>div:last-child>div:nth-child(2){
	padding: 20px 10px;
	column-count: 2;
	column-rule: 1px dashed lightgray;
}
div.inform>div:last-child ul{
	list-style-type: none;
}
div.inform>div:last-child li{
	margin-bottom: 15px;
	font-size: 14px;
}
div.inform>div:last-child ul>li>span:last-child {
	float: right;
}
div.inform>div:last-child>div:last-child{
	background-color: #f4f4f2;
	padding: 13px 7px;
	border: 1px solid #f4f4f2;
	border-radius: 2px;
}
div.inform>div:last-child>div:last-child>span{
	font-size: 14px;
}
div.content>div:last-child {
	clear: both;
	text-align: left;
	padding: 30px 0 80px 0;
}
div.content>div:last-child>span{
	font-size: 14px;
	color: #666;
}

/* 하단 소식 */
div.bottom_news{
	background-color: #f4f4f2;
	padding: 40px 0 60px 0;
}
div.bottom_news>div{
	width: 1110px;
	text-align: left;
	margin: 0 auto;
	position: relative;
	height: 171px;
}
div.bottom_news>div:first-child>div{
	display: flex;
	justify-content: space-between;
}
div.bottom_news>div:first-child>div>div:first-child{
	width:555px;
	display: flex;
	justify-content: space-between;
	height: 140px;
}
div.bottom_news>div:first-child>div>div:last-child{
	width:555px;
	display: flex;
	justify-content: space-around;
	height: 140px;
}
div.bottom_news>div:first-child>div>div:first-child {
	border-right: 1px solid lightgray;
}
div.bottom_news>div:first-child>div>div:first-child span {
	font-size: 18px;
	font-weight: bold;
	display: inline-block;
}
div.bottom_news>div:first-child>div>div:first-child li {
	font-size: 13px;
	list-style-type: none;
	background-image: url("http://localhost:9000/starbucks/images/dot.jpg");
	background-repeat: no-repeat;
	background-position: left center;
	padding-left: 8px;
	line-height: 40px;
}
div.bottom_news>div:first-child>div>div:first-child img {
	display: block;
	width: 36px;
	height: 36px;
	margin-right: 40px;
}
div.bottom_news>div:first-child>div>div:last-child img {
	display: inline-block;
	position: relative;
	left: 10px;
}
div.bottom_news>div:first-child>div>div:last-child>div>span:first-child {
	color: #006633;
}
div.bottom_news>div:first-child>div>div:last-child>div>span:nth-child(2){
	display: block;
	margin: 10px 0;
	font-size: 13px;
	font-weight: bold;
}
div.bottom_news>div:first-child>div>div:last-child>div>span:last-child{
	font-size: 13px;
}

div.bottom_news>div:last-child{
	display: block;
	border-top: 1px solid lightgray;
	padding: 40px 0;
	display: none;
}
div.bottom_news>div:last-child>span{
	font-size: 18px;
	font-weight: bold;
	color: #444;
}
div.bottom_news>div:last-child>div {
	display: flex;
	justify-content: flex-start;
	margin-top: 20px;
}
div.bottom_news>div:last-child>div>img:first-child{
	width: 160px;
	height: 167px;
}
div.bottom_news>div:last-child>div>div {
	margin-left: 20px;
}
div.bottom_news>div:last-child>div>div>span:first-child {
	font-weight: bold;
	margin-bottom: 5px;
	display: block;
}
div.bottom_news>div:last-child>div>div>span:last-child {
	font-size: 14px;
	color: #666;
}
div.bottom_news>div:last-child>img {
	position: relative;
	bottom: 7px;
	left: 180px;
	width: 65px;
	height: 16px;
}
</style>
</head>
<body>
	<!--  header -->
	<jsp:include page ="../header.jsp"></jsp:include>
	
	<div class="drink_detail">
		<div class="title"><!-- 타이틀 -->
			<div>
				<h2>
					<img src="http://localhost:9000/starbucks/images/product_tit1.png">
				</h2>
				<ul class="route">
					<li>
						<a href="../index.jsp">
							<img src="http://localhost:9000/starbucks/images/icon_home.png">
						</a>
					</li>
					<li>
						<img class="arrow" src="http://localhost:9000/starbucks/images/icon_arrow.png">
					</li>
					<li>
						<a href="menu_main.jsp">MENU</a>
					</li>
					<li>
						<img class="arrow" src="http://localhost:9000/starbucks/images/icon_arrow.png">
					</li>
					<li>
						<a href="menu_drink.jsp">상품</a>
					</li>
					<li>
						<img class="arrow" src="http://localhost:9000/starbucks/images/icon_arrow.png">
					</li>
					<li>
						<a href="#">머그</a>
					</li>
					<li>
						<img class="arrow" src="http://localhost:9000/starbucks/images/icon_arrow.png">
					</li>
					<li>
						<a href="#">더양평 DTR SS 캠핑 머그 355ml</a>
					</li>
				</ul>
			</div>
		</div><!-- 타이틀 -->
		<div class="content"><!-- 내용 -->
			<div>
				<div class="image"><!-- 이미지 -->
					<div><!-- 큰 이미지 -->
						<img src="http://localhost:9000/starbucks/images/mug01_1.jpg">
						<img src="http://localhost:9000/starbucks/images/more.png">
					</div>
					<div><!-- 작은 이미지 -->
						<ul>
							<li>
								<img src="http://localhost:9000/starbucks/images/mug01_1.jpg">
							</li>
							<li>
								<img src="http://localhost:9000/starbucks/images/mug01_2.jpg">
							</li>
							<li>
								<img src="http://localhost:9000/starbucks/images/mug01_3.jpg">
							</li>
							<li>
								<img src="http://localhost:9000/starbucks/images/mug01_4.jpg">
							</li>
						</ul>
					</div>
				</div><!-- 이미지 -->
				<div class="inform"><!-- 정보 -->
					<div><!-- 정보 타이틀 -->
						<h2>더양평 DTR SS 캠핑 머그 355ml</h2>
						<span>THE YP DTR SS camping mug 355ml</span>
						<div></div>
						<span>[더양평 DTR 매장 전용 상품]<br>
						드라이브 나들이를 하는 베어리스타가 더양평 DTR 매장을 방문하는 컨셉의 디자인으로 귀여움을 자아내는 355ml 용량의 스테인리스 스틸 머그입니다.</span>
					</div><!-- 정보 타이틀 -->
				</div><!-- 정보 -->
			</div>
			<div>
				<span>드라이브 나들이를 하는 베어리스타가 더양평 DTR 매장을 방문하는 컨셉의 디자인으로 귀여움을 자아내는 355ml 용량의 스테인리스 스틸 머그입니다.<br>
				핸들에 포인트로 사용 가능한 실리콘 재질의 피규어가 포함된 상품이며, 해당 피규어는 탈착이 가능합니다.<br>
				피규어는 재질 특성상 먼지가 달라붙을 수 있으니 사용에 참고하시기 바랍니다.<br>
				본 상품은 전자레인지 사용이 불가합니다.<br>
				*부속품은 별도 판매되지 않으니 취급에 유의하시기 바랍니다.<br>
				* 1인 2개 구매 한정 상품입니다.</span>
			</div>
		</div><!-- 내용 -->
	</div><!-- drink_detail -->
	<div class="bottom_news"><!-- 하단 소식 -->
		<div>
			<div>
				<div><!-- 프로모션 새소식 -->
					<div>
						<span>프로모션 새소식</span>
						<ul>
							<li>해당 상품과 관련된 진행 중인 프로모션이 없습니다.</li>
						</ul>
					</div>
					<a href="http://localhost:9000/starbucks/whatsnew/event.jsp"><img src="http://localhost:9000/starbucks/images/news_more.png"></a>
				</div>
				<div><!-- 사이렌 오더 -->
					<img src="http://localhost:9000/starbucks/images/footer_product_bn.png">
					<div>
						<span>텀블러를 구매하는 모든 분들께<br>
						텀블러 음료 쿠폰을 드립니다.</span>
						<span>텀블러 음료쿠폰이란?</span>
						<span>텀블러 음료쿠폰은 주문하신 음료와<br>
						Extra 한 개를 무료로 즐기실 수 있는 음료권입니다.</span>
					</div>
				</div>
			</div>
		</div>
		<div>
			<span>관련 제품</span>
			<div>
				<img src="http://localhost:9000/starbucks/images/cold_brew01.jpg">
				<div>
					<span>관련 제품명</span>
					<span>관련 제품 설명</span>
				</div>
			</div>
			<img src="http://localhost:9000/starbucks/images/detail_view.png">
		</div>
	</div>
	<!--  footer -->
	<jsp:include page ="../footer.jsp"></jsp:include>
</body>
</html>