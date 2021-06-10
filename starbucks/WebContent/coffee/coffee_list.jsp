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
section.coffee_wrap {
    position: relative;
}
#container {
    width: 100%;
}
.wn_cont {
    left: 50%;
    margin: 0 0 0 -550px;
    position: relative;
    width: 1100px;
    background: #ffffff;
    border: 1px solid #dddddd;
    height: auto;
    width: 1098px;
    border-radius: 3px;
    padding-bottom:20px;
}
div.cate{
	text-align: left;
	margin: 25px 0 0 20px;
}
div.cate .btn_style{
	width: 200px;
	height:35px;
	font-size: 14px;
	border-radius: 3px;
	margin-right: 5px;
	background: #f4f4f1;
	color:#333;
	border: 1px solid #f4f4f1;
}
div.cate .green_btn{
	width: 200px;
	height:35px;
	background: #006633;
	border: 1px solid #006633;
	color: white;
	font-size: 14px;
	border-radius: 3px;
	margin-right: 5px;
}

div.cate .btn_style:hover, div.cate .green_btn:hover{
	text-decoration: underline;
	cursor: pointer;
}
#cate_class {
	height :30px;
	padding:15px 0 0 20px;
}

/************************* 상품 리스트 ***********************/
.coffee_list{
	height: 90px;
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
//////////////체크박스////////////////////
$( document ).ready(function() {
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
	
});
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
	});
///////////////////////////////////////////////////

/* 분류 보기 업다운*/
$( document ).ready(function() {
	$(".btn_class img").click(function(){
		var id=$(this).attr("id");
		if(id=="up_btn"){
			$(".btn_class img").attr("src","http://localhost:9000/starbucks/images/list_down_btn.png");
			$(".btn_class img").attr("id","down_btn");
			$(".coffee_wrap").hide();
			$(".line").hide();
		}else{
			$(".btn_class img").attr("src","http://localhost:9000/starbucks/images/list_up_btn.png");
			$(".btn_class img").attr("id","up_btn");
			$(".coffee_wrap").show();
			$(".line").show();
		}

	});
	
	/* 분류 클릭시 */
	$("#bean1").click(function(){
		$("#bean2").attr("class","btn_style");
		$("#bean1").attr("class","green_btn");
		$("#bean3").attr("class","btn_style");
	});
	$("#bean2").click(function(){
		$("#bean1").attr("class","btn_style");
		$("#bean2").attr("class","green_btn");
		$("#bean3").attr("class","btn_style");
	});
	$("#bean3").click(function(){
		$("#bean1").attr("class","btn_style");
		$("#bean3").attr("class","green_btn");
		$("#bean2").attr("class","btn_style");
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
			<li><a class= "this" href="http://localhost:9000/starbucks/coffee/coffee_list1.jsp" style="text-decoration-line: none;">커피</a></li>
		</ul>
	</div>
</div>	

<!-- 커피 분류 -->
	<div id= "container">
		<div class="wn_cont">
                   <div class ="category">
	                   	<span>분류보기</span>
	                   	<button type="button" class="btn_class"><img src="http://localhost:9000/starbucks/images/list_down_btn.png"></button>
	                   	<div class="line"></div>
                   </div>
			<section class="coffee_wrap">
                   <div class="box_bg">
                    <!-- 카테고리 테마 -->
					<div class="cate">
						<a href="http://localhost:9000/starbucks/coffee/coffee_list.jsp?beanid=<%="bean1"%>"><button type="button" class="green_btn" id="bean1">스타벅스 원두</button></a>
						<a href="http://localhost:9000/starbucks/coffee/coffee_list.jsp?beanid=<%="bean2"%>"><button type="button" class="btn_style" id="bean2">스타벅스 비아</button></a>
						<a href="http://localhost:9000/starbucks/coffee/coffee_list.jsp?beanid=<%="bean3"%>"><button type="button" class="btn_style" id="bean3">스타벅스 오리가미</button></a>
					</div>               
        			</div>
        			<div class="check" id="cate_class">
        				<span><input type="checkbox" id="all" checked="checked"  onclick="allCheck()">전체 상품보기</span> 
        				<span><input type="checkbox" id="blond" class="chk" onclick="checkboxCheck()">블론드 로스트</span> 
        				<span><input type="checkbox" id="medium" class="chk" onclick="checkboxCheck()">미디엄 로스트</span> 
        				<span><input type="checkbox" id="dark" class="chk" onclick="checkboxCheck()">다크 로스트</span> 
        				<span><input type="checkbox" id="flavor" class="chk" onclick="checkboxCheck()">플레이버</span> 
        			</div>

            </section>
		</div>
	</div>
<!-- 커피 상세 -->
	
		<div class="detail_list">
			<select>
				<option value="choice" >상세 분류</option>
				<option value="choice">신규 출시된 메뉴</option>
				<option value="choice">한정 기간 출시되는 시즌성 메뉴</option>
			</select>
		</div>
	
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
							<img src="http://localhost:9000/starbucks/images/<%= vo2.getCimg_file()%>"></a><p><%= vo2.getCimg_text()%></p></div></li>
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























