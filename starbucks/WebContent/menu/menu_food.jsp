<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
div.food{
	text-align: center;
	width: 1110px;
	margin: 0 auto;
	position: relative;
}

ul.route {
	list-style-type: none;
	text-align: right;
	margin: 0;
	padding: 0;
	position: absolute;
	right: 0;
	top: 50px;
}
ul.route li{
	display: inline-block;
	vertical-align: middle;
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
h2{
	text-align: left;
	padding: 20px 0 20px 0;
}

/* 분류 */
div.class {
	 border:1px solid lightgray;
	 border-radius: 3px;
	 padding: 30px;
	 margin: 20px 0;
}
div.btn_class{
	text-align: left;
}
div.class p{
	font-weight: bold;
	font-size: 18px;
	display: inline-block;
	margin:5px 0 10px 0;
}
div.btn_class img{
	float:right;
}
div.line{
	background-color: lightgray;
	width: 100%;
	height: 1px;	
	display: inline-block;
}
div.cate{
	text-align: left;
	margin: 25px 0 15px 0;
}
div.cate .btn_style{
	width: 200px;
	height:35px;
	background: #006633;
	border: 1px solid #006633;
	color: white;
	font-size: 14px;
	border-radius: 3px;
}
div.cate .btn_style:last-child{
	background: #f4f4f1;
	color:#333;
	border: 1px solid #f4f4f1;
}
div.cate .btn_style:hover{
	text-decoration: underline;
	cursor: pointer;
}
div.class>div>div ul{	
	list-style-type: none;
	text-align: left;
	margin:0; padding:0;
}
div.class>div>div ul>li{
	display: inline-block;
	vertical-align: middle;
	margin:0; padding:0 15px 0 0;
	font-size: 13px;
}
div.class input{
	vertical-align: middle;
}

/* 상세분류 */
div.content>div>div.show{
	text-align: left;
	padding:20px 0;
	position: relative;
}
div.content>div>div>a{
	border:1px solid gray;
	background-color: gray;
	color:white;
	font-size: 13px;
	padding: 5px;
	border-radius: 3px;
	display: inline-block;
	text-decoration: none;
	margin-right: 10px;
}
div.content>div>div>a:nth-child(2) {
	border: 1px solid lightgray;
	background-color: white;
	color:#333;
}
div.content>div>div>a:hover{
	text-decoration: underline;
}

/* 상세분류 드롭다운 */
.multiselect {
	width: 250px;
	position: absolute;
	right: 0;
	top:20px;
}

.selectBox {
  	position: relative;
}
.selectBox:hover{
	cursor: pointer;
}

.selectBox select {
 	width: 100%;
 	font-weight: bold;
  	padding:10px;
  	border-color: lightgray;
  	color: #444444;
}

.overSelect {
  	position: absolute;
 	left: 0;
	right: 0;
	top: 0;
	bottom: 0;
}

#checkboxes {
	display: none;
}

#checkboxes label {
	display: block;
	border: 1px solid lightgray;
	background-color: white;
	padding:5px;
	font-size: 14px;
	vertical-align: middle;
}
#checkboxes img {
	vertical-align: middle;
}

/* 이미지 리스트 */
div.label{
	background-color: #f4f4f1;
	padding: 15px 0;
	vertical-align: middle;
	text-align: left;
}
span.list_label{
	font-size: 17px;
	font-weight: bold;
	padding: 0 10px 0 20px;
}
div.list>div ul{
	list-style-type: none;
	text-align: left;
	margin:0; padding:0;
}
div.list>div>ul{
	width: 1140px;
	position: relative;
	left: -20px;
}
div.list>div>ul>li{
	display: inline-block;
	vertical-align: middle;
	margin:20px 0 20px 20px; padding:0;
	font-size: 13px;
	position: relative;
}
div.list>div>ul>li>ul>li>a>img{
	width: 258px;
	height: 269px;
}
div.list>div>ul>li>ul>li:nth-child(2)>img{
	position:absolute;
	bottom: 40px;
	left: 10px;
}
div.list>div>ul>li>ul>li:nth-child(3)>img{
	position:absolute;
	bottom: 40px;
	left: 60px;
}
div.list>div>ul>li>ul>li>label{
	display:block;
	margin-top:10px;
	text-align: center;
	font-size: 14px;
}
	
	
</style>
<script>
/* 상세분류 */
var expanded = false;

