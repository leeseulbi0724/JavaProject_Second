<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
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
	padding: 30px 0 0 70px;
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
    height: 150px;
    width: 1098px;
    border-radius: 3px;
}


section.coffee_wrap h3 {display:block;position:absolute; top:20px; bottom:50px; border-radius:3px;}
section.coffee_wrap h3.coffee_beans1 { left:30px; }
section.coffee_wrap h3.coffee_beans2 { left:300px; }
section.coffee_wrap h3.coffee_beans3 { left:570px; }
section.coffee_wrap h3 a { background:#f4f4f2; color:#222222; border-radius:3px; display:block; font-size:14px; height:35px; line-height:35px; text-align:center; width:250px; }
section.coffee_wrap h3 a.on {background:#006633;color:#ffffff;border-radius:3px;display:block;font-size:14px;height:35px;line-height:35px;text-align:center;width:250px;}

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
	width:77%;
	text-align:right;
	padding-top:20px;
}
div.detail_list>select {
	position:relative;
	width:280px;
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


</style>
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
	                   	<button type="button"><img src="http://localhost:9000/starbucks/images/list_down_btn.png"></button>
	                   	<div></div>
                   </div>
			<section class="coffee_wrap">
                   <div class="box_bg">
						<h3 class="coffee_beans1"><a href="http://localhost:9000/starbucks/coffee/coffee_list1.jsp">스타벅스 원두</a></h3>
                        <h3 class="coffee_beans2"><a href="http://localhost:9000/starbucks/coffee/coffee_list2.jsp">스타벅스 비아</a></h3>
        				<h3 class="coffee_beans3"><a class="on" href="http://localhost:9000/starbucks/coffee/coffee_list3.jsp">스타벅스 오리가미</a></h3>                                 
        			</div>
        			<div class="check">
        				<span><input type="checkbox">전체 상품보기</span> 
        				<span><input type="checkbox">블론드 로스트</span> 
        				<span><input type="checkbox">미디엄 로스트</span> 
        				<span><input type="checkbox">다크 로스트</span> 
        				<span><input type="checkbox">플레이버</span> 
        			</div>

            </section>
		</div>
	</div>
<!-- 커피 상세 -->
	
		<div class="detail_list">
			<select>
				<option value="choice">상세 분류</option>
				<option value="choice">신규 출시된 메뉴</option>
				<option value="choice">한정 기간 출시되는 시즌성 메뉴</option>
			</select>
		</div>
		
	<article>
		<div class="coffee_list">
		</div>
	</article>

			
<!-- Footer -->	
<jsp:include page="../footer.jsp"></jsp:include>
</body>
</html>























