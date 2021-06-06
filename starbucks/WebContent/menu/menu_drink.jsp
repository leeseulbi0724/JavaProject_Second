<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>음료 | Starbucks Coffee Korea</title>
<style>
div.drink{
	text-align: center;
	width: 1110px;
	margin: 40px auto 150px auto;
	position: relative;
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
h2{
	text-align: left;
	padding: 20px 0 20px 0;
}

/* 분류 */
div.class {
	 border:1px solid lightgray;
	 border-radius: 5px;
	 padding: 20px 30px;
	 margin: 30px 0 20px 0;
}
div.btn_class{
	text-align: left;
}
div.class span{
	font-weight: bold;
	font-size: 18px;
	display: inline-block;
	margin:5px 0 10px 0;
}
div.btn_class img{
	float:right;
}
div.btn_class img:hover{
	cursor: pointer;
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
	margin-right: 5px;
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
	margin-bottom: 20px; padding:0;
}
div.class>div>div ul>li{
	display: inline-block;
	vertical-align: middle;
	margin:0; padding:0 20px 0 0;
	font-size: 13px;
}
div.class>div>div>form>ul>li>input[type="checkbox"],
#checkboxes>label>input[type="checkbox"]{
	position: absolute;
	width: 1px;
	height: 1px;
	padding: 0;
	margin: -1px;
	overflow: hidden;
	clip:rect(0,0,0,0);
	border: 0
}
div.class>div>div>form>ul>li>input[type="checkbox"] + label,
#checkboxes>label>input[type="checkbox"] + label{
	display: inline-block;
	position: relative;
	cusor: pointer;
	-webkit-user-select: none;
	-moz-user-select: none;
	-ms-user-select: none;
	user-select: none;
}
div.class>div>div>form>ul>li>input[type="checkbox"] + label:before,
#checkboxes>label>input[type="checkbox"] + label:before {
	content: ' ';
	display: inline-block;
	width: 10px;
	height: 10px;
	margin: -2px 8px 0 0;
	text-align: center;
	vertical-align: middle;
	background: white;
	border: 1px solid #cacece;
}
div.class>div>div>form>ul>li>input[type="checkbox"] + label:hover:before,
div.class>div>div>form>ul>li>input[type="checkbox"] + label:hover,
#checkboxes>label>input[type="checkbox"] + label:hover:before{
	cursor: pointer;
}
div.class>div>div>form>ul>li>input[type="checkbox"] + label:active:before,
div.class>div>div>form>ul>li>input[type="checkbox"]:checked + label:active:before,
#checkboxes>label>input[type="checkbox"] + label:active:before,
#checkboxes>label>input[type="checkbox"]:checked + label:active:before {
	border:1px solid green;
	content: '\2714';
	color: green;
	background: white;
	border-color: green;
	line-height: 10px;
	font-size: 6px;
}
div.class>div>div>form>ul>li>input[type="checkbox"]:checked + label:before,
#checkboxes>label>input[type="checkbox"]:checked + label:before{
	content: '\2714';
	color: green;
	background: white;
	border-color: #cacece;
	line-height: 10px;
	font-size: 6px;
}

#theme_class{
	display: none;
}
#theme_class li{
	padding: 7px 15px 0 0;
}
#theme_class li:nth-child(3){
	padding-right: 0;
}
#theme_class img:hover{
	cursor: pointer;
}
/* 상세분류 */
div.content>div>div.show{
	text-align: left;
	padding:20px 0;
	position: relative;
}
div.show>p>img{
	margin-right: 3px;
}
div.show>p{
	font-size: 12px;
}
div.content>div>div>p{
	border:1px solid #666;
	background-color: #666;
	color:white;
	font-size: 13px;
	padding: 5px;
	border-radius: 3px;
	display: inline-block;
	text-decoration: none;
	margin-right: 10px;
}
div.content>div>div>p:nth-child(2) {
	border: 1px solid lightgray;
	background-color: white;
	color:#333;
}
div.content>div>div>p:hover{
	text-decoration: underline;
	cursor: pointer;
}

/* 상세분류 드롭다운*/
.multiselect {
	width: 250px;
	position: absolute;
	right: 0;
	top:20px;
	z-index: 3;
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
#checkboxes label.chk_drop {
	display: block;
	border: 1px solid lightgray;
	border-top-style: none;
	background-color: white;
	padding:5px;
	font-size: 14px;
	vertical-align: middle;
}
#checkboxes label>span:hover {
	cursor: pointer;
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
span.list_label2{
	font-size: 11px;
}
div.list>div:nth-child(even){
	margin-bottom: 60px;
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
	margin:20px 0 20px 20px; 
	padding:0;
	font-size: 13px;
	position: relative;
}
div.list>div>ul>li>ul>li>a>img{
	width: 258px;
	height: 269px;
	overflow:hidden;
	transform: scale(1.0, 1.0);
	transition: all 1s ease-in-out;
}
div.list>div>ul>li>ul>li{
	width: 258px;
	max-height: 269px;
	overflow:hidden;
}
div.list>div>ul>li>ul>li>a>img:hover{
	transform: scale(1.1, 1.1);
	transition: all 1s ease-in-out;
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

#list_theme{
	display: none;
	padding-top: 40px;
}

/* 검색 결과 x */
/* #no_result {
	text-align: center;
	padding: 60px 0;
	border-bottom: 1px solid lightgray;
	border-top: 1px solid lightgray;
	position: relative;
	top: 40px;
	display: none;
} */

table.tb{
	width:100%;
	border-collapse: collapse;
	display: none;
	margin: 20px 0 60px 0;
}
table th:first-child, table td:first-child{
	width:17%;
}
table th{
	border-top: 1px solid #333;
	border-bottom: 1px solid #333;
	padding: 16px 0;
	width: 14%;
	font-size: 14px;
}
table td{
	color: #666;
	padding: 16px 0;
	border-bottom: 1px solid lightgray;
	width: 14%;
	font-size: 14px;
	text-align: center;
}

