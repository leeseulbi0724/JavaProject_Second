<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
/***************************** carousel **********************************/
div.carousel {
	text-align:center;
}
div.carousel article>div {
	background-position: center;
	background-repeat: no-repeat;
	background-image:url("http://localhost:9000/starbucks/images/2021_summer1_bean_bg.jpg");
	width:65%; height:480px;
}
div.carousel article div {  	display:inline-block;  }
div.carousel article div:nth-child(1)>img { position:relative; margin-top:20px; margin-left:70%;}
div.carousel article div:nth-child(2)>img { position:relative; margin:0 0 150px 300px;}

div.carousel div.left { float:left; margin-top:200px;}
div.carousel div.right { float:right; margin-top:200px;}

.coffee_txt{
	padding-top: 30px;
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
.sub_title h1{
	font: bold 36px Avenir, Arial, georgia;
	color: #222222;
	padding-top: 30px;
	position: relative;
}
/******************************************************************************/

div.notice {
	background-color:black;
	display:inline-block;
	color:white;
	width:50%; height:70px;
	text-align:center;
	font-size:15px;
	
}
div.promotion {
	background-color:rgb(246,245,239);
	width:50%; height:70px;
	float:right;
	text-align:center;
	font-size:15px;
}
div.notice label, div.promotion label { font-size:17px; font-weight:bold;  }
div.notice label,  div.notice>a.link,  div.promotion label { position:relative; top:25px; }
div.notice>a.link { text-decoration:none; color:white; left:5px; right:100px; font-size:15px; }
div.notice>a.link:hover { text-decoration:underline; }
div.promotion label { color:#333; }
div.notice img, div.promotion img { display:inline-block;  float:right; position:relative; top:5px; right:5px; }
div.promotion img { top:15px; right:100px; }


/************* 메인 이미지 ***************/

	section.coffee_choice_wrap, section.coffee_reserve_wrap, section.coffee_espresso_wrap, section.coffee_best_wrap , section.coffee_hs_wrap {
		width: 100%;
		height:430px;
		background-size:cover;
		background-position:left;
		background-repeat:no-repeat;
		
	}	
	section.coffee_choice_wrap{
		background-image:url("http://localhost:9000/starbucks/images/coffee_choice_wrap_bg.jpg");
	}
	section.coffee_reserve_wrap {
		background-image:url("http://localhost:9000/starbucks/images/coffee_reserve_wrap_bg.jpg");
	}
	section.coffee_espresso_wrap {
		background-image:url("http://localhost:9000/starbucks/images/coffee_espresso_wrap_bg.jpg");
	}
	section.coffee_best_wrap {
		background-image:url("http://localhost:9000/starbucks/images/coffee_best_wrap_bg.jpg");
	} 
	section.coffee_hs_wrap {
		background-image:url("http://localhost:9000/starbucks/images/coffee_hs_wrap_bg.jpg");
	}
	div.coffee_wrap_inner_r {
		display : inline-block;
		margin-top:120px;
		margin-left:55%;
	}
	div.coffee_wrap_inner_r div {
		display : inline-block;
		border:2px solid white;
		border-radius:3px;
		padding: 7px 20px;
		bottom: 120px;
		right: 840px;
	}
	div.coffee_wrap_inner_r div>a {
		text-decoration: none;
		color:white;
	}
	div.coffee_wrap_inner_r div>a:hover{
		text-decoration: underline;
	}
	
	div.coffee_wrap_inner_l {
		display : inline-block;
		margin-top:120px;
		margin-left:30%;
	}
	div.coffee_wrap_inner_l div {
		display : inline-block;
		border:2px solid black;
		border-radius:3px;
		padding: 7px 20px;
		bottom: 120px;
		right: 840px;
	}
	div.coffee_wrap_inner_l div>a {
		text-decoration: none;
		color:black;
	}
	div.coffee_wrap_inner_l div>a:hover{
		text-decoration: underline;
	}

    
</style>
</head>
<body>
	<!--  header -->
	<jsp:include page ="../header.jsp"></jsp:include>
	
	<!--  content -->
		<!-- 서브 타이틀  -->
			<div class="sub_title">
				<div class="sub_inner_title">
					<img class="coffee_txt"src="http://localhost:9000/starbucks/images/coffee_tit.jpg">
					<ul class="smap">
						<li><a href="http://localhost:9000/starbucks/index.jsp"><img class="home_icon" src="http://localhost:9000/starbucks/images/icon_home.png"></a></li>
						<li><img class=arrow_icon src="http://localhost:9000/starbucks/images/icon_arrow.png"></li>
						<li><a class= "this" href="#" style="text-decoration-line: none;">COFFEE</a></li>
					</ul>
				</div>
			</div>	
		
			<div class="carousel">
				<article>
					<div>
					<div><img src="http://localhost:9000/starbucks/images/2021_summer1_bean.png"></div>				
					<div><img src="http://localhost:9000/starbucks/images/2021_summer1_bean_txt.png"></div>
					</div>
				</article>
			</div>
		</div>
		
		<div class="main">
			<div class="notice">			
				<label>공지사항</label>
				<a href="#" class=link>스타벅스 공지사항</a>
				<a href="#"><img src="http://localhost:9000/starbucks/images/plus.PNG"></a>
			</div>
			<a href="#"><div class="promotion">
				<label>스타벅스 프로모션</label>
				<img src="http://localhost:9000/starbucks/images/btn_prom_down.png" width=40 height=40>
			</div></a>
		</div>

				<!-- 나와 어울리는 커피 찾기 -->
				<section class="coffee_choice_wrap">
					<div class="coffee_wrap_inner_r" >
						<p class="coffee_choice_txt"><img class="w_pic" src="http://localhost:9000/starbucks/images/coffee_choice_txt.png"></p>
						<div class="coffee_choice_btn"><a href="/coffee/productFinder.do">자세히 보기</a></div>
					</div>
				</section>
				<!-- 나와 어울리는 커피 찾기 end -->

				<!-- 스타벅스 리저브 -->
				<section class="coffee_reserve_wrap">
					<div class="coffee_wrap_inner_l">
						<p class="coffee_reserve_txt"><img class="w_pic" src="http://localhost:9000/starbucks/images/coffee_reserve_txt.png"></p>
						<div class="coffee_reserve_btn"><a href="/coffee/reserve_info.do">자세히 보기</a></div>
					</div>
				</section>
				<!-- 스타벅스 리저브 end -->

				<!-- 에스프레소 음료 -->
				<section class="coffee_espresso_wrap">
					<div class="coffee_wrap_inner_r">
						<p class="coffee_espresso_txt"><img class="w_pic" src="http://localhost:9000/starbucks/images/coffee_espresso_txt.png"></p>
						<div class="coffee_espresso_btn"><a href="/coffee/espresso.do">자세히 보기</a></div>
					</div>
				</section>
				<!-- 에스프레소 음료 end -->

				<!-- 최상의 커피를 즐기는 법 -->
				<section class="coffee_best_wrap">
					<div class="coffee_wrap_inner_l">
						<p class="coffee_best_txt"><img class="w_pic" src="http://localhost:9000/starbucks/images/coffee_best_txt.png"></p>
						<div class="coffee_best_btn"><a href="/coffee/higher_enjoy.do">자세히 보기</a></div>
					</div>
				</section>
				<!-- 최상의 커피를 즐기는 법 end -->
				
				<!-- 커피 이야기 -->
				<section class="coffee_hs_wrap">
					<div class="coffee_wrap_inner_r">
						<p class="coffee_hs_txt"><img class="w_pic" src="http://localhost:9000/starbucks/images/coffee_hs_txt.png"></p>
						<div class="coffee_hs_btn"><a href="/coffee/story.do">자세히 보기</a></div>
					</div>
				</section>
				<!-- 커피 이야기  end -->
	
	
	<!--  footer -->
	<jsp:include page ="../footer.jsp"></jsp:include>
</body>
</html>