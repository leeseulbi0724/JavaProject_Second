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
	 padding: 20px 30px 40px 30px;
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
	margin:0; padding:0;
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
	padding: 15px 0;
	vertical-align: middle;
	text-align: left;
}
span.list_label{
	font-size: 17px;
	font-weight: bold;
	padding: 0 10px 0 20px;
}
div.list>div:nth-child(even){
	margin-bottom: 60px;
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
	if($("#bread").is(':checked')){
		$("#bread_label").show();
	}else if(!$("#bread").is(':checked')){
		$("#bread_label").hide();
		$("#bread_list").hide();
	}
	if($("#cake").is(':checked')){
		$("#cake_label").show();
	}else if(!$("#cake").is(':checked')){
		$("#cake_label").hide();
		$("#cake_list").hide();
	}
	if($("#sand").is(':checked')){
		$("#sand_label").show();
	}else if(!$("#sand").is(':checked')){
		$("#sand_label").hide();
		$("#sand_list").hide();
	}
	if($("#hot").is(':checked')){
		$("#hot_label").show();
	}else if(!$("#hot").is(':checked')){
		$("#hot_label").hide();
		$("#hot_list").hide();
	}
	if($("#fru").is(':checked')){
		$("#fru_label").show();
	}else if(!$("#fru").is(':checked')){
		$("#fru_label").hide();
		$("#fru_list").hide();
	}
	if($("#snack").is(':checked')){
		$("#snack_label").show();
	}else if(!$("#snack").is(':checked')){
		$("#snack_label").hide();
		$("#snack_list").hide();
	}
	if($("#ice").is(':checked')){
		$("#ice_label").show();
	}else if(!$("#ice").is(':checked')){
		$("#ice_label").hide();
		$("#ice_list").hide();
	}
	
}
///////////////////////////////////////////////////