</style>
<script src="../js/jquery-3.6.0.min.js"></script>
<script>
/* 상세분류 */
var expanded = false;
function Checkboxes() {
	var checkboxes = document.getElementById("checkboxes");
	if (!expanded) {
		checkboxes.style.display = "block";
		expanded = true;
	} else if(expanded){
		checkboxes.style.display = "none";
		expanded = false;
	}
}
function showCheckboxes() {
	var checkboxes = document.getElementById("checkboxes");
	if (!expanded) {
		checkboxes.style.display = "block";
		expanded = true;
	}
}
function hideCheckboxes() {
	var checkboxes = document.getElementById("checkboxes");
	if (expanded) {
		checkboxes.style.display = "none";
		expanded = false;
	}
}

//////////////체크박스////////////////////
function allCheck() {
    if ($("#all").is(':checked')) {
        $(".chk").prop("checked", false);
        $("#all").prop("checked", true);
        $("#list_cate *").show();
        $("#list_cate ul").hide();
        $("#list_cate table").hide();
    }
    else if (!$("#all").is(':checked')) {
    	$("#list_cate *").hide();
    }
    if($("#show_inform").data('clicked')){
		$("#list_cate table").show();
	}else if(!$("#show_inform").data('clicked')){
		$("#list_cate ul").show();
	}
} 

function checkboxCheck(){
    $("#list_cate *").show();
	$("#list_cate ul").hide();
	$("#list_cate table").hide();
	$("#all").prop("checked", false);
	if($("#show_inform").data('clicked')){
		$("#list_cate table").show();
	}else if(!$("#show_inform").data('clicked')){
		$("#list_cate ul").show();
	}
	if($("#cold_brew").is(':checked')){
		$("#cold_brew_label").show();
	}else if(!$("#cold_brew").is(':checked')){
		$("#cold_brew_label").hide();
		$("#cold_brew_list").hide();
	}
	if($("#brood").is(':checked')){
		$("#brood_label").show();
	}else if(!$("#brood").is(':checked')){
		$("#brood_label").hide();
		$("#brood_list").hide();
	}
	if($("#esp").is(':checked')){
		$("#esp_label").show();
	}else if(!$("#esp").is(':checked')){
		$("#esp_label").hide();
		$("#esp_list").hide();
	}
	if($("#fra").is(':checked')){
		$("#fra_label").show();
	}else if(!$("#fra").is(':checked')){
		$("#fra_label").hide();
		$("#fra_list").hide();
	}
	if($("#blended").is(':checked')){
		$("#blended_label").show();
	}else if(!$("#blended").is(':checked')){
		$("#blended_label").hide();
		$("#blended_list").hide();
	}
	if($("#fizzo").is(':checked')){
		$("#fizzo_label").show();
	}else if(!$("#fizzo").is(':checked')){
		$("#fizzo_label").hide();
		$("#fizzo_list").hide();
	}
	if($("#tea").is(':checked')){
		$("#tea_label").show();
	}else if(!$("#tea").is(':checked')){
		$("#tea_label").hide();
		$("#tea_list").hide();
	}
	if($("#etc").is(':checked')){
		$("#etc_label").show();
	}else if(!$("#etc").is(':checked')){
		$("#etc_label").hide();
		$("#etc_list").hide();
	}
	if($("#juice").is(':checked')){
		$("#juice_label").show();
	}else if(!$("#juice").is(':checked')){
		$("#juice_label").hide();
		$("#juice_list").hide();
	}
}
///////////////////////////////////////////////////

/* 분류 보기 업다운 */
$( document ).ready(function() {
	$(".btn_class img").click(function(){
		var id=$(this).attr("id");
		if(id=="up_btn"){
			$(".btn_class img").attr("src","http://localhost:9000/starbucks/images/list_down_btn.png");
			$(".btn_class img").attr("id","down_btn");
			$(".line").hide();
			$(".chk_class").hide();
		}else{
			$(".btn_class img").attr("src","http://localhost:9000/starbucks/images/list_up_btn.png");
			$(".btn_class img").attr("id","up_btn");
			$(".line").show();
			$(".chk_class").show();
		}
	});
	
	$("#theme").click(function(){
		$("#list_cate").hide();
		$(".show").hide();
		$("#cate_class").hide();
		$("#theme_class").show();
		$("#list_theme").show();
		$("#category").css("background-color","#f4f4f1").css("border-color","#f4f4f1").css("color","#333");
		$("#theme").css("background-color","#006633").css("border-color","#006633").css("color","white");
	});
	$("#category").click(function(){
		$("#list_cate").show();
		$(".show").show();
		$("#list_theme").hide();
		$("#cate_class").show();
		$("#theme_class").hide();
		$("#theme").css("background-color","#f4f4f1").css("border-color","#f4f4f1").css("color","#333");
		$("#category").css("background-color","#006633").css("border-color","#006633").css("color","white");
	});
	$("#show_inform").data('clicked',false);
	$("#show_img").click(function(){
		$(".show form").show();
		$("#list_cate ul").show();
		$("table").hide();
		$("#show_inform").data('clicked',false);
		$("#show_img").css("background","#666").css("border-color","#666").css("color","white");
		$("#show_inform").css("background","white").css("border-color","lightgray").css("color","#333");
		$("#show_img img").attr("src","http://localhost:9000/starbucks/images/icon_pic_on.png");
		$("#show_inform img").attr("src","http://localhost:9000/starbucks/images/icon_ante.png");
	});
	$("#show_inform").click(function(){
		$(".show form").hide();
		$("#list_cate ul").hide();
		$("table").show();
		$(this).data('clicked',true);
		$("#show_inform").css("background","#666").css("border-color","#666").css("color","white");
		$("#show_img").css("background","white").css("border-color","lightgray").css("color","#333");
		$("#show_img img").attr("src","http://localhost:9000/starbucks/images/icon_pic.png");
		$("#show_inform img").attr("src","http://localhost:9000/starbucks/images/icon_ante_on.png");
	});
	$("#menu_th01").click(function(){
		$("#menu_th01").css('border','2px solid #006633').css('margin','-2px');
		$("#th_img_list>ul>li").hide();
		$("#th_img_list>ul>li").each(function(idx, item){
			if($(item).attr("id")=="th01"){
				$(item).show();
			}
		});
	});
	
	/* 상세분류 */
	$("#one, #two").click(function(){
		console.log('qwe',$("#one").is(':checked'));
		$("#list_cate>div>ul>li, #list_cate>div.label").hide();
		if($("#one").is(':checked')){
			$("#list_cate ul>li>ul>li>img").each(function(idx, item){
				if($(item).attr("id")=="mark01"){
					console.log('뭐냐고',$(item));
					$(item).parents("#list_cate ul>li").show();
					$(item).parents("#list_cate>div").prev().show();
				}
			});
		}else if($("#two").is(':checked')){
			$("#list_cate ul>li>ul>li>img").each(function(idx, item){
				if($(item).attr("id")=="mark02"){
					$(item).parents("#list_cate ul>li").show();
					$(item).parents("#list_cate>div").prev().show();
				}
			});
		}else if(!$("#two").is(':checked')){
			$("#list_cate ul>li>ul>li>img").each(function(idx, item){
				if($(item).attr("id")=="mark02"){
					$(item).parents("#list_cate ul>li").hide();
					$(item).parents("#list_cate>div").prev().hide();
				}
			});
		}
	});
	
	
	
	
});