function showCheckboxes() {
  var checkboxes = document.getElementById("checkboxes");
  if (!expanded) {
    checkboxes.style.display = "block";
    expanded = true;
  } else {
    checkboxes.style.display = "none";
    expanded = false;
  }
}
</script>
</head>
<body>
	<!--  header -->
	<jsp:include page ="../header.jsp"></jsp:include>
	<div class="food">
		<!-- 푸드 -->
		<div>
			<div>
				<h2>
					<img src="http://localhost:9000/starbucks/images/menu_tit2.jpg">
				</h2>
				<ul class="route">
					<li>
						<a href="/">
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
						<a href="#">푸드</a>
					</li>
				</ul>
			</div>
		</div>
		
		<div class="content">
			<!-- 분류 -->
			<div class="class">
				<div class="btn_class">
					<p>분류 보기</p>
					<img src="http://localhost:9000/starbucks/images/list_up_btn.png">
				</div>
				<div class="line"></div>
				<div>
					<!-- 카테고리 테마 -->
					<div class="cate">
						<button type="button" class="btn_style">카테고리</button>
						<button type="button" class="btn_style">테마</button>
					</div>
					<!-- 상품분류 -->
					<div>
						<form method="post">
							<ul>
								<li>
									<input type="checkbox" name="all" checked="checked">
									<label for="all">전체 상품보기</label>
								</li>
								<li>
									<input type="checkbox" name="bread">
									<label for="bread">브레드</label>
								</li>
								<li>
									<input type="checkbox" name="cake">
									<label for="cake">케이크</label>
								</li>
								<li>
									<input type="checkbox" name="sand">
									<label for="sand">샌드위치 &amp; 샐러드</label>
								</li>
								<li>
									<input type="checkbox" name="hot">
									<label for="hot">따뜻한 푸드</label>
								</li>
								<li>
									<input type="checkbox" name="fru">
									<label for="fru">과일 &amp; 요거트</label>
								</li>
								<li>
									<input type="checkbox" name="snack">
									<label for="snack">스낵 &amp; 미니 디저트</label>
								</li>
								<li>
									<input type="checkbox" name="ice">
									<label for="ice">아이스크림</label>
								</li>
							</ul>
						</form>
					</div>
					<!-- 상품분류 끝 -->
				</div>
			</div>
			<!-- 분류 끝 -->
			<div>
				<!-- 상세분류 -->				
				<div class="show">
					<a href="#">사진으로 보기</a>
					<a href="#">영양정보로 보기</a>
					<form>
					  <div class="multiselect">
					    <div class="selectBox" onclick="showCheckboxes()">
					      <select>
					        <option>상세분류</option>
					      </select>
					      <div class="overSelect"></div>
					    </div>
					    <div id="checkboxes">
					      <label for="one">
					        <input type="checkbox" id="one" /><img src="http://localhost:9000/starbucks/images/mark01.png" width="21px" height="21px">신규 출시된 메뉴</label>
					      <label for="two">
					        <input type="checkbox" id="two" /><img src="http://localhost:9000/starbucks/images/mark02.png" width="21px" height="21px">한정기간 출시되는 시즌성 메뉴</label>
					    </div>
					  </div>
					</form>
				</div>
				<!-- 상세분류 끝 -->
				<!-- 이미지 리스트 -->
				<div class="list">
					<!-- 라벨 -->
					<div class="label">
						<span class="list_label">브레드</span>
					</div>
					<!-- 브레드 이미지 -->
					<div>
						<ul>
							<li>
								<ul>
									<li><a href="#"><img src="http://localhost:9000/starbucks/images/bread01.jpg" name="bread01"></a></li>
									<li><img src="http://localhost:9000/starbucks/images/mark01.png"></li>
									<li><label for="bread01">바나나 슈크림 큐브</label></li>
								</ul>
							</li>
							<li>
								<ul>
									<li><a href="#"><img src="http://localhost:9000/starbucks/images/bread02.jpg" name="bread02"></a></li>
									<li><label for="bread02">쿠키 블루베리 잼 머핀</label></li>
								</ul>
							</li>
							<li>
								<ul>
									<li><a href="#"><img src="http://localhost:9000/starbucks/images/bread03.jpg" name="bread03"></a></li>
									<li><label for="bread03">리얼 감자 베이글</label></li>
								</ul>
							</li>
							<li>
								<ul>
									<li><a href="#"><img src="http://localhost:9000/starbucks/images/bread04.jpg" name="bread04"></a></li>
									<li><label for="bread04">리얼 블루베리 베이글</label></li>
								</ul>
							</li>
							<li>
								<ul>
									<li><a href="#"><img src="http://localhost:9000/starbucks/images/bread05.jpg" name="bread05"></a></li>
									<li><label for="bread05">리얼 치즈 베이글</label></li>
								</ul>
							</li>
							<li>
								<ul>
									<li><a href="#"><img src="http://localhost:9000/starbucks/images/bread06.jpg" name="bread06"></a></li>
									<li><label for="bread06">바질 토마토 크림치즈 베이글</label></li>
								</ul>
							</li>
							<li>
								<ul>
									<li><a href="#"><img src="http://localhost:9000/starbucks/images/bread07.jpg" name="cold_brew07"></a></li>
									<li><label for="bread07">미니 클래식 스콘</label></li>
								</ul>
							</li>
							<li>
								<ul>
									<li><a href="#"><img src="http://localhost:9000/starbucks/images/bread08.jpg" name="bread08"></a></li>
									<li><label for="bread08">카카오 초콜릿 스콘</label></li>
								</ul>
							</li>
							<li>
								<ul>
									<li><a href="#"><img src="http://localhost:9000/starbucks/images/bread09.jpg" name="bread09"></a></li>
									<li><label for="bread09">클래식 스콘</label></li>
								</ul>
							</li>
							<li>
								<ul>
									<li><a href="#"><img src="http://localhost:9000/starbucks/images/bread10.jpg" name="bread10"></a></li>
									<li><label for="bread10">트리플 미니 스콘</label></li>
								</ul>
							</li>
							<li>
								<ul>
									<li><a href="#"><img src="http://localhost:9000/starbucks/images/bread11.jpg" name="bread11"></a></li>
									<li><label for="bread11">한라봉 스콘</label></li>
								</ul>
							</li>
							<li>
								<ul>
									<li><a href="#"><img src="http://localhost:9000/starbucks/images/bread12.jpg" name="bread12"></a></li>
									<li><label for="bread12">거문 오름 크루아상</label></li>
								</ul>
							</li>
							<li>
								<ul>
									<li><a href="#"><img src="http://localhost:9000/starbucks/images/bread13.jpg" name="bread13"></a></li>
									<li><label for="bread13">리프 파이</label></li>
								</ul>
							</li>
							<li>
								<ul>
									<li><a href="#"><img src="http://localhost:9000/starbucks/images/bread14.jpg" name="bread14"></a></li>
									<li><label for="bread14">매콤 소시지 불고기 베이크</label></li>
								</ul>
							</li>
							<li>
								<ul>
									<li><a href="#"><img src="http://localhost:9000/starbucks/images/bread15.jpg" name="bread15"></a></li>
									<li><label for="bread15">뺑 오 쇼콜라</label></li>
								</ul>
							</li>
							<li>
								<ul>
									<li><a href="#"><img src="http://localhost:9000/starbucks/images/bread16.jpg" name="bread16"></a></li>
									<li><label for="bread16">스모크드 소시지 브레드</label></li>
								</ul>
							</li>
							<li>
								<ul>
									<li><a href="#"><img src="http://localhost:9000/starbucks/images/bread17.jpg" name="bread17"></a></li>
									<li><label for="bread17">연유 밀크모닝</label></li>
								</ul>
							</li>
							<li>
								<ul>
									<li><a href="#"><img src="http://localhost:9000/starbucks/images/bread18.jpg" name="bread18"></a></li>
									<li><label for="bread18">오렌지 카라멜 데니핀</label></li>
								</ul>
							</li>
							<li>
								<ul>
									<li><a href="#"><img src="http://localhost:9000/starbucks/images/bread19.jpg" name="bread19"></a></li>
									<li><label for="bread19">올래 마나 쿠류어성</label></li>
								</ul>
							</li>
							<li>
								<ul>
									<li><a href="#"><img src="http://localhost:9000/starbucks/images/bread20.jpg" name="bread20"></a></li>
									<li><label for="bread20">무도 땅콩 데니시롤</label></li>
								</ul>
							</li>
							<li>
								<ul>
									<li><a href="#"><img src="http://localhost:9000/starbucks/images/bread21.jpg" name="bread21"></a></li>
									<li><label for="bread21">우유 품은 초콜릿 크루아상</label></li>
								</ul>
							</li>
							<li>
								<ul>
									<li><a href="#"><img src="http://localhost:9000/starbucks/images/bread22.jpg" name="bread22"></a></li>
									<li><label for="bread22">제주 한라봉 뺑오쇼콜라</label></li>
								</ul>
							</li>
							<li>
								<ul>
									<li><a href="#"><img src="http://localhost:9000/starbucks/images/bread23.jpg" name="bread23"></a></li>
									<li><label for="bread23">주상절리 파이</label></li>
								</ul>
							</li>
							<li>
								<ul>
									<li><a href="#"><img src="http://localhost:9000/starbucks/images/bread24.jpg" name="bread24"></a></li>
									<li><label for="bread24">초콜릿 롤링 크루아상</label></li>
								</ul>
							</li>
							<li>
								<ul>
									<li><a href="#"><img src="http://localhost:9000/starbucks/images/bread25.jpg" name="bread25"></a></li>
									<li><label for="bread25">크림치즈 브리오슈 보스톡</label></li>
								</ul>
							</li>
							<li>
								<ul>
									<li><a href="#"><img src="http://localhost:9000/starbucks/images/bread26.jpg" name="bread26"></a></li>
									<li><label for="bread26">프렌치 크루아상</label></li>
								</ul>
							</li>
							<li>
								<ul>
									<li><a href="#"><img src="http://localhost:9000/starbucks/images/bread27.jpg" name="bread27"></a></li>
									<li><label for="bread27">하트 파이</label></li>
								</ul>
							</li>
							<li>
								<ul>
									<li><a href="#"><img src="http://localhost:9000/starbucks/images/bread28.jpg" name="bread28"></a></li>
									<li><label for="bread28">한 입에 쏙 치즈 꿀 볼</label></li>
								</ul>
							</li>
						</ul>
					</div>
					<!-- 브레드 끝 -->
					<!-- 라벨 -->
					<div class="label">
						<span class="list_label">케이크</span>
					</div>
					<!-- 케이크 이미지 -->
					<div>
						<ul>
							<li>
								<ul>
									<li><a href="#"><img src="http://localhost:9000/starbucks/images/cake01.jpg" name="cake01"></a></li>
									<li><label for="cake01">The 촉촉 초콜릿 생크림 케이크</label></li>
								</ul>
							</li>
							<li>
								<ul>
									<li><a href="#"><img src="http://localhost:9000/starbucks/images/cake02.jpg" name="cake02"></a></li>
									<li><label for="cake02">바나나 슈크림 타르트</label></li>
								</ul>
							</li>
							<li>
								<ul>
									<li><a href="#"><img src="http://localhost:9000/starbucks/images/cake03.jpg" name="cake03"></a></li>
									<li><label for="cake03">바나나 체커스 케이크</label></li>
								</ul>
							</li>
							<li>
								<ul>
									<li><a href="#"><img src="http://localhost:9000/starbucks/images/cake04.jpg" name="cake04"></a></li>
									<li><label for="cake04">7 레이어 가나슈 케이크</label></li>
								</ul>
							</li>
							<li>
								<ul>
									<li><a href="#"><img src="http://localhost:9000/starbucks/images/cake05.jpg" name="cake05"></a></li>
									<li><label for="cake05">라즈베리 쇼콜라</label></li>
								</ul>
							</li>
							<li>
								<ul>
									<li><a href="#"><img src="http://localhost:9000/starbucks/images/cake06.jpg" name="cake06"></a></li>
									<li><label for="cake06">레드벨벳 크림치즈 케이크</label></li>
								</ul>
							</li>
							<li>
								<ul>
									<li><a href="#"><img src="http://localhost:9000/starbucks/images/cake07.jpg" name="cake07"></a></li>
									<li><label for="cake07">리얼 피칸 파이</label></li>
								</ul>
							</li>
							<li>
								<ul>
									<li><a href="#"><img src="http://localhost:9000/starbucks/images/cake08.jpg" name="cake08"></a></li>
									<li><label for="cake08">마스카포네 티라미수 케이크</label></li>
								</ul>
							</li>
							<li>
								<ul>
									<li><a href="#"><img src="http://localhost:9000/starbucks/images/cake09.jpg" name="cake09"></a></li>
									<li><label for="cake09">밀당 에그 타르트</label></li>
								</ul>
							</li>
							<li>
								<ul>
									<li><a href="#"><img src="http://localhost:9000/starbucks/images/cake10.jpg" name="cake10"></a></li>
									<li><label for="cake10">밀당 초코 타르트</label></li>
								</ul>
							</li>
							<li>
								<ul>
									<li><a href="#"><img src="http://localhost:9000/starbucks/images/cake11.jpg" name="cake11"></a></li>
									<li><label for="cake11">번트 치즈 케이크</label></li>
								</ul>
							</li>
							<li>
								<ul>
									<li><a href="#"><img src="http://localhost:9000/starbucks/images/cake12.jpg" name="cake12"></a></li>
									<li><label for="cake12">부드러운 생크림 카스텔라</label></li>
								</ul>
							</li>
							<li>
								<ul>
									<li><a href="#"><img src="http://localhost:9000/starbucks/images/cake13.jpg" name="cake13"></a></li>
									<li><label for="cake13">부드러운 티라미수 롤</label></li>
								</ul>
							</li>
							<li>
								<ul>
									<li><a href="#"><img src="http://localhost:9000/starbucks/images/cake14.jpg" name="cake14"></a></li>
									<li><label for="cake14">블루베리 쿠키 치즈 케이크</label></li>
								</ul>
							</li>
							<li>
								<ul>
									<li><a href="#"><img src="http://localhost:9000/starbucks/images/cake15.jpg" name="cake15"></a></li>
									<li><label for="cake15">상큼한 딸기 생크림 카스텔라</label></li>
								</ul>
							</li>
							<li>
								<ul>
									<li><a href="#"><img src="http://localhost:9000/starbucks/images/cake16.jpg" name="cake16"></a></li>
									<li><label for="cake16">슈크림 가득 바움쿠헨</label></li>
								</ul>
							</li>
							<li>
								<ul>
									<li><a href="#"><img src="http://localhost:9000/starbucks/images/cake17.jpg" name="cake17"></a></li>
									<li><label for="cake17">진한 녹차 생크림 케이크</label></li>
								</ul>
							</li>
							<li>
								<ul>
									<li><a href="#"><img src="http://localhost:9000/starbucks/images/cake18.jpg" name="cake18"></a></li>
									<li><label for="cake18">진한 얼 그레이 생크림 케이크</label></li>
								</ul>
							</li>
							<li>
								<ul>
									<li><a href="#"><img src="http://localhost:9000/starbucks/images/cake19.jpg" name="cake19"></a></li>
									<li><label for="cake19">진한 초콜릿 생크림 카스텔라</label></li>
								</ul>
							</li>
							<li>
								<ul>
									<li><a href="#"><img src="http://localhost:9000/starbucks/images/cake20.jpg" name="cake20"></a></li>
									<li><label for="cake20">진한 초콜릿 크레이프 케이크</label></li>
								</ul>
							</li>
							<li>
								<ul>
									<li><a href="#"><img src="http://localhost:9000/starbucks/images/cake21.jpg" name="cake21"></a></li>
									<li><label for="cake21">진한 초콜릿 퍼지 케이크</label></li>
								</ul>
							</li>
							<li>
								<ul>
									<li><a href="#"><img src="http://localhost:9000/starbucks/images/cake22.jpg" name="cake22"></a></li>
									<li><label for="cake22">촉촉 슈크림 레이어 케이크</label></li>
								</ul>
							</li>
							<li>
								<ul>
									<li><a href="#"><img src="http://localhost:9000/starbucks/images/cake23.jpg" name="cake23"></a></li>
									<li><label for="cake23">클라우드 치즈 케이크</label></li>
								</ul>
							</li>
							<li>
								<ul>
									<li><a href="#"><img src="http://localhost:9000/starbucks/images/cake24.jpg" name="cake24"></a></li>
									<li><label for="cake24">호두 당근 케이크</label></li>
								</ul>
							</li>
							<li>
								<ul>
									<li><a href="#"><img src="http://localhost:9000/starbucks/images/cake25.jpg" name="cake25"></a></li>
									<li><label for="cake25">당근 현무암 케이크</label></li>
								</ul>
							</li>
							<li>
								<ul>
									<li><a href="#"><img src="http://localhost:9000/starbucks/images/cake26.jpg" name="cake26"></a></li>
									<li><label for="cake26">백년초콜릿 크런치 케이크</label></li>
								</ul>
							</li>
							<li>
								<ul>
									<li><a href="#"><img src="http://localhost:9000/starbucks/images/cake27.jpg" name="cake27"></a></li>
									<li><label for="cake27">새코롬 돌코롬 한라봉 케이크</label></li>
								</ul>
							</li>
							<li>
								<ul>
									<li><a href="#"><img src="http://localhost:9000/starbucks/images/cake28.jpg" name="cake28"></a></li>
									<li><label for="cake28">제주 리얼녹차 티라미수 아일랜드</label></li>
								</ul>
							</li>
							<li>
								<ul>
									<li><a href="#"><img src="http://localhost:9000/starbucks/images/cake29.jpg" name="cake29"></a></li>
									<li><label for="cake29">티라미수 아일랜드</label></li>
								</ul>
							</li>
							<li>
								<ul>
									<li><a href="#"><img src="http://localhost:9000/starbucks/images/cake30.jpg" name="cake30"></a></li>
									<li><label for="cake30">블루베리 쿠키 치즈 케이크</label></li>
								</ul>
							</li>
							<li>
								<ul>
									<li><a href="#"><img src="http://localhost:9000/starbucks/images/cake31.jpg" name="cake31"></a></li>
									<li><label for="cake31">세븐 레이어 가나슈 케이크</label></li>
								</ul>
							</li>
							<li>
								<ul>
									<li><a href="#"><img src="http://localhost:9000/starbucks/images/cake32.jpg" name="cake32"></a></li>
									<li><label for="cake32">청담스타 얼 그레이 밀크 케이크</label></li>
								</ul>
							</li>
							<li>
								<ul>
									<li><a href="#"><img src="http://localhost:9000/starbucks/images/cake33.jpg" name="cake33"></a></li>
									<li><label for="cake33">청담스타 오 허니 케이크</label></li>
								</ul>
							</li>
							<li>
								<ul>
									<li><a href="#"><img src="http://localhost:9000/starbucks/images/cake34.jpg" name="cake34"></a></li>
									<li><label for="cake34">크레이프 에멘탈 치즈 케이크</label></li>
								</ul>
							</li>
							<li>
								<ul>
									<li><a href="#"><img src="http://localhost:9000/starbucks/images/cake35.jpg" name="cake35"></a></li>
									<li><label for="cake35">피칸 브라우니</label></li>
								</ul>
							</li>
							<li>
								<ul>
									<li><a href="#"><img src="http://localhost:9000/starbucks/images/cake36.jpg" name="cake36"></a></li>
									<li><label for="cake36">헤븐리 티라미수</label></li>
								</ul>
							</li>
						</ul>
					</div>
					<!-- 케이크 끝 -->
					<!-- 에스프레소 라벨 -->
					<div class="label">
						<span class="list_label">에스프레소</span>
					</div>
					<!-- 에스프레소 이미지 -->
					<div>
						<ul>
							<li>
								<ul>
									<li><a href="#"><img src="http://localhost:9000/starbucks/images/esp01.jpg" name="esp01"></a></li>
									<li><label for="esp01">에스프레소 콘 파나</label></li>
								</ul>
							</li>
							<li>
								<ul>
									<li><a href="#"><img src="http://localhost:9000/starbucks/images/esp02.jpg" name="esp02"></a></li>
									<li><label for="esp02">에스프레소 마키아또</label></li>
								</ul>
							</li>
							<li>
								<ul>
									<li><a href="#"><img src="http://localhost:9000/starbucks/images/esp03.jpg" name="esp03"></a></li>
									<li><label for="esp03">아이스 카페 아메리카노</label></li>
								</ul>	
							</li>
							<li>
								<ul>
									<li><a href="#"><img src="http://localhost:9000/starbucks/images/esp04.jpg" name="esp04"></a></li>
									<li><label for="esp04">카페 아메리카노</label></li>
								</ul>
							</li>
							<li>
								<ul>
									<li><a href="#"><img src="http://localhost:9000/starbucks/images/esp05.jpg" name="esp05"></a></li>
									<li><label for="esp05">아이스 카라멜 마키아또</label></li>
								</ul>
							</li>
							<li>
								<ul>
									<li><a href="#"><img src="http://localhost:9000/starbucks/images/esp06.jpg" name="esp06"></a></li>
									<li><label for="esp06">카라멜 마키아또</label></li>
								</ul>
							</li>
							<li>
								<ul>
									<li><a href="#"><img src="http://localhost:9000/starbucks/images/esp07.jpg" name="esp07"></a></li>
									<li><label for="esp07">아이스 카푸치노</label></li>
								</ul>
							</li>
							<li>
								<ul>
									<li><a href="#"><img src="http://localhost:9000/starbucks/images/esp08.jpg" name="esp08"></a></li>
									<li><label for="esp08">카푸치노</label></li>
								</ul>
							</li>
							<li>
								<ul>
									<li><a href="#"><img src="http://localhost:9000/starbucks/images/esp09.jpg" name="esp09"></a></li>
									<li><label for="esp09">라벤더 카페 브레베</label></li>
								</ul>
							</li>
							<li>
								<ul>
									<li><a href="#"><img src="http://localhost:9000/starbucks/images/esp10.jpg" name="esp10"></a></li>
									<li><label for="esp10">럼 샷 코르타도</label></li>
								</ul>
							</li>
							<li>
								<ul>
									<li><a href="#"><img src="http://localhost:9000/starbucks/images/esp11.jpg" name="esp11"></a></li>
									<li><label for="esp11">바닐라 빈 라떼</label></li>
								</ul>
							</li>
							<li>
								<ul>
									<li><a href="#"><img src="http://localhost:9000/starbucks/images/esp12.jpg" name="esp12"></a></li>
									<li><label for="esp12">블론드 에스프레소 라떼</label></li>
								</ul>
							</li>
							<li>
								<ul>
									<li><a href="#"><img src="http://localhost:9000/starbucks/images/esp13.jpg" name="esp13"></a></li>
									<li><label for="esp13">스타벅스 돌체 라떼</label></li>
								</ul>
							</li>
							<li>
								<ul>
									<li><a href="#"><img src="http://localhost:9000/starbucks/images/esp14.jpg" name="esp14"></a></li>
									<li><label for="esp14">아이스 라벤더 카페 브레베</label></li>
								</ul>
							</li>
							<li>
								<ul>
									<li><a href="#"><img src="http://localhost:9000/starbucks/images/esp15.jpg" name="esp15"></a></li>
									<li><label for="esp15">아이스 바닐라 빈 라떼</label></li>
								</ul>
							</li>
							<li>
								<ul>
									<li><a href="#"><img src="http://localhost:9000/starbucks/images/esp16.jpg" name="esp16"></a></li>
									<li><label for="esp16">아이스 블론드 에스프레소 라떼</label></li>
								</ul>
							</li>
							<li>
								<ul>
									<li><a href="#"><img src="http://localhost:9000/starbucks/images/esp17.jpg" name="esp17"></a></li>
									<li><label for="esp17">아이스 스타벅스 돌체 라떼</label></li>
								</ul>
							</li>
							<li>
								<ul>
									<li><a href="#"><img src="http://localhost:9000/starbucks/images/esp18.jpg" name="esp18"></a></li>
									<li><label for="esp18">아이스 카페 라떼</label></li>
								</ul>
							</li>
							<li>
								<ul>
									<li><a href="#"><img src="http://localhost:9000/starbucks/images/esp19.jpg" name="esp19"></a></li>
									<li><label for="esp19">제주 별다방 땅콩 라떼</label></li>
								</ul>
							</li>
							<li>
								<ul>
									<li><a href="#"><img src="http://localhost:9000/starbucks/images/esp20.jpg" name="esp20"></a></li>
									<li><label for="esp20">카페 라떼</label></li>
								</ul>
							</li>
							<li>
								<ul>
									<li><a href="#"><img src="http://localhost:9000/starbucks/images/esp21.jpg" name="esp21"></a></li>
									<li><label for="esp21">아이스 카페 모카</label></li>
								</ul>
							</li>
							<li>
								<ul>
									<li><a href="#"><img src="http://localhost:9000/starbucks/images/esp22.jpg" name="esp22"></a></li>
									<li><label for="esp22">아이스 화이트 초콜릿 모카</label></li>
								</ul>
							</li>
							<li>
								<ul>
									<li><a href="#"><img src="http://localhost:9000/starbucks/images/esp23.jpg" name="esp23"></a></li>
									<li><label for="esp23">카페 모카</label></li>
								</ul>
							</li>
							<li>
								<ul>
									<li><a href="#"><img src="http://localhost:9000/starbucks/images/esp24.jpg" name="esp24"></a></li>
									<li><label for="esp24">화이트 초콜릿 모카</label></li>
								</ul>
							</li>
							<li>
								<ul>
									<li><a href="#"><img src="http://localhost:9000/starbucks/images/esp25.jpg" name="esp25"></a></li>
									<li><label for="esp25">바닐라 플랫 화이트</label></li>
								</ul>
							</li>
							<li>
								<ul>
									<li><a href="#"><img src="http://localhost:9000/starbucks/images/esp26.jpg" name="esp26"></a></li>
									<li><label for="esp26">바닐라 스타벅스 더블 샷</label></li>
								</ul>
							</li>
							<li>
								<ul>
									<li><a href="#"><img src="http://localhost:9000/starbucks/images/esp27.jpg" name="esp27"></a></li>
									<li><label for="esp27">블론드 바닐라 더블 샷 마키아또</label></li>
								</ul>
							</li>
							<li>
								<ul>
									<li><a href="#"><img src="http://localhost:9000/starbucks/images/esp28.jpg" name="esp28"></a></li>
									<li><label for="esp28">사케라또 아포가토</label></li>
								</ul>
							</li>
							<li>
								<ul>
									<li><a href="#"><img src="http://localhost:9000/starbucks/images/esp29.jpg" name="esp29"></a></li>
									<li><label for="esp29">스파클링 시트러스 에스프레소</label></li>
								</ul>
							</li>
							<li>
								<ul>
									<li><a href="#"><img src="http://localhost:9000/starbucks/images/esp30.jpg" name="esp30"></a></li>
									<li><label for="esp30">아이스 블론드 바닐라 더블 샷 마키아또</label></li>
								</ul>
							</li>
							<li>
								<ul>
									<li><a href="#"><img src="http://localhost:9000/starbucks/images/esp31.jpg" name="esp31"></a></li>
									<li><label for="esp31">에스프레소</label></li>
								</ul>
							</li>
							<li>
								<ul>
									<li><a href="#"><img src="http://localhost:9000/starbucks/images/esp32.jpg" name="esp32"></a></li>
									<li><label for="esp32">커피 스타벅스 더블 샷</label></li>
								</ul>
							</li>
							<li>
								<ul>
									<li><a href="#"><img src="http://localhost:9000/starbucks/images/esp33.jpg" name="esp33"></a></li>
									<li><label for="esp33">클래식 아포가토</label></li>
								</ul>
							</li>
							<li>
								<ul>
									<li><a href="#"><img src="http://localhost:9000/starbucks/images/esp34.jpg" name="esp34"></a></li>
									<li><label for="esp34">헤이즐넛 스타벅스 더블 샷</label></li>
								</ul>
							</li>
						</ul>
					</div>
					<!-- 에스프레소 끝 -->
					<!-- 프라푸치노 라벨 -->
					<div class="label">
						<span class="list_label">프라푸치노</span>
					</div>
					<!-- 프라푸치노 이미지 -->
					<div>
						<ul>
							<li>
								<ul>
									<li><a href="#"><img src="http://localhost:9000/starbucks/images/fra01.jpg" name="fra01"></a></li>
									<li><img src="http://localhost:9000/starbucks/images/mark01.png"></li>
									<li><img src="http://localhost:9000/starbucks/images/mark02.png"></li>
									<li><label for="fra01">바나나 크림 다크 초코 블렌디드</label></li>
								</ul>
							</li>
							<li>
								<ul>
									<li><a href="#"><img src="http://localhost:9000/starbucks/images/fra02.jpg" name="fra02"></a></li>
									<li><label for="fra02">더블 에스프레소 칩 프라푸치노</label></li>
								</ul>
							</li>
							<li>
								<ul>
									<li><a href="#"><img src="http://localhost:9000/starbucks/images/fra03.jpg" name="fra03"></a></li>
									<li><label for="fra03">모카 프라푸치노</label></li>
								</ul>
							</li>
							<li>
								<ul>
									<li><a href="#"><img src="http://localhost:9000/starbucks/images/fra04.jpg" name="fra04"></a></li>
									<li><label for="fra04">에스프레소 프라푸치노</label></li>
								</ul>
							</li>
							<li>
								<ul>
									<li><a href="#"><img src="http://localhost:9000/starbucks/images/fra05.jpg" name="fra05"></a></li>
									<li><label for="fra05">자바 칩 프라푸치노</label></li>
								</ul>
							</li>
							<li>
								<ul>
									<li><a href="#"><img src="http://localhost:9000/starbucks/images/fra06.jpg" name="fra06"></a></li>
									<li><label for="fra06">제주 별다방 땅콩 프라푸치노</label></li>
								</ul>
							</li>
							<li>
								<ul>
									<li><a href="#"><img src="http://localhost:9000/starbucks/images/fra07.jpg" name="fra07"></a></li>
									<li><label for="fra07">카라멜 프라푸치노</label></li>
								</ul>
							</li>
							<li>
								<ul>
									<li><a href="#"><img src="http://localhost:9000/starbucks/images/fra08.jpg" name="fra08"></a></li>
									<li><label for="fra08">화이트 초콜릿 모카 프라푸치노</label></li>
								</ul>
							</li>
							<li>
								<ul>
									<li><a href="#"><img src="http://localhost:9000/starbucks/images/fra09.jpg" name="fra09"></a></li>
									<li><label for="fra09">바닐라 크림 프라푸치노</label></li>
								</ul>
							</li>
							<li>
								<ul>
									<li><a href="#"><img src="http://localhost:9000/starbucks/images/fra10.jpg" name="fra10"></a></li>
									<li><label for="fra10">제주 까망 크림 프라푸치노</label></li>
								</ul>
							</li>
							<li>
								<ul>
									<li><a href="#"><img src="http://localhost:9000/starbucks/images/fra11.jpg" name="fra11"></a></li>
									<li><label for="fra11">제주 쑥떡 크림 프라푸치노</label></li>
								</ul>
							</li>
							<li>
								<ul>
									<li><a href="#"><img src="http://localhost:9000/starbucks/images/fra12.jpg" name="fra12"></a></li>
									<li><label for="fra12">제주 유기농 말차로 만든 크림 프라푸치노</label></li>
								</ul>
							</li>
							<li>
								<ul>
									<li><a href="#"><img src="http://localhost:9000/starbucks/images/fra13.jpg" name="fra13"></a></li>
									<li><label for="fra13">초콜릿 크림 칩 프라푸치노</label></li>
								</ul>
							</li>
							<li>
								<ul>
									<li><a href="#"><img src="http://localhost:9000/starbucks/images/fra14.jpg" name="fra14"></a></li>
									<li><label for="fra14">화이트 딸기 크림 프라푸치노</label></li>
								</ul>
							</li>
							<li>
								<ul>
									<li><a href="#"><img src="http://localhost:9000/starbucks/images/fra15.jpg" name="fra15"></a></li>
									<li><label for="fra15">화이트 타이거 프라푸치노</label></li>
								</ul>
							</li>
						</ul>
					</div>
					<!-- 프라푸치노 끝 -->
					<!-- 블렌디드 -->
					<!-- 블렌디드 라벨 -->
					<div class="label">
						<span class="list_label">블렌디드</span>
					</div>
					<!-- 블렌디드 이미지 -->
					<div>
						<ul>
							<li>
								<ul>
									<li><a href="#"><img src="http://localhost:9000/starbucks/images/blended01.jpg" name="blended01"></a></li>
									<li><label for="blended01">망고 패션 후르츠 블렌디드</label></li>
								</ul>
							</li>
							<li>
								<ul>
									<li><a href="#"><img src="http://localhost:9000/starbucks/images/blended02.jpg" name="blended02"></a></li>
									<li><label for="blended02">딸기 딜라이트 요거트 블렌디드</label></li>
								</ul>
							</li>
							<li>
								<ul>
									<li><a href="#"><img src="http://localhost:9000/starbucks/images/blended03.jpg" name="blended03"></a></li>
									<li><label for="blended03">망고 바나나 블렌디드</label></li>
								</ul>
							</li>
							<li>
								<ul>
									<li><a href="#"><img src="http://localhost:9000/starbucks/images/blended04.jpg" name="blended04"></a></li>
									<li><label for="blended04">민트 초콜릿 칩 블렌디드</label></li>
								</ul>
							</li>
							<li>
								<ul>
									<li><a href="#"><img src="http://localhost:9000/starbucks/images/blended05.jpg" name="blended05"></a></li>
									<li><label for="blended05">제주 천혜향 블랙 티 블렌디드</label></li>
								</ul>
							</li>
							<li>
								<ul>
									<li><a href="#"><img src="http://localhost:9000/starbucks/images/blended06.jpg" name="blended06"></a></li>
									<li><label for="blended06">피치 &amp; 레몬 블렌디드</label></li>
								</ul>
							</li>
						</ul>
					</div>
					<!-- 블렌디드 끝 -->
					<!-- 피지오 -->
					<!-- 피지오 라벨 -->
					<div class="label">
						<span class="list_label">피지오</span>
					</div>
					<!-- 피지오 이미지 -->
					<div>
						<ul>
							<li>
								<ul>
									<li><a href="#"><img src="http://localhost:9000/starbucks/images/fizzo01.jpg" name="fizzo01"></a></li>
									<li><label for="fizzo01">블랙 티 레모네이드 피지오</label></li>
								</ul>
							</li>
							<li>
								<ul>
									<li><a href="#"><img src="http://localhost:9000/starbucks/images/fizzo02.jpg" name="fizzo02"></a></li>
									<li><label for="fizzo02">쿨 라임 피지오</label></li>
								</ul>
							</li>
							<li>
								<ul>
									<li><a href="#"><img src="http://localhost:9000/starbucks/images/fizzo03.jpg" name="fizzo03"></a></li>
									<li><label for="fizzo03">패션 탱고 티 레모네이드 피지오</label></li>
								</ul>
							</li>
						</ul>
					</div>
				<!-- 피지오 끝 -->
				</div>
			</div>
		</div>
		
	</div>
	<!--  footer -->
	<jsp:include page ="../footer.jsp"></jsp:include>
</body>
</html>