$( document ).ready(function() {
	/* 분류 보기 업다운 */
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
		$("#theme_class>form>ul>li>img").each(function(idx, item){
			$(item).css('border-style','none').css('margin','0');
		});
		$("#menu_th01").css('border','2px solid #006633').css('margin','-2px');
		$("#th_img_list>ul>li").hide();
		$("#th_img_list>ul>li").each(function(idx, item){
			if($(item).attr("id")=="th01"){
				$(item).show();
			}
		});
	});
	$("#menu_th02").click(function(){
		$("#theme_class>form>ul>li>img").each(function(idx, item){
			$(item).css('border-style','none').css('margin','0');
		});
		$("#menu_th02").css('border','2px solid #006633').css('margin','-2px');
		$("#th_img_list>ul>li").hide();
		$("#th_img_list>ul>li").each(function(idx, item){
			if($(item).attr("id")=="th02"){
				$(item).show();
			}
		});
	});
	$("#menu_th03").click(function(){
		$("#theme_class>form>ul>li>img").each(function(idx, item){
			$(item).css('border-style','none').css('margin','0');
		});
		$("#menu_th03").css('border','2px solid #006633').css('margin','-2px');
		$("#th_img_list>ul>li").hide();
		$("#th_img_list>ul>li").each(function(idx, item){
			if($(item).attr("id")=="th03"){
				$(item).show();
			}
		});
	});
	$("#menu_th04").click(function(){
		$("#theme_class>form>ul>li>img").each(function(idx, item){
			$(item).css('border-style','none').css('margin','0');
		});
		$("#menu_th04").css('border','2px solid #006633').css('margin','-2px');
		$("#th_img_list>ul>li").hide();
		$("#th_img_list>ul>li").each(function(idx, item){
			if($(item).attr("id")=="th04"){
				$(item).show();
			}
		});
	});
	$("#menu_th05").click(function(){
		$("#theme_class>form>ul>li>img").each(function(idx, item){
			$(item).css('border-style','none').css('margin','0');
		});
		$("#menu_th05").css('border','2px solid #006633').css('margin','-2px');
		$("#th_img_list>ul>li").hide();
		$("#th_img_list>ul>li").each(function(idx, item){
			if($(item).attr("id")=="th05"){
				$(item).show();
			}
		});
	});
	
});
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
						<a href="#">푸드</a>
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
									<input type="checkbox" id="bread" class="chk" onclick="checkboxCheck()">
									<label for="bread">브레드</label>
								</li>
								<li>
									<input type="checkbox" id="cake" class="chk" onclick="checkboxCheck()">
									<label for="cake">케이크</label>
								</li>
								<li>
									<input type="checkbox" id="sand" class="chk" onclick="checkboxCheck()">
									<label for="sand">샌드위치 &amp; 샐러드</label>
								</li>
								<li>
									<input type="checkbox" id="hot" class="chk" onclick="checkboxCheck()">
									<label for="hot">따뜻한 푸드</label>
								</li>
								<li>
									<input type="checkbox" id="fru" class="chk" onclick="checkboxCheck()">
									<label for="fru">과일 &amp; 요거트</label>
								</li>
								<li>
									<input type="checkbox" id="snack" class="chk" onclick="checkboxCheck()">
									<label for="snack">스낵 &amp; 미니 디저트</label>
								</li>
								<li>
									<input type="checkbox" id="ice" class="chk" onclick="checkboxCheck()">
									<label for="ice">아이스크림</label>
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
								<li>
									<img src="http://localhost:9000/starbucks/images/menu_th02.jpg" id="menu_th02">
								</li>
								<li>
									<img src="http://localhost:9000/starbucks/images/menu_th03.jpg" id="menu_th03">
								</li>
								<li>
									<img src="http://localhost:9000/starbucks/images/menu_th04.jpg" id="menu_th04">
								</li>
								<li>
									<img src="http://localhost:9000/starbucks/images/menu_th05.jpg" id="menu_th05">
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
					        <input type="checkbox" id="one" /><label for="one"><img src="http://localhost:9000/starbucks/images/mark01.png" width="21px" height="21px"><span>신규 출시된 메뉴</span></label></label>
					      <label class="chk_drop">
					        <input type="checkbox" id="two" /><label for="two"><img src="http://localhost:9000/starbucks/images/mark02.png" width="21px" height="21px"><span>한정기간 출시되는 시즌성 메뉴</span></label></label>
					    </div>
					  </div>
					</form>
				</div>
				<!-- 상세분류 끝 -->
				<!-- 이미지 리스트 -->
				<div class="list" id="list_cate">
					<!-- 라벨 -->
					<div class="label" id="bread_label">
						<span class="list_label">브레드</span>
					</div>
					<!-- 브레드 이미지 -->
					<div id="bread_list">
						<ul>
							<li>
								<ul>
									<li><a href="food_detail.jsp"><img src="http://localhost:9000/starbucks/images/bread01.jpg" name="bread01"></a></li>
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
									<li><a href="#"><img src="http://localhost:9000/starbucks/images/bread07.jpg" name="bread07"></a></li>
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
					<!-- 브레드 끝 -->
					<!-- 라벨 -->
					<div class="label" id="cake_label">
						<span class="list_label">케이크</span>
					</div>
					<!-- 케이크 이미지 -->
					<div id="cake_list">
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
					<!-- 케이크 끝 -->
					<!-- 라벨 -->
					<div class="label" id="sand_label">
						<span class="list_label">샌드위치  &amp; 샐러드</span>
					</div>
					<!-- 샌드위치 샐러드 이미지 -->
					<div id="sand_list">
						<ul>
							<li>
								<ul>
									<li><a href="#"><img src="http://localhost:9000/starbucks/images/sand01.jpg" name="sand01"></a></li>
									<li><label for="sand01">커리 치킨 샐러드 밀 박스</label></li>
								</ul>
							</li>
							<li>
								<ul>
									<li><a href="#"><img src="http://localhost:9000/starbucks/images/sand02.jpg" name="sand02"></a></li>
									<li><label for="sand02">B.C.L.T. 샌드위치 밀 박스</label></li>
								</ul>
							</li>
							<li>
								<ul>
									<li><a href="#"><img src="http://localhost:9000/starbucks/images/sand03.jpg" name="sand03"></a></li>
									<li><label for="sand03">에그 베이컨 브리오슈 밀 박스</label></li>
								</ul>	
							</li>
							<li>
								<ul>
									<li><a href="#"><img src="http://localhost:9000/starbucks/images/sand04.jpg" name="sand04"></a></li>
									<li><label for="sand04">쉬림프  &amp; 해초 샐러드 밀 박스</label></li>
								</ul>
							</li>
							<li>
								<ul>
									<li><a href="#"><img src="http://localhost:9000/starbucks/images/sand05.jpg" name="sand05"></a></li>
									<li><label for="sand05">쉬림프 코코넛 샐러드 밀 박스</label></li>
								</ul>
							</li>
							<li>
								<ul>
									<li><a href="#"><img src="http://localhost:9000/starbucks/images/sand06.jpg" name="sand06"></a></li>
									<li><label for="sand06">B.E.L.T. 샌드위치</label></li>
								</ul>
							</li>
							<li>
								<ul>
									<li><a href="#"><img src="http://localhost:9000/starbucks/images/sand07.jpg" name="sand07"></a></li>
									<li><label for="sand07">단호박 에그 샌드위치</label></li>
								</ul>
							</li>
							<li>
								<ul>
									<li><a href="#"><img src="http://localhost:9000/starbucks/images/sand08.jpg" name="sand08"></a></li>
									<li><label for="sand08">멕시칸 라이스 브리또</label></li>
								</ul>
							</li>
							<li>
								<ul>
									<li><a href="#"><img src="http://localhost:9000/starbucks/images/sand09.jpg" name="sand09"></a></li>
									<li><label for="sand09">미트 볼 샌드위치</label></li>
								</ul>
							</li>
							<li>
								<ul>
									<li><a href="#"><img src="http://localhost:9000/starbucks/images/sand10.jpg" name="sand10"></a></li>
									<li><label for="sand10">바비큐 치킨 치즈 치아바타</label></li>
								</ul>
							</li>
							<li>
								<ul>
									<li><a href="#"><img src="http://localhost:9000/starbucks/images/sand11.jpg" name="sand11"></a></li>
									<li><label for="sand11">베이컨 &amp; 브로콜리 샌드위치</label></li>
								</ul>
							</li>
							<li>
								<ul>
									<li><a href="#"><img src="http://localhost:9000/starbucks/images/sand12.jpg" name="sand12"></a></li>
									<li><label for="sand12">베이컨 치즈 토스트</label></li>
								</ul>
							</li>
							<li>
								<ul>
									<li><a href="#"><img src="http://localhost:9000/starbucks/images/sand13.jpg" name="sand13"></a></li>
									<li><label for="sand13">브렉퍼스트 잉글리쉬 머핀</label></li>
								</ul>
							</li>
							<li>
								<ul>
									<li><a href="#"><img src="http://localhost:9000/starbucks/images/sand14.jpg" name="sand14"></a></li>
									<li><label for="sand14">비프 &amp; 치즈 샌드위치</label></li>
								</ul>
							</li>
							<li>
								<ul>
									<li><a href="#"><img src="http://localhost:9000/starbucks/images/sand15.jpg" name="sand15"></a></li>
									<li><label for="sand15">스윗 칠리 올리브 치아바타</label></li>
								</ul>
							</li>
							<li>
								<ul>
									<li><a href="#"><img src="http://localhost:9000/starbucks/images/sand16.jpg" name="sand16"></a></li>
									<li><label for="sand16">에그 베이컨 포카치아</label></li>
								</ul>
							</li>
							<li>
								<ul>
									<li><a href="#"><img src="http://localhost:9000/starbucks/images/sand17.jpg" name="sand17"></a></li>
									<li><label for="sand17">에그에그 샌드위치</label></li>
								</ul>
							</li>
							<li>
								<ul>
									<li><a href="#"><img src="http://localhost:9000/starbucks/images/sand18.jpg" name="sand18"></a></li>
									<li><label for="sand18">제주 녹차 베이컨 치즈 베이글</label></li>
								</ul>
							</li>
							<li>
								<ul>
									<li><a href="#"><img src="http://localhost:9000/starbucks/images/sand19.jpg" name="sand19"></a></li>
									<li><label for="sand19">제주 당근 산도롱 샌드위치</label></li>
								</ul>
							</li>
							<li>
								<ul>
									<li><a href="#"><img src="http://localhost:9000/starbucks/images/sand20.jpg" name="sand20"></a></li>
									<li><label for="sand20">제주 흑돼지 맨도롱 샌드위치</label></li>
								</ul>
							</li>
							<li>
								<ul>
									<li><a href="#"><img src="http://localhost:9000/starbucks/images/sand21.jpg" name="sand21"></a></li>
									<li><label for="sand21">제주 흑돼지 아보카도 샌드위치</label></li>
								</ul>
							</li>
							<li>
								<ul>
									<li><a href="#"><img src="http://localhost:9000/starbucks/images/sand22.jpg" name="sand22"></a></li>
									<li><label for="sand22">크랜베리 치킨 치즈 샌드위치</label></li>
								</ul>
							</li>
							<li>
								<ul>
									<li><a href="#"><img src="http://localhost:9000/starbucks/images/sand23.jpg" name="sand23"></a></li>
									<li><label for="sand23">크로크 무슈</label></li>
								</ul>
							</li>
							<li>
								<ul>
									<li><a href="#"><img src="http://localhost:9000/starbucks/images/sand24.jpg" name="sand24"></a></li>
									<li><label for="sand24">포크 커틀릿 샌드위치</label></li>
								</ul>
							</li>
							<li>
								<ul>
									<li><a href="#"><img src="http://localhost:9000/starbucks/images/sand25.jpg" name="sand25"></a></li>
									<li><label for="sand25">햄&amp;루꼴라 올리브 샌드위치</label></li>
								</ul>
							</li>
							<li>
								<ul>
									<li><a href="#"><img src="http://localhost:9000/starbucks/images/sand26.jpg" name="sand26"></a></li>
									<li><label for="sand26">화이트 에그 모짜 샌드위치</label></li>
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
					<!-- 샌드위치 샐러드 끝 -->
					<!-- 라벨 -->
					<div class="label" id="hot_label">
						<span class="list_label">따뜻한 푸드</span>
					</div>
					<!-- 따뜻한 푸드 이미지 -->
					<div id="hot_list">
						<ul>
							<li>
								<ul>
									<li><a href="#"><img src="http://localhost:9000/starbucks/images/hot01.jpg" name="hot01"></a></li>
									<li><label for="hot01">트러플 머쉬룸 수프</label></li>
								</ul>
							</li>
							<li>
								<ul>
									<li><a href="#"><img src="http://localhost:9000/starbucks/images/hot02.jpg" name="hot02"></a></li>
									<li><label for="hot02">현미 크림 수프</label></li>
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
					<!-- 따뜻한 푸드 끝 -->
					<!-- 라벨 -->
					<div class="label" id="fru_label">
						<span class="list_label">과일 &amp; 요거트</span>
					</div>
					<!-- 과일 요거트 이미지 -->
					<div id="fru_list">
						<ul>
							<li>
								<ul>
									<li><a href="#"><img src="http://localhost:9000/starbucks/images/fru01.jpg" name="fru01"></a></li>
									<li><label for="fru01">사과 가득 핸디 젤리</label></li>
								</ul>
							</li>
							<li>
								<ul>
									<li><a href="#"><img src="http://localhost:9000/starbucks/images/fru02.jpg" name="fru02"></a></li>
									<li><label for="fru02">제주 자연 청 세트</label></li>
								</ul>
							</li>
							<li>
								<ul>
									<li><a href="#"><img src="http://localhost:9000/starbucks/images/fru03.jpg" name="fru03"></a></li>
									<li><label for="fru03">하루 한 컵 RED</label></li>
								</ul>
							</li>
							<li>
								<ul>
									<li><a href="#"><img src="http://localhost:9000/starbucks/images/fru04.jpg" name="fru04"></a></li>
									<li><label for="fru04">한 입에 쏙 열대 과일칩(망고&amp;파인애플)</label></li>
								</ul>
							</li>
							<li>
								<ul>
									<li><a href="#"><img src="http://localhost:9000/starbucks/images/fru05.jpg" name="fru05"></a></li>
									<li><label for="fru05">한 입에 쏙 우리 과일칩(딸기&amp;사과)</label></li>
								</ul>
							</li>
							<li>
								<ul>
									<li><a href="#"><img src="http://localhost:9000/starbucks/images/fru06.jpg" name="fru06"></a></li>
									<li><label for="fru06">한라봉 가득 핸디 젤리</label></li>
								</ul>
							</li>
							<li>
								<ul>
									<li><a href="#"><img src="http://localhost:9000/starbucks/images/fru07.jpg" name="fru07"></a></li>
									<li><label for="fru07">New 밀크 푸딩</label></li>
								</ul>
							</li>
							<li>
								<ul>
									<li><a href="#"><img src="http://localhost:9000/starbucks/images/fru08.jpg" name="fru08"></a></li>
									<li><label for="fru08">New 초콜릿 푸딩</label></li>
								</ul>
							</li>
							<li>
								<ul>
									<li><a href="#"><img src="http://localhost:9000/starbucks/images/fru09.jpg" name="fru09"></a></li>
									<li><label for="fru09">스타벅스 오가닉 그릭 요거트</label></li>
								</ul>
							</li>
							<li>
								<ul>
									<li><a href="#"><img src="http://localhost:9000/starbucks/images/fru10.jpg" name="fru10"></a></li>
									<li><label for="fru10">오가닉 그릭 요거트 플레인 JAR</label></li>
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
					<!-- 과일 요거트 끝 -->
					<!-- 라벨 -->
					<div class="label" id="snack_label">
						<span class="list_label">스낵 &amp; 미니 디저트</span>
					</div>
					<!-- 스낵 미니디저트 이미지 -->
					<div id="snack_list">
						<ul>
							<li>
								<ul>
									<li><a href="#"><img src="http://localhost:9000/starbucks/images/snack01.jpg" name="snack01"></a></li>
									<li><label for="snack01">잼있는 스푼쿠키</label></li>
								</ul>
							</li>
							<li>
								<ul>
									<li><a href="#"><img src="http://localhost:9000/starbucks/images/snack02.jpg" name="snack02"></a></li>
									<li><label for="snack02">로고 코인 다크 초콜릿 (골드)</label></li>
								</ul>
							</li>
							<li>
								<ul>
									<li><a href="#"><img src="http://localhost:9000/starbucks/images/snack03.jpg" name="snack03"></a></li>
									<li><label for="snack03">로고 코인 밀크 초콜릿 (실버)</label></li>
								</ul>
							</li>
							<li>
								<ul>
									<li><a href="#"><img src="http://localhost:9000/starbucks/images/snack04.jpg" name="snack04"></a></li>
									<li><label for="snack04">로스티드 아몬드 앤 초콜릿</label></li>
								</ul>
							</li>
							<li>
								<ul>
									<li><a href="#"><img src="http://localhost:9000/starbucks/images/snack05.jpg" name="snack05"></a></li>
									<li><label for="snack05">리저브 초콜릿 세트</label></li>
								</ul>
							</li>
							<li>
								<ul>
									<li><a href="#"><img src="http://localhost:9000/starbucks/images/snack06.jpg" name="snack06"></a></li>
									<li><label for="snack06">제주 오름 초콜릿 세트</label></li>
								</ul>
							</li>
							<li>
								<ul>
									<li><a href="#"><img src="http://localhost:9000/starbucks/images/snack07.jpg" name="snack07"></a></li>
									<li><label for="snack07">다크 초콜릿 카우보이 쿠키</label></li>
								</ul>
							</li>
							<li>
								<ul>
									<li><a href="#"><img src="http://localhost:9000/starbucks/images/snack08.jpg" name="snack08"></a></li>
									<li><label for="snack08">단호박&amp;백년초 라이스 볼 틴 세트</label></li>
								</ul>
							</li>
							<li>
								<ul>
									<li><a href="#"><img src="http://localhost:9000/starbucks/images/snack09.jpg" name="snack09"></a></li>
									<li><label for="snack09">버터 가득 라이스 쿠키</label></li>
								</ul>
							</li>
							<li>
								<ul>
									<li><a href="#"><img src="http://localhost:9000/starbucks/images/snack10.jpg" name="snack10"></a></li>
									<li><label for="snack10">오도독 건강한 넛&amp;블루베리</label></li>
								</ul>
							</li>
							<li>
								<ul>
									<li><a href="#"><img src="http://localhost:9000/starbucks/images/snack11.jpg" name="snack11"></a></li>
									<li><label for="snack11">청크 초콜릿 쿠키 틴 세트</label></li>
								</ul>
							</li>
							<li>
								<ul>
									<li><a href="#"><img src="http://localhost:9000/starbucks/images/snack12.jpg" name="snack12"></a></li>
									<li><label for="snack12">초콜릿 월넛 돔 쿠키</label></li>
								</ul>
							</li>
							<li>
								<ul>
									<li><a href="#"><img src="http://localhost:9000/starbucks/images/snack13.jpg" name="snack13"></a></li>
									<li><label for="snack13">현무암 러스크</label></li>
								</ul>
							</li>
							<li>
								<ul>
									<li><a href="#"><img src="http://localhost:9000/starbucks/images/snack14.jpg" name="snack14"></a></li>
									<li><label for="snack14">화이트 초콜릿 카우보이 쿠키</label></li>
								</ul>
							</li>
							<li>
								<ul>
									<li><a href="#"><img src="http://localhost:9000/starbucks/images/snack15.jpg" name="snack15"></a></li>
									<li><label for="snack15">다크 초콜릿 마카롱</label></li>
								</ul>
							</li>
							<li>
								<ul>
									<li><a href="#"><img src="http://localhost:9000/starbucks/images/snack16.jpg" name="snack16"></a></li>
									<li><label for="snack16">바닐라 마카롱</label></li>
								</ul>
							</li>
							<li>
								<ul>
									<li><a href="#"><img src="http://localhost:9000/starbucks/images/snack17.jpg" name="snack17"></a></li>
									<li><label for="snack17">블루베리 마카롱</label></li>
								</ul>
							</li>
							<li>
								<ul>
									<li><a href="#"><img src="http://localhost:9000/starbucks/images/snack18.jpg" name="snack18"></a></li>
									<li><label for="snack18">스트로베리 마카롱</label></li>
								</ul>
							</li>
							<li>
								<ul>
									<li><a href="#"><img src="http://localhost:9000/starbucks/images/snack19.jpg" name="snack19"></a></li>
									<li><label for="snack19">New 한 입에 쏙 고구마</label></li>
								</ul>
							</li>
							<li>
								<ul>
									<li><a href="#"><img src="http://localhost:9000/starbucks/images/snack20.jpg" name="snack20"></a></li>
									<li><label for="snack20">더블 치즈 베이글 칩</label></li>
								</ul>
							</li>
							<li>
								<ul>
									<li><a href="#"><img src="http://localhost:9000/starbucks/images/snack20.jpg" name="snack20"></a></li>
									<li><label for="snack21">라이스 칩(블루베리 잼)</label></li>
								</ul>
							</li>
							<li>
								<ul>
									<li><a href="#"><img src="http://localhost:9000/starbucks/images/snack22.jpg" name="snack22"></a></li>
									<li><label for="snack22">베어리스타 오가닉 젤리</label></li>
								</ul>
							</li>
							<li>
								<ul>
									<li><a href="#"><img src="http://localhost:9000/starbucks/images/snack23.jpg" name="snack23"></a></li>
									<li><label for="snack23">스타벅스 찹쌀말랑</label></li>
								</ul>
							</li>
							<li>
								<ul>
									<li><a href="#"><img src="http://localhost:9000/starbucks/images/snack24.jpg" name="snack24"></a></li>
									<li><label for="snack24">씨프렌즈 캔디</label></li>
								</ul>
							</li>
							<li>
								<ul>
									<li><a href="#"><img src="http://localhost:9000/starbucks/images/snack25.jpg" name="snack25"></a></li>
									<li><label for="snack25">아몬드 토피넛 캔디</label></li>
								</ul>
							</li>
							<li>
								<ul>
									<li><a href="#"><img src="http://localhost:9000/starbucks/images/snack26.jpg" name="snack26"></a></li>
									<li><label for="snack26">애프터 커피 캔디 (페퍼민트)</label></li>
								</ul>
							</li>
							<li>
								<ul>
									<li><a href="#"><img src="http://localhost:9000/starbucks/images/snack27.jpg" name="snack27"></a></li>
									<li><label for="snack27">우리 흑米 카스텔라</label></li>
								</ul>
							</li>
							<li>
								<ul>
									<li><a href="#"><img src="http://localhost:9000/starbucks/images/snack28.jpg" name="snack28"></a></li>
									<li><label for="snack28">우리米 카스텔라</label></li>
								</ul>
							</li>
							<li>
								<ul>
									<li><a href="#"><img src="http://localhost:9000/starbucks/images/snack29.jpg" name="snack29"></a></li>
									<li><label for="snack29">자일리톨 캔디 크리스탈 레몬</label></li>
								</ul>
							</li>
							<li>
								<ul>
									<li><a href="#"><img src="http://localhost:9000/starbucks/images/snack30.jpg" name="snack30"></a></li>
									<li><label for="snack30">자일리톨 캔디 크리스탈 민트</label></li>
								</ul>
							</li>
							<li>
								<ul>
									<li><a href="#"><img src="http://localhost:9000/starbucks/images/snack31.jpg" name="snack31"></a></li>
									<li><label for="snack31">카라멜 스틱</label></li>
								</ul>
							</li>
							<li>
								<ul>
									<li><a href="#"><img src="http://localhost:9000/starbucks/images/snack32.jpg" name="snack32"></a></li>
									<li><label for="snack32">카라멜 와플</label></li>
								</ul>
							</li>
							<li>
								<ul>
									<li><a href="#"><img src="http://localhost:9000/starbucks/images/snack33.jpg" name="snack33"></a></li>
									<li><label for="snack33">큐브 라이스 카스텔라</label></li>
								</ul>
							</li>
							<li>
								<ul>
									<li><a href="#"><img src="http://localhost:9000/starbucks/images/snack34.jpg" name="snack34"></a></li>
									<li><label for="snack34">한입에 쏙 공주 알밤</label></li>
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
				<!-- 스낵 미니디저트 끝 -->
				<!-- 라벨 -->
					<div class="label" id="ice_label">
						<span class="list_label">아이스크림</span>
					</div>
					<!-- 아이스크림 이미지 -->
					<div id="ice_list">
						<ul>
							<li>
								<ul>
									<li><a href="#"><img src="http://localhost:9000/starbucks/images/ice01.jpg" name="ice01"></a></li>
									<li><label for="ice01">유기농 바닐라 아이스크림</label></li>
								</ul>
							</li>
							<li>
								<ul>
									<li><a href="#"><img src="http://localhost:9000/starbucks/images/ice02.jpg" name="ice02"></a></li>
									<li><label for="ice02">유기농 초콜릿 아이스크림</label></li>
								</ul>
							</li>
							<li>
								<ul>
									<li><a href="#"><img src="http://localhost:9000/starbucks/images/ice03.jpg" name="ice03"></a></li>
									<li><label for="ice03">자바 칩 유기농 바닐라 아이스크림</label></li>
								</ul>
							</li>
							<li>
								<ul>
									<li><a href="#"><img src="http://localhost:9000/starbucks/images/ice04.jpg" name="ice04"></a></li>
									<li><label for="ice04">자바 칩 유기농 초콜릿 아이스크림</label></li>
								</ul>
							</li>
							<li>
								<ul>
									<li><a href="#"><img src="http://localhost:9000/starbucks/images/ice05.jpg" name="ice05"></a></li>
									<li><label for="ice05">넛츠 바닐라 아포가토</label></li>
								</ul>
							</li>
							<li>
								<ul>
									<li><a href="#"><img src="http://localhost:9000/starbucks/images/ice06.jpg" name="ice06"></a></li>
									<li><label for="ice06">넛츠 초콜릿 아포가토</label></li>
								</ul>
							</li>
							<li>
								<ul>
									<li><a href="#"><img src="http://localhost:9000/starbucks/images/ice07.jpg" name="ice07"></a></li>
									<li><label for="ice07">바닐라 아포가토</label></li>
								</ul>
							</li>
							<li>
								<ul>
									<li><a href="#"><img src="http://localhost:9000/starbucks/images/ice08.jpg" name="ice08"></a></li>
									<li><label for="ice08">자바 칩 바닐라 아포가토</label></li>
								</ul>
							</li>
							<li>
								<ul>
									<li><a href="#"><img src="http://localhost:9000/starbucks/images/ice09.jpg" name="ice09"></a></li>
									<li><label for="ice09">자바 칩 초콜릿 아포가토</label></li>
								</ul>
							</li>
							<li>
								<ul>
									<li><a href="#"><img src="http://localhost:9000/starbucks/images/ice10.jpg" name="ice10"></a></li>
									<li><label for="ice10">초콜릿 아포가토</label></li>
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
				<!-- 아이스크림 끝 -->
				</div>
				
				<!-- 테마 -->
				<div class="list" id="list_theme">
					<!--이미지 -->
					<div id="th_img_list">
						<ul>
							<li id="th01">
								<ul>
									<li><a href="#"><img src="http://localhost:9000/starbucks/images/cake03.jpg"></a></li>
									<li><label>바나나 체커스 케이크</label></li>
								</ul>
							</li>
							<li id="th01">
								<ul>
									<li><a href="#"><img src="http://localhost:9000/starbucks/images/cake02.jpg"></a></li>
									<li><label>바나나 슈크림 타르트</label></li>
								</ul>
							</li>
							<li id="th01">
								<ul>
									<li><a href="#"><img src="http://localhost:9000/starbucks/images/bread01.jpg"></a></li>
									<li><label>바나나 슈크림 큐브</label></li>
								</ul>
							</li>
							<li id="th02">
								<ul>
									<li><a href="#"><img src="http://localhost:9000/starbucks/images/sand01.jpg"></a></li>
									<li><label>커리 치킨 샐러드 밀 박스</label></li>
								</ul>
							</li>
							<li id="th02">
								<ul>
									<li><a href="#"><img src="http://localhost:9000/starbucks/images/sand03.jpg"></a></li>
									<li><label>에그 베이컨 브리오슈 밀 박스</label></li>
								</ul>
							</li>
							<li id="th02">
								<ul>
									<li><a href="#"><img src="http://localhost:9000/starbucks/images/sand02.jpg"></a></li>
									<li><label>B.C.L.T. 샌드위치 밀 박스</label></li>
								</ul>
							</li>
							<li id="th02">
								<ul>
									<li><a href="#"><img src="http://localhost:9000/starbucks/images/sand25.jpg"></a></li>
									<li><label>화이트 에그 모짜 샌드위치</label></li>
								</ul>
							</li>
							<li id="th02">
								<ul>
									<li><a href="#"><img src="http://localhost:9000/starbucks/images/sand14.jpg"></a></li>
									<li><label>비프 &amp; 치즈 샌드위치</label></li>
								</ul>
							</li>
							<li id="th02">
								<ul>
									<li><a href="#"><img src="http://localhost:9000/starbucks/images/sand09.jpg"></a></li>
									<li><label>미트 볼 샌드위치</label></li>
								</ul>
							</li>
							<li id="th02">
								<ul>
									<li><a href="#"><img src="http://localhost:9000/starbucks/images/brunch01.jpg" ></a></li>
									<li><label>부드러운 닭가슴살 샌드위치</label></li>
								</ul>
							</li>
							<li id="th02">
								<ul>
									<li><a href="#"><img src="http://localhost:9000/starbucks/images/sand16.jpg"></a></li>
									<li><label>에그 베이컨 포카치아</label></li>
								</ul>
							</li>
							<li id="th02">
								<ul>
									<li><a href="#"><img src="http://localhost:9000/starbucks/images/sand04.jpg"></a></li>
									<li><label>샤쉬림프 &amp; 해초 샐러드 밀 박스</label></li>
								</ul>
							</li>
							<li id="th02">
								<ul>
									<li><a href="#"><img src="http://localhost:9000/starbucks/images/sand13.jpg"></a></li>
									<li><label>브렉퍼스트 잉글리쉬 머핀</label></li>
								</ul>
							</li>
							<li id="th02">
								<ul>
									<li><a href="#"><img src="http://localhost:9000/starbucks/images/sand17.jpg"></a></li>
									<li><label>에그에그 샌드위치</label></li>
								</ul>
							</li>
							<li id="th02">
								<ul>
									<li><a href="#"><img src="http://localhost:9000/starbucks/images/sand12.jpg"></a></li>
									<li><label>베이컨 치즈 토스트</label></li>
								</ul>
							</li>
							<li id="th02">
								<ul>
									<li><a href="#"><img src="http://localhost:9000/starbucks/images/sand25.jpg"></a></li>
									<li><label>햄&amp;루꼴라 올리브 샌드위치</label></li>
								</ul>
							</li>
							<li id="th02">
								<ul>
									<li><a href="#"><img src="http://localhost:9000/starbucks/images/sand10.jpg"></a></li>
									<li><label>바비큐 치킨 치즈 치아바타</label></li>
								</ul>
							</li>
							<li id="th02">
								<ul>
									<li><a href="#"><img src="http://localhost:9000/starbucks/images/sand23.jpg"></a></li>
									<li><label>크로크 무슈</label></li>
								</ul>
							</li>
							<li id="th02">
								<ul>
									<li><a href="#"><img src="http://localhost:9000/starbucks/images/brunch02.jpg"></a></li>
									<li><label>에그, 베이컨 치즈 베이글</label></li>
								</ul>
							</li>
							<li id="th02">
								<ul>
									<li><a href="#"><img src="http://localhost:9000/starbucks/images/sand24.jpg"></a></li>
									<li><label>포크 커틀릿 샌드위치</label></li>
								</ul>
							</li>
							<li id="th02">
								<ul>
									<li><a href="#"><img src="http://localhost:9000/starbucks/images/sand06.jpg"></a></li>
									<li><label>B.E.L.T. 샌드위치</label></li>
								</ul>
							</li>
							<li id="th02">
								<ul>
									<li><a href="#"><img src="http://localhost:9000/starbucks/images/sand07.jpg"></a></li>
									<li><label>단호박 에그 샌드위치</label></li>
								</ul>
							</li>
							<li id="th02">
								<ul>
									<li><a href="#"><img src="http://localhost:9000/starbucks/images/sand22.jpg"></a></li>
									<li><label>크랜베리 치킨 치즈 샌드위치</label></li>
								</ul>
							</li>
							<li id="th02">
								<ul>
									<li><a href="#"><img src="http://localhost:9000/starbucks/images/sand05.jpg"></a></li>
									<li><label>쉬림프 코코넛 샐러드 밀 박스</label></li>
								</ul>
							</li>
							<li id="th02">
								<ul>
									<li><a href="#"><img src="http://localhost:9000/starbucks/images/brunch03.jpg"></a></li>
									<li><label>블루베리 베이글</label></li>
								</ul>
							</li>
							<li id="th02">
								<ul>
									<li><a href="#"><img src="http://localhost:9000/starbucks/images/brunch04.jpg"></a></li>
									<li><label>고소한 치즈 베이글</label></li>
								</ul>
							</li>
							<li id="th02">
								<ul>
									<li><a href="#"><img src="http://localhost:9000/starbucks/images/hot02.jpg"></a></li>
									<li><label>현미 크림 수프</label></li>
								</ul>
							</li>
							<li id="th02">
								<ul>
									<li><a href="#"><img src="http://localhost:9000/starbucks/images/hot01.jpg"></a></li>
									<li><label>트러플 머쉬룸 수프</label></li>
								</ul>
							</li>
							<li id="th02">
								<ul>
									<li><a href="#"><img src="http://localhost:9000/starbucks/images/brunch05.jpg"></a></li>
									<li><label>우리나라 옥고감</label></li>
								</ul>
							</li>
							<li id="th03">
								<ul>
									<li><a href="#"><img src="http://localhost:9000/starbucks/images/ever01.jpg" name="th03"></a></li>
									<li><label>스마일 쿠키 초콜릿</label></li>
								</ul>
							</li>
							<li id="th03">
								<ul>
									<li><a href="#"><img src="http://localhost:9000/starbucks/images/ever02.jpg"></a></li>
									<li><label>스마일 쿠키 라즈베리</label></li>
								</ul>
							</li>
							<li id="th04">
								<ul>
									<li><a href="#"><img src="http://localhost:9000/starbucks/images/cake35.jpg"></a></li>
									<li><label>피칸 브라우니</label></li>
								</ul>
							</li>
							<li id="th04">
								<ul>
									<li><a href="#"><img src="http://localhost:9000/starbucks/images/cake34.jpg"></a></li>
									<li><label>크레이프 에멘탈 치즈 케이크</label></li>
								</ul>
							</li>
							<li id="th04">
								<ul>
									<li><a href="#"><img src="http://localhost:9000/starbucks/images/cake31.jpg"></a></li>
									<li><label>세븐 레이어 가나슈 케이크</label></li>
								</ul>
							</li>
							<li id="th04">
								<ul>
									<li><a href="#"><img src="http://localhost:9000/starbucks/images/cake32.jpg"></a></li>
									<li><label>청담스타 얼 그레이 밀크 케이크</label></li>
								</ul>
							</li>
							<li id="th04">
								<ul>
									<li><a href="#"><img src="http://localhost:9000/starbucks/images/cake33.jpg"></a></li>
									<li><label>청담스타 오 허니 케이크</label></li>
								</ul>
							</li>
							<li id="th04">
								<ul>
									<li><a href="#"><img src="http://localhost:9000/starbucks/images/cake36.jpg"></a></li>
									<li><label>헤븐리 티라미수</label></li>
								</ul>
							</li>
							<li id="th04">
								<ul>
									<li><a href="#"><img src="http://localhost:9000/starbucks/images/cake30.jpg"></a></li>
									<li><label>블루베리 쿠키 치즈 케이크</label></li>
								</ul>
							</li>
							<li id="th05">
								<ul>
									<li><a href="#"><img src="http://localhost:9000/starbucks/images/cake26.jpg"></a></li>
									<li><label>백년초콜릿 크런치 케이크</label></li>
								</ul>
							</li>
							<li id="th05">
								<ul>
									<li><a href="#"><img src="http://localhost:9000/starbucks/images/cake27.jpg"></a></li>
									<li><label>새코롬 돌코롬 한라봉 케이크</label></li>
								</ul>
							</li>
							<li id="th05">
								<ul>
									<li><a href="#"><img src="http://localhost:9000/starbucks/images/cake25.jpg"></a></li>
									<li><label>당근 현무암 케이크</label></li>
								</ul>
							</li>
							<li id="th05">
								<ul>
									<li><a href="#"><img src="http://localhost:9000/starbucks/images/cake28.jpg"></a></li>
									<li><label>제주 리얼녹차 티라미수 아일랜드</label></li>
								</ul>
							</li>
							<li id="th05">
								<ul>
									<li><a href="#"><img src="http://localhost:9000/starbucks/images/cake29.jpg"></a></li>
									<li><label>티라미수 아일랜드</label></li>
								</ul>
							</li>
							<li id="th05">
								<ul>
									<li><a href="#"><img src="http://localhost:9000/starbucks/images/sand20.jpg"></a></li>
									<li><label>제주 흑돼지 맨도롱 샌드위치</label></li>
								</ul>
							</li>
							<li id="th05">
								<ul>
									<li><a href="#"><img src="http://localhost:9000/starbucks/images/sand19.jpg"></a></li>
									<li><label>제주 당근 산도롱 샌드위치</label></li>
								</ul>
							</li>
							<li id="th05">
								<ul>
									<li><a href="#"><img src="http://localhost:9000/starbucks/images/sand18.jpg"></a></li>
									<li><label>제주 녹차 베이컨 치즈 베이글</label></li>
								</ul>
							</li>
							<li id="th05">
								<ul>
									<li><a href="#"><img src="http://localhost:9000/starbucks/images/sand21.jpg"></a></li>
									<li><label>제주 흑돼지 아보카도 샌드위치</label></li>
								</ul>
							</li>
							<li id="th05">
								<ul>
									<li><a href="#"><img src="http://localhost:9000/starbucks/images/bread19.jpg"></a></li>
									<li><label>올래 미니 크루아상</label></li>
								</ul>
							</li>
							<li id="th05">
								<ul>
									<li><a href="#"><img src="http://localhost:9000/starbucks/images/bread11.jpg"></a></li>
									<li><label>한라봉 스콘</label></li>
								</ul>
							</li>
							<li id="th05">
								<ul>
									<li><a href="#"><img src="http://localhost:9000/starbucks/images/bread20.jpg"></a></li>
									<li><label>우도 땅콩 데니쉬롤</label></li>
								</ul>
							</li>
							<li id="th05">
								<ul>
									<li><a href="#"><img src="http://localhost:9000/starbucks/images/bread22.jpg"></a></li>
									<li><label>제주 한라봉 뺑오쇼콜라</label></li>
								</ul>
							</li>
							<li id="th05">
								<ul>
									<li><a href="#"><img src="http://localhost:9000/starbucks/images/bread12.jpg"></a></li>
									<li><label>거문 오름 크루아상</label></li>
								</ul>
							</li>
							<li id="th05">
								<ul>
									<li><a href="#"><img src="http://localhost:9000/starbucks/images/bread23.jpg"></a></li>
									<li><label>주상절리 파이</label></li>
								</ul>
							</li>
							<li id="th05">
								<ul>
									<li><a href="#"><img src="http://localhost:9000/starbucks/images/snack13.jpg"></a></li>
									<li><label>현무암 러스크</label></li>
								</ul>
							</li>
							<li id="th05">
								<ul>
									<li><a href="#"><img src="http://localhost:9000/starbucks/images/snack06.jpg"></a></li>
									<li><label>제주 오름 초콜릿 세트</label></li>
								</ul>
							</li>
							<li id="th05">
								<ul>
									<li><a href="#"><img src="http://localhost:9000/starbucks/images/fru02.jpg"></a></li>
									<li><label>제주 자연 청 세트</label></li>
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