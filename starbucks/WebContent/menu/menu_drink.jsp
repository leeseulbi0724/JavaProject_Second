<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
div.drink{
	text-align: center;
	width: 1110px;
	margin: 0 auto 150px auto;
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

/* 상세분류 드롭다운*/
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
	padding: 10px 0;
	vertical-align: middle;
	text-align: left;
}
span.list_label{
	font-size: 17px;
	font-weight: bold;
	padding: 0 10px 0 20px;
}
div.label>span:last-child{
	font-size: 11px;
}
div.list>div>img {
	width: 45px;
	height: 36px;
	vertical-align: middle;
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
	<div class="drink">
		<!-- 음료 -->
		<div>
			<div>
				<h2>
					<img src="http://localhost:9000/starbucks/images/menu_tit1.jpg">
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
						<a href="#">음료</a>
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
									<input type="checkbox" name="cold_brew">
									<label for="cold_brew">콜드 브루 커피</label>
								</li>
								<li>
									<input type="checkbox" name="brood">
									<label for="brood">브루드 커피</label>
								</li>
								<li>
									<input type="checkbox" name="esp">
									<label for="esp">에스프레소</label>
								</li>
								<li>
									<input type="checkbox" name="fra">
									<label for="fra">프라푸치노</label>
								</li>
								<li>
									<input type="checkbox" name="blended">
									<label for="blended">블렌디드</label>
								</li>
								<li>
									<input type="checkbox" name="fizzo">
									<label for="fizzo">스타벅스 피지오</label>
								</li>
								<li>
									<input type="checkbox" name="tea">
									<label for="tea">티(티바나)</label>
								</li>
								<li>
									<input type="checkbox" name="etc">
									<label for="etc">기타 제조 음료</label>
								</li>
								<li>
									<input type="checkbox" name="juice">
									<label for="juice">스타벅스 주스(병음료)</label>
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
					<!-- 콜드브루 라벨 -->
					<div class="label">
						<span class="list_label">콜드 브루 커피</span>
						<img src="http://localhost:9000/starbucks/images/logo_decaf.png">
						<span>디카페인 에스프레소 샷 추가 가능 (일부 음료 제외)</span>
					</div>
					<!-- 콜드브루 이미지 -->
					<div>
						<ul>
							<li>
								<ul>
									<li><a href="#"><img src="http://localhost:9000/starbucks/images/cold_brew01.jpg" name="cold_brew01"></a></li>
									<li><img src="http://localhost:9000/starbucks/images/mark01.png"></li>
									<li><label for="cold_brew01">나이트로 바닐라 크림</label></li>
								</ul>
							</li>
							<li>
								<ul>
									<li><a href="#"><img src="http://localhost:9000/starbucks/images/cold_brew02.jpg" name="cold_brew02"></a></li>
									<li><img src="http://localhost:9000/starbucks/images/mark01.png"></li>
									<li><img src="http://localhost:9000/starbucks/images/mark02.png"></li>
									<li><label for="cold_brew02">포레스트 콜드 브루</label></li>
								</ul>
							</li>
							<li>
								<ul>
									<li><a href="#"><img src="http://localhost:9000/starbucks/images/cold_brew03.jpg" name="cold_brew03"></a></li>
									<li><label for="cold_brew03">나이트로 콜드 브루</label></li>
								</ul>
							</li>
							<li>
								<ul>
									<li><a href="#"><img src="http://localhost:9000/starbucks/images/cold_brew04.jpg" name="cold_brew04"></a></li>
									<li><label for="cold_brew04">돌체 콜드 브루</label></li>
								</ul>
							</li>
							<li>
								<ul>
									<li><a href="#"><img src="http://localhost:9000/starbucks/images/cold_brew05.jpg" name="cold_brew05"></a></li>
									<li><label for="cold_brew05">바닐라 크림 콜드 브루</label></li>
								</ul>
							</li>
							<li>
								<ul>
									<li><a href="#"><img src="http://localhost:9000/starbucks/images/cold_brew06.jpg" name="cold_brew06"></a></li>
									<li><label for="cold_brew06">벨벳 다크 모카 나이트로</label></li>
								</ul>
							</li>
							<li>
								<ul>
									<li><a href="#"><img src="http://localhost:9000/starbucks/images/cold_brew07.jpg" name="cold_brew07"></a></li>
									<li><label for="cold_brew07">콜드 브루</label></li>
								</ul>
							</li>
							<li>
								<ul>
									<li><a href="#"><img src="http://localhost:9000/starbucks/images/cold_brew08.jpg" name="cold_brew08"></a></li>
									<li><label for="cold_brew08">콜드 브루 몰트</label></li>
								</ul>
							</li>
							<li>
								<ul>
									<li><a href="#"><img src="http://localhost:9000/starbucks/images/cold_brew09.jpg" name="cold_brew09"></a></li>
									<li><label for="cold_brew09">콜드 브루 오트 라떼</label></li>
								</ul>
							</li>
							<li>
								<ul>
									<li><a href="#"><img src="http://localhost:9000/starbucks/images/cold_brew10.jpg" name="cold_brew10"></a></li>
									<li><label for="cold_brew10">콜드 브루 플로트</label></li>
								</ul>
							</li>
							<li>
								<ul>
									<li><a href="#"><img src="http://localhost:9000/starbucks/images/cold_brew11.jpg" name="cold_brew11"></a></li>
									<li><label for="cold_brew11">프렌치 애플 타르트 나이트로</label></li>
								</ul>
							</li>
						</ul>
					</div>
					<!-- 콜드브루 끝 -->
					<!-- 브루드 커피 라벨 -->
					<div class="label">
						<span class="list_label">브루드 커피</span>
						<img src="http://localhost:9000/starbucks/images/logo_decaf.png">
						<span>디카페인 에스프레소 샷 추가 가능 (일부 음료 제외)</span>
					</div>
					<!-- 브루드 커피 이미지 -->
					<div>
						<ul>
							<li>
								<ul>
									<li><a href="#"><img src="http://localhost:9000/starbucks/images/brood01.jpg" name="brood01"></a></li>
									<li><label for="cold_brew01">아이스 커피</label></li>
								</ul>
							</li>
							<li>
								<ul>
									<li><a href="#"><img src="http://localhost:9000/starbucks/images/brood02.jpg" name="brood02"></a></li>
									<li><label for="brood02">오늘의 커피</label></li>
								</ul>
							</li>
						</ul>
					</div>
					<!-- 브루드 커피 끝 -->
					<!-- 에스프레소 라벨 -->
					<div class="label">
						<span class="list_label">에스프레소</span>
						<img src="http://localhost:9000/starbucks/images/logo_decaf.png">
						<span>디카페인 에스프레소 샷 선택 가능 (일부 음료 제외)</span>
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
						<img src="http://localhost:9000/starbucks/images/logo_decaf.png">
						<span>디카페인 에스프레소 샷 추가 가능 (일부 음료 제외)</span>
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
						<img src="http://localhost:9000/starbucks/images/logo_decaf.png">
						<span>디카페인 에스프레소 샷 추가 가능 (일부 음료 제외)</span>
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
						<img src="http://localhost:9000/starbucks/images/logo_decaf.png">
						<span>디카페인 에스프레소 샷 추가 가능 (일부 음료 제외)</span>
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