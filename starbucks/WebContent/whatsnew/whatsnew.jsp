<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="js/jquery-3.6.0.min.js"></script>
<style>
html, body, div, span, object, iframe, h1, h2, h3, h4, h5, h6, p, blockquote, pre, abbr, address, cite, code, del, dfn, em, img, ins, kbd, q, samp, small, strong, sub, sup, var, b, i, dl, dt, dd, ol, ul, li, fieldset, form, label, legend, table, caption, tbody, tfoot, thead, tr, th, td, article, aside, canvas, details, figcaption, figure, footer, header, hgroup, menu, nav, section, summary, time, mark, audio, video {
    margin: 0;
    padding: 0;
    border: 0;
    font-size: 100%;
    vertical-align: baseline;
    background: transparent;
}
.sub_title{
	width: 100%;
	height: 98px;
	background: #ffffff;
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
.sub_title h1{
	font: bold 36px Avenir, Arial, georgia;
	color: #222222;
	padding-top: 30px;
	position: relative;
}
.slide_images{
	width: 600vw;
	transition: transform 0.5s;
}
.slides{
	width: 100vw;
	float: left;
}
.slides img{
	width: 100%;
}
.other{
	width: 1100px;
	height: 70px;
	background: url(http://localhost:9000/starbucks/images/green_bg.jpg);
	position: relative;
    left: 50%;
    margin-left: -550px;
    margin-top: 0;	
}
.other p{
	text-align: center;
    position: relative;
    left: 20px;
    line-height: 70px;
}
.other p a{
	font-size: 26px;
	color: #ffffff;
}
.other_lo{
	width: 100%;
	height: 70px;
    background: #7b7c7f;
    margin:0;
}
.other p a img{
	vertical-align: middle;
	-webkit-filter: opcity(.5) drop-shadow(0 0 0 white);
	filter: opcity(.5) drop-shadow(0 0 0 white);
	
}
.event_img{
	display: none;
	margin: 0 auto;
	max-width: 100%;
	vertical-align: top;
}
.event{
	width: 100%;
	height: 430px;
	background-size: cover;
	position: relative;
	background: url(http://localhost:9000/starbucks/images/promotion_bimg1.jpg) 20% 50% no-repeat;
	
}
.event_inner{
	width: 1100px;
	margin: 0 auto;
	position: relative;
}
.event_txt{
	width: 258px;
	position: absolute;
	left: 595px;
	top: 115px;
}
.event_btn{
	width: 121px;
	height: 34px;
	border: 2px solid #fff;
	border-radius: 3px;
	position: absolute;
	left: 760px;
	top: 253px;
	line-height: 34px;
}
.event_btn a{
	color: #fff;
	display: block;
	text-align: center;
	width: 100%;
}
.news{
	width: 100%;
	height: 430px;
	background-size: cover;
	position: relative;
	background: url(http://localhost:9000/starbucks/images/promotion_bimg2.jpg) 80% 50% no-repeat;
}
.news_inner{
	width: 1100px;
	margin: 0 auto;
}
.news_text img{
	position: absolute;
	top: 130px;
}
.news_btn{
	width: 121px;
	height: 34px;
	border: 2px solid #222222;
	border-radius: 3px;
	position: absolute;
	
	top: 253px;
	line-height: 34px;
}
.news_btn a{
	color: #222222;
	display: block;
	text-align: center;
	width: 100%;
	
}
.store_event{
	width: 100%;
	height: 430px;
	background-size: cover;
	position: relative;
	background: url(http://localhost:9000/starbucks/images/promotion_bimg3.jpg) 20% 50% no-repeat;
	
}
.download{
	width: 100%;
	height: 430px;
	background-size: cover;
	position: relative;
	background: url(http://localhost:9000/starbucks/images/promotion_bimg4.jpg) 20% 50% no-repeat;
	
}
div > button{
padding: 0;
border: none;
background: none;
}

.div_btn{
	bottom: 223px;
    height: 12px;
    position: absolute;
    text-align: center;
    width: 100%;
    z-index: 9999;
    display: inline-block;
}


</style>
<script>

window.onload = function(){
	document.querySelector('.btn2').addEventListener('click', function(){
		document.querySelector('.slide_images').style.transform = 'translate(-100vw)';	
	});
	
	document.querySelector('.btn3').addEventListener('click', function(){
		document.querySelector('.slide_images').style.transform = 'translate(-200vw)';	
	});
	document.querySelector('.btn4').addEventListener('click', function(){
		document.querySelector('.slide_images').style.transform = 'translate(-300vw)';	
	});
	document.querySelector('.btn5').addEventListener('click', function(){
		document.querySelector('.slide_images').style.transform = 'translate(-400vw)';	
	});
	document.querySelector('.btn6').addEventListener('click', function(){
		document.querySelector('.slide_images').style.transform = 'translate(-500vw)';	
	});
	document.querySelector('.btn1').addEventListener('click', function(){
		document.querySelector('.slide_images').style.transform = 'translate(0vw)';	
	});
	
	function toggleImg() {
	      document.getElementById("img").src = "http://localhost:9000/starbucks/images/visual_on.png";
	    }
}
		
</script>
</head>

<body>
<!--  Header  -->
<jsp:include page="../header.jsp"></jsp:include>

<!-- Sub Title -->
 <div class= "sub_title"> 
	<div class= "sub_inner_title">
	<h1>What's new</h1>
	
	<ul class="smap">
	<li><a href="http://localhost:9000/starbucks/index.jsp"><img class="home_icon" src="http://localhost:9000/starbucks/images/icon_home.png"></a></li>
	<li><img class=arrow_icon src="http://localhost:9000/starbucks/images/icon_arrow.png"></li>
	<li><a class= "this" href="http://localhost:9000/starbucks/whatsnew.jsp" style="text-decoration-line: none;">WHAT'S NEW</a></li>
	</ul>
	</div>
 </div>	
<!-- 이미지 슬라이드 -->
<div style= "overflow:hidden">
	<div class="slide_images">
		<div class="slides">
	        <img src= "http://localhost:9000/starbucks/images/whatsnew1.jpg">
		</div>
		<div class="slides">
			<img src= "http://localhost:9000/starbucks/images/whatsnew2.jpg">
		</div>
		<div class="slides">
			<img src= "http://localhost:9000/starbucks/images/whatsnew3.jpg">
		</div>
		<div class="slides">
			<img src= "http://localhost:9000/starbucks/images/whatsnew4.jpg">
		</div>
		<div class="slides">
			<img src= "http://localhost:9000/starbucks/images/whatsnew5.jpg">
		</div>
		<div class="slides">
			<img src= "http://localhost:9000/starbucks/images/whatsnew6.jpg">
		</div>
	</div>
</div>
<!-- 슬라이드 버튼  -->
<div class="div_btn">
<button onclick="toggleImg();" class="btn1"><img id="img" src="http://localhost:9000/starbucks/images/visual_off.png"></button>
<button id="img" class="btn2"><img src="http://localhost:9000/starbucks/images/visual_off.png"></button>
<button id="img" class="btn3"><img src="http://localhost:9000/starbucks/images/visual_off.png"></button>
<button id="img" class="btn4"><img src="http://localhost:9000/starbucks/images/visual_off.png"></button>
<button id="img" class="btn5"><img src="http://localhost:9000/starbucks/images/visual_off.png"></button>
<button id="img" class="btn6"><img src="http://localhost:9000/starbucks/images/visual_off.png"></button>
</div>

<!--  전체보기  -->
<div class="other_lo">
	<div class="other">
		<p>
			<a href="#">전체 보기&nbsp;&nbsp;<img src="http://localhost:9000/starbucks/images/useInfo_btn_down.png" ></a>
		</p>
	</div>
</div>

<!-- 이벤트 -->
<div class="event">
	<div class= "event_inner">
		<img class= "event_img"src="http://localhost:9000/starbucks/images/promotion_bimg1.jpg">
	
	<div class= "event_txt">
		<img alt="이벤트. 다양하고 특별한 프로모션과 이벤트를 통해 풍성한 혜택을 누려보세요." src="http://localhost:9000/starbucks/images/promotion_btxt1_20210218.png">
	</div>
	</div>
	<div class="event_btn">
		<a href="event.jsp" title="이벤트 자세히 보기">자세히 보기</a>
	</div>
</div>

<!-- 뉴스  -->
<div class="news">
	<div class="news_inner">
		<img class="event_img" src="http://localhost:9000/starbucks/images/promotion_bimg2.jpg">
		<div class="news_text">
			<img src="http://localhost:9000/starbucks/images/promotion_btxt2_20210218.png">
		</div>
		<div class= "news_btn">
			<a href="" title="뉴스 자세히 보기">자세히 보기</a>
		</div>
	</div>
</div>

<!-- 매장별 이벤트 -->
<div class="store_event">
	<div class= "event_inner">
		<img class= "event_img"src="http://localhost:9000/starbucks/images/promotion_bimg1.jpg">
	
	<div class= "event_txt">
		<img src="http://localhost:9000/starbucks/images/promotion_btxt3.png">
	</div>
	</div>
	<div class="event_btn">
		<a href="" title="이벤트 자세히 보기">자세히 보기</a>
	</div>
</div>

<!--월페이퍼 다운로드 -->
<div class="download">
	<div class="news_inner">
		<img class="event_img" src="http://localhost:9000/starbucks/images/promotion_bimg2.jpg">
		<div class="news_text">
			<img src="http://localhost:9000/starbucks/images/promotion_btxt4.png">
		</div>
		<div class= "news_btn">
			<a href="" title="뉴스 자세히 보기">자세히 보기</a>
		</div>
	</div>
</div>
<!-- Footer -->
<jsp:include page="../footer.jsp"></jsp:include>
</body>
<script>
function toggleImg() {
	
    document.getElementById("img").src = "http://localhost:9000/starbucks/images/visual_on.png";
  }
</script>
</html>