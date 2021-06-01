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
	padding: 0 0 10px 0;
}
div.bottom_news>div:first-child>div{
	display: flex;
	justify-content: space-between;
}
div.bottom_news>div:first-child>div>div{
	width:555px;
	display: flex;
	justify-content: space-between;
	height: 140px;
}
div.bottom_news>div:first-child>div>div:first-child {
	border-right: 1px solid lightgray;
}
div.bottom_news>div:first-child>div>div:first-child span {
	font-size: 18px;
	font-weight: bold;
	display: inline-block;
	color: #444;
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
	top: -15px;
	left: 30px;
	height: 171px;
	width: 171px;
}
div.bottom_news>div:first-child>div>div:last-child>div {
	margin-left: 60px;
}
div.bottom_news>div:first-child>div>div:last-child>div>span:first-child{
	display: block;
	margin-bottom: 10px;
	font-size: 18px;
	font-weight: bold;
	color: #444;
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
					<img src="http://localhost:9000/starbucks/images/food_tit1.png">
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
						<a href="menu_drink.jsp">푸드</a>
					</li>
					<li>
						<img class="arrow" src="http://localhost:9000/starbucks/images/icon_arrow.png">
					</li>
					<li>
						<a href="#">브레드</a>
					</li>
					<li>
						<img class="arrow" src="http://localhost:9000/starbucks/images/icon_arrow.png">
					</li>
					<li>
						<a href="#">바나나 슈크림 큐브</a>
					</li>
				</ul>
			</div>
		</div><!-- 타이틀 -->
		<div class="content"><!-- 내용 -->
			<div>
				<div class="image"><!-- 이미지 -->
					<div><!-- 큰 이미지 -->
						<img src="http://localhost:9000/starbucks/images/bread01_1.jpg">
						<img src="http://localhost:9000/starbucks/images/more.png">
					</div>
					<div><!-- 작은 이미지 -->
						<ul>
							<li>
								<img src="http://localhost:9000/starbucks/images/bread01_1.jpg">
							</li>
						</ul>
					</div>
				</div><!-- 이미지 -->
				<div class="inform"><!-- 정보 -->
					<div><!-- 정보 타이틀 -->
						<h2>바나나 슈크림 큐브</h2>
						<span>Banana Choux Cream Cube</span>
						<div></div>
						<span>큐브모양 데니쉬 안에 바나나 슈크림을 가득 넣어 차갑고 달콤하게 즐길 수 있는 쿨 브레드입니다.</span>
					</div><!-- 정보 타이틀 -->
					<div><!-- 정보 내용 -->
						<div>
							<span>제품 영양 정보</span>
							<span>130(g)</span>
						</div>
						<div>
							<ul>
								<li>
									<span>1회 제공량 (kcal)</span>
									<span>520</span>
								</li>
								<li>
									<span>포화지방 (g)</span>
									<span>17</span>
								</li>
								<li>
									<span>나트륨 (mg)</span>
									<span>330</span>
								</li>
							</ul>
							<ul>
								<li>
									<span>당류 (g)</span>
									<span>31</span>
								</li>
								<li>
									<span>단백질 (g)</span>
									<span>6</span>
								</li>
							</ul>
						</div>
						<div>
							<span>알레르기 유발요인 : 대두 / 우유 / 난류 / 밀</span>
						</div>
					</div><!-- 정보 내용 -->
				</div><!-- 정보 -->
			</div>
			<div>
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
					<img src="http://localhost:9000/starbucks/images/sirenOrder_img_171109.png">
					<div>
						<span>사이렌오더란?</span>
						<span>매장에서 줄을 서지 않고 주문하는 쉽고 간편한 O2O (Online to Offline) 서비스로서 앱을 통해 스타벅스 음료, 푸드 및 원두의 결제 및 주문을 완료하면 매장에서 즉시 메뉴를 받을 수 있는 스타벅스만의 신개념 서비스 입니다.</span>
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