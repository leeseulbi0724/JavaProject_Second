<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
 
  <style>
 /**************************** Carousel ***************************/
  .carousel-inner{
   width: 2000px;
    height: 400px;
    position:relative;
    left: 50%;
    margin-left: -1000px;
    top: 0;
  }
.carousel-control-prev-icon {
    margin-left: -900px;
}
.carousel-control-next-icon{
   margin-right: -900px;
}
/*************************** 서브 타이틀 **********************************/

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
	margin-right:2px;
	color: #ffffff;
}
.sub_title h1{
	font: bold 36px Avenir, Arial, georgia;
	color: #222222;
	padding-top: 30px;
	position: relative;
}


/************* 메인 이미지 ***************/

	section.coffee_choice_wrap, section.coffee_reserve_wrap, section.coffee_espresso_wrap, section.coffee_best_wrap , section.coffee_hs_wrap {
		width: 100%;
		height:430px;
		background-size:cover;
		background-position:left;
		background-repeat:no-repeat;
		padding :0;
		margin:0;
		
		
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
		
		<!-- carousel -->
		<div class="container mt-3">
		<div id="myCarousel" class="carousel slide" data-ride="carousel">
		
		  <!-- Indicators -->
		  <ul class="carousel-indicators">
		    <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
		    <li data-target="#myCarousel" data-slide-to="1"></li>
		  </ul>
		  
		  <!-- The slideshow -->
		  <div class="carousel-inner">
		    <div class="carousel-item active">
		      <a href="#"><img src="http://localhost:9000/starbucks/images/20210412163132808.jpg"  width="100%" height="100%"></a>
		    </div>
		    <div class="carousel-item">
		    <a href="#"><img src="http://localhost:9000/starbucks/images/20210405101646743.jpg"  width="100%" height="100%"></a>
		    </div>
		  </div>
		  
		  <!-- Left and right controls -->
		  <a class="carousel-control-prev" href="#myCarousel" data-slide="prev">
		    <span class="carousel-control-prev-icon"></span>
		  </a>
		  <a class="carousel-control-next" href="#myCarousel" data-slide="next">
		    <span class="carousel-control-next-icon"></span>
		  </a>
		</div>
	</div>
		

				<!-- 나와 어울리는 커피 찾기 -->
				<section class="coffee_choice_wrap">
					<div class="coffee_wrap_inner_r" >
						<p class="coffee_choice_txt"><img class="w_pic" src="http://localhost:9000/starbucks/images/coffee_choice_txt.png"></p>
						<div class="coffee_choice_btn"><a href="#">자세히 보기</a></div>
					</div>
				</section>
				<!-- 나와 어울리는 커피 찾기 end -->

				<!-- 스타벅스 리저브 -->
				<section class="coffee_reserve_wrap">
					<div class="coffee_wrap_inner_l">
						<p class="coffee_reserve_txt"><img class="w_pic" src="http://localhost:9000/starbucks/images/coffee_reserve_txt.png"></p>
						<div class="coffee_reserve_btn"><a href="#">자세히 보기</a></div>
					</div>
				</section>
				<!-- 스타벅스 리저브 end -->

				<!-- 에스프레소 음료 -->
				<section class="coffee_espresso_wrap">
					<div class="coffee_wrap_inner_r">
						<p class="coffee_espresso_txt"><img class="w_pic" src="http://localhost:9000/starbucks/images/coffee_espresso_txt.png"></p>
						<div class="coffee_espresso_btn"><a href="http://localhost:9000/starbucks/coffee/espresso_main.jsp">자세히 보기</a></div>
					</div>
				</section>
				<!-- 에스프레소 음료 end -->

				<!-- 최상의 커피를 즐기는 법 -->
				<section class="coffee_best_wrap">
					<div class="coffee_wrap_inner_l">
						<p class="coffee_best_txt"><img class="w_pic" src="http://localhost:9000/starbucks/images/coffee_best_txt.png"></p>
						<div class="coffee_best_btn"><a href="#">자세히 보기</a></div>
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