/* 페이지 온로드 */
window.onload = function(){
	
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
						<a href="#">음료</a>
					</li>
				</ul>
			</div>
		</div>
		
		<div class="content">
			<!-- 분류 -->
			<div class="class">
				<div class="btn_class">
					<span>분류 보기</span>
					<img src="http://localhost:9000/starbucks/images/list_up_btn.png" id="up_btn">
				</div>
				<div class="line"></div>
				<div class="chk_class">
					<!-- 카테고리 테마 -->
					<div class="cate">
						<button type="button" class="btn_style" id="category">카테고리</button>
						<button type="button" class="btn_style" id="theme">테마</button>
					</div>
					<!-- 상품분류 -->
					<div id="cate_class">
						<form method="post">
							<ul>
								<li>
									<input type="checkbox" id="all" checked="checked" onclick="allCheck()">
									<label for="all">전체 상품보기</label>
								</li>
								<li>
									<input type="checkbox" id="cold_brew" class="chk" onclick="checkboxCheck()">
									<label for="cold_brew">콜드 브루 커피</label>
								</li>
								<li>
									<input type="checkbox" id="brood" class="chk" onclick="checkboxCheck()">
									<label for="brood">브루드 커피</label>
								</li>
								<li>
									<input type="checkbox" id="esp" class="chk" onclick="checkboxCheck()">
									<label for="esp">에스프레소</label>
								</li>
								<li>
									<input type="checkbox" id="fra" class="chk" onclick="checkboxCheck()">
									<label for="fra">프라푸치노</label>
								</li>
								<li>
									<input type="checkbox" id="blended" class="chk" onclick="checkboxCheck()">
									<label for="blended">블렌디드</label>
								</li>
								<li>
									<input type="checkbox" id="fizzo" class="chk" onclick="checkboxCheck()">
									<label for="fizzo">스타벅스 피지오</label>
								</li>
								<li>
									<input type="checkbox" id="tea" class="chk" onclick="checkboxCheck()">
									<label for="tea">티(티바나)</label>
								</li>
								<li>
									<input type="checkbox" id="etc" class="chk" onclick="checkboxCheck()">
									<label for="etc">기타 제조 음료</label>
								</li>
								<li>
									<input type="checkbox" id="juice" class="chk" onclick="checkboxCheck()">
									<label for="juice">스타벅스 주스(병음료)</label>
								</li>
							</ul>
						</form>
					</div>
					<div id="theme_class">
						<form method="post">
							<ul>
								<li>
									<img src="http://localhost:9000/starbucks/images/menu_th01.jpg" id="menu_th01">
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
					<p id="show_img"><img src="http://localhost:9000/starbucks/images/icon_pic_on.png"><span>사진으로 보기</span></p>
					<p id="show_inform"><img src="http://localhost:9000/starbucks/images/icon_ante.png"><span>영양정보로 보기</span></p>
					<form>
					  <div class="multiselect">
					    <div class="selectBox" onclick="Checkboxes()" onmouseleave="hideCheckboxes()">
					      <select>
					        <option>상세분류</option>
					      </select>
					      <div class="overSelect"></div>
					    </div>
					    <div id="checkboxes" onmouseenter="showCheckboxes()" onmouseleave="hideCheckboxes()">
					      <label class="chk_drop">
					        <input type="checkbox" id="one"/><label for="one"><img src="http://localhost:9000/starbucks/images/mark01.png" width="21px" height="21px"><span>신규 출시된 메뉴</span></label></label>
					      <label class="chk_drop">
					        <input type="checkbox" id="two" /><label for="two"><img src="http://localhost:9000/starbucks/images/mark02.png" width="21px" height="21px"><span>한정기간 출시되는 시즌성 메뉴</span></label></label>
					    </div>
					  </div>
					</form>
				</div>
				<!-- 상세분류 끝 -->
				<!-- 이미지 리스트 -->
				<div class="list" id="list_cate">
					<!-- 콜드브루 라벨 -->
					<div class="label" id="cold_brew_label">
						<span class="list_label">콜드 브루 커피</span>
						<img src="http://localhost:9000/starbucks/images/logo_decaf.png">
						<span class="list_label2">디카페인 에스프레소 샷 추가 가능 (일부 음료 제외)</span>
					</div>
					<!-- 콜드브루 이미지 -->
					<div id="cold_brew_list">
						<ul>
							<li>
								<ul>
									<li><a href="drink_detail.jsp"><img src="http://localhost:9000/starbucks/images/cold_brew01.jpg" name="cold_brew01"></a></li>
									<li><img src="http://localhost:9000/starbucks/images/mark01.png" id="mark01"></li>
									<li><label for="cold_brew01">나이트로 바닐라 크림</label></li>
								</ul>
							</li>
							<li>
								<ul>
									<li><a href="#"><img src="http://localhost:9000/starbucks/images/cold_brew02.jpg" name="cold_brew02"></a></li>
									<li><img src="http://localhost:9000/starbucks/images/mark01.png" id="mark01"></li>
									<li><img src="http://localhost:9000/starbucks/images/mark02.png" id="mark02"></li>
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
						<table border=1 class="tb">
							<tr>
								<th>메뉴</th>
								<th>칼로리(Kcal)</th>
								<th>당류(g)</th>
								<th>단백질(g)</th>
								<th>나트륩(mg)</th>
								<th>포화지방(g)</th>
								<th>카페인(mg)</th>
							</tr>
							<tr>
								<td>나이트로 바닐라 크림</td>
								<td>75</td>
								<td>10</td>
								<td>1</td>
								<td>20</td>
								<td>2</td>
								<td>245</td>
							</tr>
							<tr>
								<td>포레스트 콜드 브루</td>
								<td>240</td>
								<td>27</td>
								<td>7</td>
								<td>100</td>
								<td>6</td>
								<td>225</td>
							</tr>
							<tr>
								<td>나이트로 콜드 브루</td>
								<td>5</td>
								<td>0</td>
								<td>0</td>
								<td>5</td>
								<td>0</td>
								<td>245</td>
							</tr>
							<tr>
								<td>돌체 콜드 브루</td>
								<td>265</td>
								<td>29</td>
								<td>8</td>
								<td>115</td>
								<td>9</td>
								<td>150</td>
							</tr>
							<tr>
								<td>바닐라 크림 콜드 브루</td>
								<td>125</td>
								<td>11</td>
								<td>3</td>
								<td>58</td>
								<td>6</td>
								<td>150</td>
							</tr>
							<tr>
								<td>벨벳 다크 모카 나이트로</td>
								<td>150</td>
								<td>17</td>
								<td>2</td>
								<td>15</td>
								<td>6</td>
								<td>160</td>
							</tr>
							<tr>
								<td>콜드 브루</td>
								<td>5</td>
								<td>0</td>
								<td>0</td>
								<td>11</td>
								<td>0</td>
								<td>150</td>
							</tr>
							<tr>
								<td>콜드 브루 몰트</td>
								<td>510</td>
								<td>40</td>
								<td>10</td>
								<td>147.8</td>
								<td>20</td>
								<td>150</td>
							</tr>
							<tr>
								<td>콜드 브루 오트 라떼</td>
								<td>105</td>
								<td>11</td>
								<td>1</td>
								<td>95</td>
								<td>0.3</td>
								<td>65</td>
							</tr>
							<tr>
								<td>콜드 브루 플로트</td>
								<td>230</td>
								<td>18</td>
								<td>3</td>
								<td>69</td>
								<td>10</td>
								<td>150</td>
							</tr>
							<tr>
								<td>프렌치 애플 타르트 나이트로</td>
								<td>80</td>
								<td>19</td>
								<td>0</td>
								<td>0</td>
								<td>0</td>
								<td>145</td>
							</tr>
						</table>
					</div>
					<!-- 콜드브루 끝 -->
					<!-- 브루드 커피 라벨 -->
					<div class="label" id="brood_label">
						<span class="list_label">브루드 커피</span>
						<img src="http://localhost:9000/starbucks/images/logo_decaf.png">
						<span class="list_label2">디카페인 에스프레소 샷 추가 가능 (일부 음료 제외)</span>
					</div>
					<!-- 브루드 커피 이미지 -->
					<div id="brood_list">
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
						<table border=1 class="tb">
							<tr>
								<th>메뉴</th>
								<th>칼로리(Kcal)</th>
								<th>당류(g)</th>
								<th>단백질(g)</th>
								<th>나트륩(mg)</th>
								<th>포화지방(g)</th>
								<th>카페인(mg)</th>
							</tr>
							<tr>
								<td>아이스 커피</td>
								<td>5</td>
								<td>0</td>
								<td>0</td>
								<td>10</td>
								<td>0</td>
								<td>140</td>
							</tr>
							<tr>
								<td>오늘의 커피</td>
								<td>5</td>
								<td>0</td>
								<td>0</td>
								<td>10</td>
								<td>0</td>
								<td>260</td>
							</tr>
						</table>
					</div>
					<!-- 브루드 커피 끝 -->
					<!-- 에스프레소 라벨 -->
					<div class="label" id="esp_label">
						<span class="list_label">에스프레소</span>
						<img src="http://localhost:9000/starbucks/images/logo_decaf.png">
						<span class="list_label2">디카페인 에스프레소 샷 선택 가능 (일부 음료 제외)</span>
					</div>
					<!-- 에스프레소 이미지 -->
					<div id="esp_list">
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
						<table border=1 class="tb">
							<tr>
								<th>메뉴</th>
								<th>칼로리(Kcal)</th>
								<th>당류(g)</th>
								<th>단백질(g)</th>
								<th>나트륩(mg)</th>
								<th>포화지방(g)</th>
								<th>카페인(mg)</th>
							</tr>
							<tr>
								<td>에스프레소 콘 파나</td>
								<td>5</td>
								<td>0</td>
								<td>0</td>
								<td>10</td>
								<td>0</td>
								<td>140</td>
							</tr>
						</table>
					</div>
					<!-- 에스프레소 끝 -->
					<!-- 프라푸치노 라벨 -->
					<div class="label" id="fra_label">
						<span class="list_label">프라푸치노</span>
						<img src="http://localhost:9000/starbucks/images/logo_decaf.png">
						<span class="list_label2">디카페인 에스프레소 샷 추가 가능 (일부 음료 제외)</span>
					</div>
					<!-- 프라푸치노 이미지 -->
					<div id="fra_list">
						<ul>
							<li>
								<ul>
									<li><a href="#"><img src="http://localhost:9000/starbucks/images/fra01.jpg" name="fra01"></a></li>
									<li><img src="http://localhost:9000/starbucks/images/mark01.png" id="mark01"></li>
									<li><img src="http://localhost:9000/starbucks/images/mark02.png" id="mark02"></li>
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
						<table border=1 class="tb">
							<tr>
								<th>메뉴</th>
								<th>칼로리(Kcal)</th>
								<th>당류(g)</th>
								<th>단백질(g)</th>
								<th>나트륩(mg)</th>
								<th>포화지방(g)</th>
								<th>카페인(mg)</th>
							</tr>
							<tr>
								<td>에스프레소 콘 파나</td>
								<td>5</td>
								<td>0</td>
								<td>0</td>
								<td>10</td>
								<td>0</td>
								<td>140</td>
							</tr>
						</table>
					</div>
					<!-- 프라푸치노 끝 -->
					<!-- 블렌디드 -->
					<!-- 블렌디드 라벨 -->
					<div class="label" id="blended_label">
						<span class="list_label">블렌디드</span>
						<img src="http://localhost:9000/starbucks/images/logo_decaf.png">
						<span class="list_label2">디카페인 에스프레소 샷 추가 가능 (일부 음료 제외)</span>
					</div>
					<!-- 블렌디드 이미지 -->
					<div id="blended_list">
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
						<table border=1 class="tb">
							<tr>
								<th>메뉴</th>
								<th>칼로리(Kcal)</th>
								<th>당류(g)</th>
								<th>단백질(g)</th>
								<th>나트륩(mg)</th>
								<th>포화지방(g)</th>
								<th>카페인(mg)</th>
							</tr>
							<tr>
								<td>에스프레소 콘 파나</td>
								<td>5</td>
								<td>0</td>
								<td>0</td>
								<td>10</td>
								<td>0</td>
								<td>140</td>
							</tr>
						</table>
					</div>
					<!-- 블렌디드 끝 -->
					<!-- 피지오 -->
					<!-- 피지오 라벨 -->
					<div class="label" id="fizzo_label">
						<span class="list_label">피지오</span>
						<img src="http://localhost:9000/starbucks/images/logo_decaf.png">
						<span class="list_label2">디카페인 에스프레소 샷 추가 가능 (일부 음료 제외)</span>
					</div>
					<!-- 피지오 이미지 -->
					<div id="fizzo_list">
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
						<table border=1 class="tb">
							<tr>
								<th>메뉴</th>
								<th>칼로리(Kcal)</th>
								<th>당류(g)</th>
								<th>단백질(g)</th>
								<th>나트륩(mg)</th>
								<th>포화지방(g)</th>
								<th>카페인(mg)</th>
							</tr>
							<tr>
								<td>에스프레소 콘 파나</td>
								<td>5</td>
								<td>0</td>
								<td>0</td>
								<td>10</td>
								<td>0</td>
								<td>140</td>
							</tr>
						</table>
					</div>
				<!-- 피지오 끝 -->
					<!-- 티 -->
					<!-- 티 라벨 -->
					<div class="label" id="tea_label">
						<span class="list_label">티(티바나)</span>
						<img src="http://localhost:9000/starbucks/images/logo_decaf.png">
						<span class="list_label2">디카페인 에스프레소 샷 추가 가능 (일부 음료 제외)</span>
					</div>
					<!-- 티 이미지 -->
					<div id="tea_list">
						<ul>
							<li>
								<ul>
									<li><a href="#"><img src="http://localhost:9000/starbucks/images/tea01.jpg" name="tea01"></a></li>
									<li><label for="tea01">라임 패션 티</label></li>
								</ul>
							</li>
							<li>
								<ul>
									<li><a href="#"><img src="http://localhost:9000/starbucks/images/tea02.jpg" name="tea02"></a></li>
									<li><label for="tea02">민트 블렌드 티</label></li>
								</ul>
							</li>
							<li>
								<ul>
									<li><a href="#"><img src="http://localhost:9000/starbucks/images/tea03.jpg" name="tea03"></a></li>
									<li><label for="tea03">별궁 오미자 유스베리 티</label></li>
								</ul>
							</li>
							<li>
								<ul>
									<li><a href="#"><img src="http://localhost:9000/starbucks/images/tea04.jpg" name="tea04"></a></li>
									<li><label for="tea04">아이스 라임 패션 티</label></li>
								</ul>
							</li>
							<li>
								<ul>
									<li><a href="#"><img src="http://localhost:9000/starbucks/images/tea05.jpg" name="tea05"></a></li>
									<li><label for="tea05">아이스 민트 블렌드 티</label></li>
								</ul>
							</li>
							<li>
								<ul>
									<li><a href="#"><img src="http://localhost:9000/starbucks/images/tea06.jpg" name="tea06"></a></li>
									<li><label for="tea06">아이스 얼 그레이 티</label></li>
								</ul>
							</li>
							<li>
								<ul>
									<li><a href="#"><img src="http://localhost:9000/starbucks/images/tea07.jpg" name="tea07"></a></li>
									<li><label for="tea07">아이스 유스베리 티</label></li>
								</ul>
							</li>
							<li>
								<ul>
									<li><a href="#"><img src="http://localhost:9000/starbucks/images/tea08.jpg" name="tea08"></a></li>
									<li><label for="tea08">아이스 유자 민트 티</label></li>
								</ul>
							</li>
							<li>
								<ul>
									<li><a href="#"><img src="http://localhost:9000/starbucks/images/tea09.jpg" name="tea09"></a></li>
									<li><label for="tea09">아이스 잉글리쉬 브렉퍼스트 티</label></li>
								</ul>
							</li>
							<li>
								<ul>
									<li><a href="#"><img src="http://localhost:9000/starbucks/images/tea10.jpg" name="tea10"></a></li>
									<li><label for="tea10">아이스 제주 유기 녹차</label></li>
								</ul>
							</li>
							<li>
								<ul>
									<li><a href="#"><img src="http://localhost:9000/starbucks/images/tea11.jpg" name="tea11"></a></li>
									<li><label for="tea11">아이스 캐모마일 블렌드 티</label></li>
								</ul>
							</li>
							<li>
								<ul>
									<li><a href="#"><img src="http://localhost:9000/starbucks/images/tea12.jpg" name="tea12"></a></li>
									<li><label for="tea12">아이스 히비스커스 블렌드 티</label></li>
								</ul>
							</li>
							<li>
								<ul>
									<li><a href="#"><img src="http://localhost:9000/starbucks/images/tea13.jpg" name="tea13"></a></li>
									<li><label for="tea13">얼 그레이 티</label></li>
								</ul>
							</li>
							<li>
								<ul>
									<li><a href="#"><img src="http://localhost:9000/starbucks/images/tea14.jpg" name="tea14"></a></li>
									<li><label for="tea14">유스베리 티</label></li>
								</ul>
							</li>
							<li>
								<ul>
									<li><a href="#"><img src="http://localhost:9000/starbucks/images/tea15.jpg" name="tea15"></a></li>
									<li><label for="tea15">유자 민트 티</label></li>
								</ul>
							</li>
							<li>
								<ul>
									<li><a href="#"><img src="http://localhost:9000/starbucks/images/tea16.jpg" name="tea16"></a></li>
									<li><label for="tea16">잉글리쉬 브렉퍼스트 티</label></li>
								</ul>
							</li>
							<li>
								<ul>
									<li><a href="#"><img src="http://localhost:9000/starbucks/images/tea17.jpg" name="tea17"></a></li>
									<li><label for="tea17">자몽 허니 블랙 티</label></li>
								</ul>
							</li>
							<li>
								<ul>
									<li><a href="#"><img src="http://localhost:9000/starbucks/images/tea18.jpg" name="tea18"></a></li>
									<li><label for="tea18">제주 유기 녹차</label></li>
								</ul>
							</li>
							<li>
								<ul>
									<li><a href="#"><img src="http://localhost:9000/starbucks/images/tea19.jpg" name="tea19"></a></li>
									<li><label for="tea19">캐모마일 블렌드 티</label></li>
								</ul>
							</li>
							<li>
								<ul>
									<li><a href="#"><img src="http://localhost:9000/starbucks/images/tea20.jpg" name="tea20"></a></li>
									<li><label for="tea20">패션 푸르트 티</label></li>
								</ul>
							</li>
							<li>
								<ul>
									<li><a href="#"><img src="http://localhost:9000/starbucks/images/tea21.jpg" name="tea21"></a></li>
									<li><label for="tea21">피치 젤리 티</label></li>
								</ul>
							</li>
							<li>
								<ul>
									<li><a href="#"><img src="http://localhost:9000/starbucks/images/tea22.jpg" name="tea22"></a></li>
									<li><label for="tea22">히비스커스 블렌드 티</label></li>
								</ul>
							</li>
							<li>
								<ul>
									<li><a href="#"><img src="http://localhost:9000/starbucks/images/tea23.jpg" name="tea23"></a></li>
									<li><label for="tea23">아이스 별궁 오미자 유스베리 티</label></li>
								</ul>
							</li>
							<li>
								<ul>
									<li><a href="#"><img src="http://localhost:9000/starbucks/images/tea24.jpg" name="tea24"></a></li>
									<li><label for="tea24">아이스 자몽 허니 블랙 티</label></li>
								</ul>
							</li>
							<li>
								<ul>
									<li><a href="#"><img src="http://localhost:9000/starbucks/images/tea25.jpg" name="tea25"></a></li>
									<li><label for="tea25">아이스 패션 푸르트 티</label></li>
								</ul>
							</li>
							<li>
								<ul>
									<li><a href="#"><img src="http://localhost:9000/starbucks/images/tea26.jpg" name="tea26"></a></li>
									<li><label for="tea26">아이스 푸를 청귤 민트 티</label></li>
								</ul>
							</li>
							<li>
								<ul>
									<li><a href="#"><img src="http://localhost:9000/starbucks/images/tea27.jpg" name="tea27"></a></li>
									<li><label for="tea27">피치 젤리 아이스 티</label></li>
								</ul>
							</li>
							<li>
								<ul>
									<li><a href="#"><img src="http://localhost:9000/starbucks/images/tea28.jpg" name="tea28"></a></li>
									<li><label for="tea28">돌체 블랙 밀크 티</label></li>
								</ul>
							</li>
							<li>
								<ul>
									<li><a href="#"><img src="http://localhost:9000/starbucks/images/tea29.jpg" name="tea29"></a></li>
									<li><label for="tea29">아이스 돌체 블랙 밀크 티</label></li>
								</ul>
							</li>
							<li>
								<ul>
									<li><a href="#"><img src="http://localhost:9000/starbucks/images/tea30.jpg" name="tea30"></a></li>
									<li><label for="tea30">아이스 제주 유기농 말차로 만든 라떼</label></li>
								</ul>
							</li>
							<li>
								<ul>
									<li><a href="#"><img src="http://localhost:9000/starbucks/images/tea31.jpg" name="tea31"></a></li>
									<li><label for="tea31">아이스 차이 티 라떼</label></li>
								</ul>
							</li>
							<li>
								<ul>
									<li><a href="#"><img src="http://localhost:9000/starbucks/images/tea32.jpg" name="tea32"></a></li>
									<li><label for="tea32">아이스 콩고물 블랙 밀크 티</label></li>
								</ul>
							</li>
							<li>
								<ul>
									<li><a href="#"><img src="http://localhost:9000/starbucks/images/tea33.jpg" name="tea33"></a></li>
									<li><label for="tea33">제주 유기농 말차로 만든 라떼</label></li>
								</ul>
							</li>
							<li>
								<ul>
									<li><a href="#"><img src="http://localhost:9000/starbucks/images/tea34.jpg" name="tea34"></a></li>
									<li><label for="tea34">차이 티 라떼</label></li>
								</ul>
							</li>
							<li>
								<ul>
									<li><a href="#"><img src="http://localhost:9000/starbucks/images/tea35.jpg" name="tea35"></a></li>
									<li><label for="tea35">콩고물 블랙 밀크 티</label></li>
								</ul>
							</li>
						</ul>
						<table border=1 class="tb">
							<tr>
								<th>메뉴</th>
								<th>칼로리(Kcal)</th>
								<th>당류(g)</th>
								<th>단백질(g)</th>
								<th>나트륩(mg)</th>
								<th>포화지방(g)</th>
								<th>카페인(mg)</th>
							</tr>
							<tr>
								<td>에스프레소 콘 파나</td>
								<td>5</td>
								<td>0</td>
								<td>0</td>
								<td>10</td>
								<td>0</td>
								<td>140</td>
							</tr>
						</table>
					</div>
				<!-- 티 끝 -->
					<!-- 기타 -->
					<!-- 기타 라벨 -->
					<div class="label" id="etc_label">
						<span class="list_label">기타 제조 음료</span>
						<img src="http://localhost:9000/starbucks/images/logo_decaf.png">
						<span class="list_label2">디카페인 에스프레소 샷 추가 가능 (일부 음료 제외)</span>
					</div>
					<!-- 기타 이미지 -->
					<div id="etc_list">
						<ul>
							<li>
								<ul>
									<li><a href="#"><img src="http://localhost:9000/starbucks/images/etc01.jpg" name="etc01"></a></li>
									<li><img src="http://localhost:9000/starbucks/images/mark01.png" id="mark01"></li>
									<li><img src="http://localhost:9000/starbucks/images/mark02.png" id="mark02"></li>
									<li><label for="etc01">샤이닝 머스캣 에이드</label></li>
								</ul>
							</li>
							<li>
								<ul>
									<li><a href="#"><img src="http://localhost:9000/starbucks/images/etc02.jpg" name="etc02"></a></li>
									<li><img src="http://localhost:9000/starbucks/images/mark01.png" id="mark01"></li>
									<li><label for="etc02">스타벅스 슬래머</label></li>
								</ul>
							</li>
							<li>
								<ul>
									<li><a href="#"><img src="http://localhost:9000/starbucks/images/etc03.jpg" name="etc03"></a></li>
									<li><label for="etc03">시그니처 핫 초콜릿</label></li>
								</ul>
							</li>
							<li>
								<ul>
									<li><a href="#"><img src="http://localhost:9000/starbucks/images/etc04.jpg" name="etc04"></a></li>
									<li><label for="etc04">아이스 시그니처 초콜릿</label></li>
								</ul>
							</li>
							<li>
								<ul>
									<li><a href="#"><img src="http://localhost:9000/starbucks/images/etc05.jpg" name="etc05"></a></li>
									<li><label for="etc05">플러피 판다 아이스 초콜릿</label></li>
								</ul>
							</li>
							<li>
								<ul>
									<li><a href="#"><img src="http://localhost:9000/starbucks/images/etc06.jpg" name="etc06"></a></li>
									<li><label for="etc06">플러피 판다 핫 초콜릿</label></li>
								</ul>
							</li>
							<li>
								<ul>
									<li><a href="#"><img src="http://localhost:9000/starbucks/images/etc07.jpg" name="etc07"></a></li>
									<li><label for="etc07">라임 플로터 위드 리저브 CB 샷</label></li>
								</ul>
							</li>
							<li>
								<ul>
									<li><a href="#"><img src="http://localhost:9000/starbucks/images/etc08.jpg" name="etc08"></a></li>
									<li><label for="etc08">스팀 우유</label></li>
								</ul>
							</li>
							<li>
								<ul>
									<li><a href="#"><img src="http://localhost:9000/starbucks/images/etc09.jpg" name="etc09"></a></li>
									<li><label for="etc09">아이스 제주 까망 라떼</label></li>
								</ul>
							</li>
							<li>
								<ul>
									<li><a href="#"><img src="http://localhost:9000/starbucks/images/etc10.jpg" name="etc10"></a></li>
									<li><label for="etc10">오렌지 플로터 위드 리저브 CB 샷</label></li>
								</ul>
							</li>
							<li>
								<ul>
									<li><a href="#"><img src="http://localhost:9000/starbucks/images/etc11.jpg" name="etc11"></a></li>
									<li><label for="etc11">우유</label></li>
								</ul>
							</li>
							<li>
								<ul>
									<li><a href="#"><img src="http://localhost:9000/starbucks/images/etc12.jpg" name="etc12"></a></li>
									<li><label for="etc12">제주 까망 라떼</label></li>
								</ul>
							</li>
							<li>
								<ul>
									<li><a href="#"><img src="http://localhost:9000/starbucks/images/etc13.jpg" name="etc13"></a></li>
									<li><label for="etc13">제주 쑥쑥 라떼</label></li>
								</ul>
							</li>
							<li>
								<ul>
									<li><a href="#"><img src="http://localhost:9000/starbucks/images/etc14.jpg" name="etc14"></a></li>
									<li><label for="etc14">제주 청귤 레모네이드</label></li>
								</ul>
							</li>
						</ul>
						<table border=1 class="tb">
							<tr>
								<th>메뉴</th>
								<th>칼로리(Kcal)</th>
								<th>당류(g)</th>
								<th>단백질(g)</th>
								<th>나트륩(mg)</th>
								<th>포화지방(g)</th>
								<th>카페인(mg)</th>
							</tr>
							<tr>
								<td>에스프레소 콘 파나</td>
								<td>5</td>
								<td>0</td>
								<td>0</td>
								<td>10</td>
								<td>0</td>
								<td>140</td>
							</tr>
						</table>
					</div>
				<!-- 기타 끝 -->
					<!-- 주스 -->
					<!-- 주스 라벨 -->
					<div class="label" id="juice_label">
						<span class="list_label">스타벅스 주스(병음료)</span>
					</div>
					<!-- 피지오 이미지 -->
					<div id="juice_list">
						<ul>
							<li>
								<ul>
									<li><a href="#"><img src="http://localhost:9000/starbucks/images/juice01.jpg" name="juice01"></a></li>
									<li><label for="juice01">기운내라임 190ML</label></li>
								</ul>
							</li>
							<li>
								<ul>
									<li><a href="#"><img src="http://localhost:9000/starbucks/images/juice02.jpg" name="juice02"></a></li>
									<li><label for="juice02">파이팅 청귤 190ML</label></li>
								</ul>
							</li>
							<li>
								<ul>
									<li><a href="#"><img src="http://localhost:9000/starbucks/images/juice03.jpg" name="juice03"></a></li>
									<li><label for="juice03">한방에 쭉 감당 190ML</label></li>
								</ul>
							</li>
							<li>
								<ul>
									<li><a href="#"><img src="http://localhost:9000/starbucks/images/juice04.jpg" name="juice04"></a></li>
									<li><label for="juice04">도와줘 흑흑 190ML</label></li>
								</ul>
							</li>
							<li>
								<ul>
									<li><a href="#"><img src="http://localhost:9000/starbucks/images/juice05.jpg" name="juice05"></a></li>
									<li><label for="juice05">딸기주스 190ML</label></li>
								</ul>
							</li>
							<li>
								<ul>
									<li><a href="#"><img src="http://localhost:9000/starbucks/images/juice06.jpg" name="juice06"></a></li>
									<li><label for="juice06">망고주스 190ML</label></li>
								</ul>
							</li>
							<li>
								<ul>
									<li><a href="#"><img src="http://localhost:9000/starbucks/images/juice07.jpg" name="juice07"></a></li>
									<li><label for="juice07">수박주스 190ML</label></li>
								</ul>
							</li>
							<li>
								<ul>
									<li><a href="#"><img src="http://localhost:9000/starbucks/images/juice08.jpg" name="juice08"></a></li>
									<li><label for="juice08">케일&amp;사과주스 190ML</label></li>
								</ul>
							</li>
							<li>
								<ul>
									<li><a href="#"><img src="http://localhost:9000/starbucks/images/juice09.jpg" name="juice09"></a></li>
									<li><label for="juice09">토마토주스 190ML</label></li>
								</ul>
							</li>
							<li>
								<ul>
									<li><a href="#"><img src="http://localhost:9000/starbucks/images/juice10.jpg" name="juice10"></a></li>
									<li><label for="juice10">퍼플베리 굿 190ML</label></li>
								</ul>
							</li>
							<li>
								<ul>
									<li><a href="#"><img src="http://localhost:9000/starbucks/images/juice11.jpg" name="juice11"></a></li>
									<li><label for="juice11">한라봉주스 190ML</label></li>
								</ul>
							</li>
							<li>
								<ul>
									<li><a href="#"><img src="http://localhost:9000/starbucks/images/juice12.jpg" name="juice12"></a></li>
									<li><label for="juice12">햇사과 주스 190ML</label></li>
								</ul>
							</li>
							<li>
								<ul>
									<li><a href="#"><img src="http://localhost:9000/starbucks/images/juice13.jpg" name="juice13"></a></li>
									<li><label for="juice13">블루베리 요거트 190ML</label></li>
								</ul>
							</li>
							<li>
								<ul>
									<li><a href="#"><img src="http://localhost:9000/starbucks/images/juice14.jpg" name="juice14"></a></li>
									<li><label for="juice14">치아씨드 요거트 190ML</label></li>
								</ul>
							</li>
						</ul>
						<table border=1 class="tb">
							<tr>
								<th>메뉴</th>
								<th>칼로리(Kcal)</th>
								<th>당류(g)</th>
								<th>단백질(g)</th>
								<th>나트륩(mg)</th>
								<th>포화지방(g)</th>
								<th>카페인(mg)</th>
							</tr>
							<tr>
								<td>에스프레소 콘 파나</td>
								<td>5</td>
								<td>0</td>
								<td>0</td>
								<td>10</td>
								<td>0</td>
								<td>140</td>
							</tr>
						</table>
					</div>
				<!-- 주스 끝 -->
				
				<!-- 검색 결과 x -->
				<!-- <div id="no_result">
					<span>검색 결과가 없습니다.</span>
				</div> -->
				</div><!-- 카테고리 -->
				
				<!-- 테마 -->
				<div class="list" id="list_theme">
					<!--이미지 -->
					<div id="th_img_list">
						<ul>
							<li id="th01">
								<ul>
									<li><a href="drink_detail.jsp"><img src="http://localhost:9000/starbucks/images/cold_brew02.jpg" name="th01"></a></li>
									<li><label>포레스트 콜드 브루</label></li>
								</ul>
							</li>
							<li id="th01">
								<ul>
									<li><a href="#"><img src="http://localhost:9000/starbucks/images/fra01.jpg"></a></li>
									<li><label>바나나 크림 다크 초코 블렌디드</label></li>
								</ul>
							</li>
							<li id="th01">
								<ul>
									<li><a href="#"><img src="http://localhost:9000/starbucks/images/etc01.jpg"></a></li>
									<li><label>샤이닝 머스캣 에이드</label></li>
								</ul>
							</li>
						</ul>
					</div>
					<!-- 이미지 끝 -->
				</div><!--테마 -->
			
			</div>
		</div>
		
	</div>
	<!--  footer -->
	<jsp:include page ="../footer.jsp"></jsp:include>
</body>
</html>