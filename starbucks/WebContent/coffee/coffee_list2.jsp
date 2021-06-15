<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="com.starbucks.dao.*, com.starbucks.vo.*, java.util.*"  %>
<%
	String bean = request.getParameter("beanid");	

	coffeeDAO dao = new coffeeDAO();
	ArrayList<CoffeeVO> list = dao.getList(bean);
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>커피 | Starbucks Coffee Korea</title>
</head>
<style>
	html, body, div, span, object, iframe, h1, h2, h3, h4, h5, h6, p, blockquote, pre, abbr, address, cite, code, del, dfn, em, img, ins, kbd, q, samp, small, strong, sub, sup, var, b, i, dl, dt, dd, ol, ul, li, fieldset, form, label, legend, table, caption, tbody, tfoot, thead, tr, th, td, article, aside, canvas, details, figcaption, figure, footer, header, hgroup, menu, nav, section, summary, time, mark, audio, video {
    margin: 0;
    padding: 0;
    border: 0;
    font-size: 100%;
    vertical-align: baseline;
    background: transparent;
}
.coffee_kor_txt{
	padding-top: 30px;
	position: relative;`
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
	color: #ffffff;
	float:left;
	margin-right:5px;
}
.wn_conf{
	left: 50%;
	margin: 0 0 0 -550px;
	position: relative;
	width: 1100px;
}
.wn_cont {
	border: 1px solid #dddddd;
	width: 100%;
	background: #ffffff;
	height: 71px;
	width: 1098px;
	border-radius: 3px;
	margin: 0 auto;
}
.cname_section{position: relative;} .container{width: 100%;}
.wn_cont{
    position: relative;
	left: 50%;
	width: 96%;
    margin: 0 0 0 -48%;
}
.on{
	width: 100%;
	background: #006633;
	color: #ffffff;
	border-radius: 3px;
	display: block;
	font-size: 14px;
	height: 35px;
	line-height: 35px;
	text-align: center;
	width: 250px;
}
div.wn_cont h3{
	display: block;
	position: absolute;
	
	border-radius: 3px;
}
.all{left: 2%; width: 22%;}.all_1{	left: 26.6%;} .all_2{left: 51.3%;} .all_3{left: 76%;}

/******************* 카테고리 **********************/
/* 분류 */
div.class {
	 border:1px solid lightgray;
	 border-radius: 3px;
	 padding: 20px 30px 40px 30px;
	 margin: auto;
	 width: 1100px;
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
div.cate .btn_style:last-child, div.cate .btn_style:nth-child(2) {
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
/* 상세분류 */
div.content>div>div.show{
	text-align: left;
	padding:30px 30px;
	position: relative;
	margin: auto;
	 width: 1100px;
}
/* 상세분류 드롭다운 */
.multiselect {
	width: 250px;
	position: absolute;
	right: 0;
	top:10px;
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
/************************* 상품 리스트 ***********************/
.coffee_list{
	height: auto;
	width: 1098px;
	background: #ffffff;
	margin: 0 auto;
}
.coffee_list f{
	font-size: 21px;
	color: #222222;
	font-weight: bold;
	margin-bottom: 21px;
	padding: 21px;
	vertical-align: baseline;
	line-height: 90px;
}
.cname_list{
	width: 100%;
}
.cname_list_inner{
	width: 1150px;
	margin: 0 auto;
}	
.cname__list > li{
	margin:20px 10px;
	position: relative;
	width: 260px;
	display: inline-block;
}
.cname__list > li > div > p{
	font-size: 12px;
	color: #666666;
	height: 16px;
	text-align: center;
	padding:20px 0 10px 25px;
}
.cname_list img:hover {
	transform: scale(1.1, 1.1);
	transition: all 1s ease-in-out;
}
.category span{
	margin-left:20px;
	padding:15px;
	display:inline-block;
}	
.category div {
	margin-left:20px;
	width:95%; 
	border:1px solid #dddddd;
}
.category button{
	background:none;
	border:none;
	float:right;
	padding:5px 30px 0 0;
	display:inline-block;
	
}
.check {
	padding:65px 0 0 20px;;
}
div.detail_list {
	position:relative;
	width:100%;
	text-align:center;
	padding:20px 0;
	padding-left:400px;
}
div.detail_list>select {
	width:290px;
	height:30px;
}
div.coffee_list>div {
	background-color:rgb(244,244,242);
	margin-top:10px;
}
div.coffee_list>div>img{
	padding-top:5px;
	position:relative;
	
}
div.coffee_list>div p {
	display:inline-block;
	padding:12px 0 5px 15px;
	position:absolute;
	font-weight:bold;
}
.bottom_sp {
	height:100px;
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
	    }else if (!$("#all").is(':checked')) {
	    	$("#list_cate *").hide();
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
		if($("#blond").is(':checked')){
			$("#blond").show();
		}else if(!$("#blond").is(':checked')){
			$("#blond").hide();
			$("#blond").hide();
		}
		if($("#medium").is(':checked')){
			$("#medium").show();
		}else if(!$("#medium").is(':checked')){
			$("#medium").hide();
			$("#medium").hide();
		}
		if($("#dark").is(':checked')){
			$("#dark").show();
		}else if(!$("#dark").is(':checked')){
			$("#dark").hide();
			$("#dark").hide();
		}
		if($("#flavor").is(':checked')){
			$("#flavor").show();
		}else if(!$("#flavor").is(':checked')){
			$("#flavor").hide();
			$("#flavor").hide();
		}

///////////////////////////////////////////////////

/* 분류 보기 업다운*/
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
		location.href='https://www.starbucks.co.kr/upload/b2b/co_goods.pdf';
		$("#theme_class>form>ul>li>img").each(function(idx, item){
			$(item).css('border-style','none').css('margin','0');
		});
		$("#menu_th04").css('border','2px solid #006633').css('margin','-2px');
	});
	
	
	/* 상세분류 */
	$("#one, #two").click(function(){
		var check_name = [];
		var list_name = [];
		var item_list = [];
		var i = 0, j = 0;
		$("#cate_class input[type=checkbox]").each(function(idx, item){
			if($(item).is(":checked")==true){
				check_name[i]=$(item).attr("id");/* 체크된 체크박스 이름 */
				i++;
			}
		});
		$("#list_cate>div>ul>li, #list_cate>div.label").hide();
		if($("#one").is(':checked')){
			$("#list_cate ul>li>ul>li").each(function(idx, item){
				if(($(item).children().attr("id")=="mark01")==true){
					item_list[j] = item;
					list_name[j] = $(item).parents("div").eq(0).attr("id").split("_")[0];
					j++;
				}
			});
				for(var k=0;k<list_name.length;k++){
					for(var l=0;l<check_name.length;l++){
						if(check_name[l]=="all"){
							$(item_list[k]).parents("#list_cate ul>li").show();
							$(item_list[k]).parents("#list_cate>div").prev().show();
						}else if(list_name[k]==check_name[l]){
							$(item_list[k]).parents("#list_cate ul>li").show();
							$(item_list[k]).parents("#list_cate>div").prev().show();
						}
					}
				}
		}else if($("#two").is(':checked')){
			$("#list_cate ul>li>ul>li").each(function(idx, item){
				if(($(item).children().attr("id")=="mark02")==true){
					item_list[j] = item;
					list_name[j] = $(item).parents("div").eq(0).attr("id").split("_")[0];
					j++;
				}
			});
				for(var k=0;k<list_name.length;k++){
					for(var l=0;l<check_name.length;l++){
						if(check_name[l]=="all" || list_name[k]==check_name[l]){
							$(item_list[k]).parents("#list_cate ul>li").show();
							$(item_list[k]).parents("#list_cate>div").prev().show();
						}
					}
				}
		}else if($("#three").is(':checked')){
			$("#list_cate ul>li>ul>li").each(function(idx, item){
				if(($(item).children().attr("id")=="mark03")==true){
					item_list[j] = item;
					list_name[j] = $(item).parents("div").eq(0).attr("id").split("_")[0];
					j++;
				}
			});
				for(var k=0;k<list_name.length;k++){
					for(var l=0;l<check_name.length;l++){
						if(check_name[l]=="all" || list_name[k]==check_name[l]){
							$(item_list[k]).parents("#list_cate ul>li").show();
							$(item_list[k]).parents("#list_cate>div").prev().show();
						}
					}
				}
		}else if($("#one").is(':checked')==false || $("#two").is(':checked')==false || $("#three").is(':checked')==false){
			$("#list_cate>div>ul>li").show();
			for(var l=0;l<check_name.length;l++){
				var label_name = check_name[l]+"_label";
				if(check_name[l]=="all"){
					$("#list_cate>div>ul>li").parents("#list_cate>div").prev().show();
				}else{
					$("#list_cate>div>ul>li").parents("#list_cate>div").prev().filter("#"+label_name).show();
				}
			}
		}
	});
});
</script>

<body>
<!-- Header -->
<jsp:include page="../header.jsp"></jsp:include>

<!-- 서브 타이틀  -->
	<div class="sub_title">
		<div class="sub_inner_title">
			<img class="coffee_kor_txt"src="http://localhost:9000/starbucks/images/coffee_tit1.jpg">
		<ul class="smap">
			<li><a href="http://localhost:9000/starbucks/index.jsp"><img class="home_icon" src="http://localhost:9000/starbucks/images/icon_home.png"></a></li>
			<li><img class=arrow_icon src="http://localhost:9000/starbucks/images/icon_arrow.png"></li>
			<li><a class= "this" href="http://localhost:9000/starbucks/coffee/coffee_main.jsp" style="text-decoration-line: none;">COFFEE</a></li>
			<li><img class=arrow_icon src="http://localhost:9000/starbucks/images/icon_arrow.png"></li>
			<li><a class= "this" href="http://localhost:9000/starbucks/coffee/coffee_list.jsp" style="text-decoration-line: none;">커피</a></li>
		</ul>
	</div>
</div>	

<!-- 커피 분류 -->
<div class="content">
			<!-- 분류 -->
			<div class="class">
				<div class="btn_class">
					<p>분류 보기</p>
					<img src="http://localhost:9000/starbucks/images/list_up_btn.png" id="up_btn">
				</div>
				<div class="line"></div>
				<div class="chk_class">
					<!-- 카테고리 테마 -->
					<div class="cate">
						<button type="button" class="btn_style" id="category">스타벅스 원두</button>
						<button type="button" class="btn_style" id="theme">스타벅스 비아</button>
						<button type="button" class="btn_style" id="theme">스타벅스 오리가미</button>
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
									<input type="checkbox" id="mug" class="chk"  onclick="checkboxCheck()">
									<label for="mug">블론드 로스트</label>
								</li>
								<li>
									<input type="checkbox" id="glass" class="chk"  onclick="checkboxCheck()">
									<label for="glass">미디엄 로스트</label>
								</li>
								<li>
									<input type="checkbox" id="pla" class="chk"  onclick="checkboxCheck()">
									<label for="pla">다크 로스트</label>
								</li>
								<li>
									<input type="checkbox" id="stain" class="chk"  onclick="checkboxCheck()">
									<label for="stain">플레이버</label>
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
									<img src="http://localhost:9000/starbucks/images/menu_th06.jpg" id="menu_th02">
								</li>
								<li>
									<img src="http://localhost:9000/starbucks/images/menu_th07.png" id="menu_th03">
								</li>
								<li>
									<img src="http://localhost:9000/starbucks/images/menu_th08.jpg" id="menu_th04">
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
					      <label class="chk_drop">
					        <input type="checkbox" id="three" /><label for="three"><img src="http://localhost:9000/starbucks/images/mark04.png" width="21px" height="21px"><span>판매 완료된 메뉴</span></label></label>
					    </div>
					  </div>
					</form>
				</div>
				<!-- 상세분류 끝 -->
	
<!-- coffee list -->
	<div class="list" id="list_cate">
	   <% for(CoffeeVO vo : list){
			coffeeDAO dao2 = new coffeeDAO();
			ArrayList<CoffeeVO> list2 = dao.getImgList(bean, vo.getCtype_id());
		   %>
		<article id="coffee_content">
			
			<div class="coffee_list">
				<div>
					<img src="http://localhost:9000/starbucks/images/<%= vo.getClogo() %>"><p><%= vo.getCname() %></p>
				</div>
			</div>
			
			<div class="cname_list">
				<div class="cname_list_inner">
					<ul class="cname__list">
					 <% for(CoffeeVO vo2 : list2){ %>
						<li><div><a href ="coffee_detail.jsp?ctype_id=<%=vo2.getCtype_id()%>&cimg_file=<%= vo2.getCimg_file()%>">
							<img src="http://localhost:9000/starbucks/images/<%= vo2.getCimg_file()%>"></a><p><%= vo2.getCimg_text()%></p></div>
						</li>
						<% } %>
						
					</ul>
				</div>
			</div>
		</article>
		<%  } %>

	</div>
	
<!-- Footer -->	
<jsp:include page="../footer.jsp"></jsp:include>
</body>
</html>























