<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>MENU | Starbucks Coffee Korea</title>
<style>
	/* 메뉴 & 경로 */
	div.menu_carousel h2{
		text-align: left;
		padding-top:20px;
	}
	ul.route {
		list-style-type: none;
		text-align: right;
	}
	ul.route li{
		display: inline-block;
		vertical-align: middle;
	}
	ul.route li>a{
		vertical-align: middle;
		text-decoration: none;
		color: gray;
	}
	ul.route li>a:hover{
		text-decoration: underline;
	}
	div.div_route{
		text-align: center;
		margin: 0 650px;
	}
	/* 이벤트 제품 사진 */
	div.carousel_bg {
		text-align:center;
		position: relative;
	}
	div.btn_carousel {
		position: absolute;
		bottom:0;
		left: 630px;
	}
	
	/* 메뉴 이미지 리스트 */
	div.menu_img>article>div{
		position: relative;
	}
	article.drink div.img{
		width: 100%;
		height:430px;
		background-size:cover;
		background-image:url("http://localhost:9000/starbucks/images/menu_bimg1.jpg");
		background-position:left;
		background-repeat:no-repeat;
	}
	article.drink div.txt{
		position: absolute;
		right: 700px;
		top: 100px;
	}
	article.drink p{
		border:1px solid white;
		border-radius:3px;
		padding: 7px 20px;
		position: absolute;
		bottom: 130px;
		right: 855px;
	}
	article.drink p>a{
		text-decoration: none;
		color:white;
	}
	article.drink p>a:hover{
		text-decoration: underline;
		color:black;
	}
	article.drink p:hover{
		background-color: white;
	}
	article.food div.img{
		width: 100%;
		height:430px;
		background-size:cover;
		background-image:url("http://localhost:9000/starbucks/images/menu_bimg2.jpg");
		background-position:left;
		background-repeat:no-repeat;
	}article.food div.txt{
		position: absolute;
		left: 630px;
		top: 120px;
	}
	article.food p{
		border:1px solid black;
		border-radius:3px;
		padding: 7px 20px;
		position: absolute;
		bottom: 120px;
		left: 630px;
	}
	article.food p>a{
		text-decoration: none;
		color:black;
	}
	article.food p>a:hover{
		text-decoration: underline;
		color:white;
	}
	article.food p:hover{
		background-color: black;
	}
	article.product div.img{
		width: 100%;
		height:430px;
		background-size:cover;
		background-image:url("http://localhost:9000/starbucks/images/menu_bimg3.jpg");
		background-position:left;
		background-repeat:no-repeat;
	}
	article.product div.txt{
		position: absolute;
		right: 630px;
		top: 120px;
	}
	article.product p{
		border:1px solid white;
		border-radius:3px;
		padding: 7px 20px;
		position: absolute;
		bottom: 120px;
		right: 840px;
	}
	article.product p>a{
		text-decoration: none;
		color:white;
	}
	article.product p>a:hover{
		text-decoration: underline;
		color:black;
	}
	article.product p:hover{
		background-color: white;
	}
</style>
</head>
<body>
	<!--  header -->
	<jsp:include page ="../header.jsp"></jsp:include>
	
	<div class="menu_carousel">
		<section>
			<article>
				<div class="div_route">
					<h2>
						<img src="http://localhost:9000/starbucks/images/menu_tit.jpg">
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
					</ul>
				</div>
				<div class="carousel_bg">
					<div class="carousel_img"><a href="#"><img src="http://localhost:9000/starbucks/images/menu_carousel.jpg"></a></div>
					<div class="btn_carousel"><a href="#"><img src="http://localhost:9000/starbucks/images/product_view_down.png"></a></div>
				</div>
			</article>
		</section>
	</div>
	<div class="menu_img">
		<article class="drink">
			<div>
				<div class="img"></div>
				<div class="txt"><img src="http://localhost:9000/starbucks/images/menu_btxt1.png"></div>
				<p><a href="#" class="btn_detail">자세히 보기</a></p>
			</div>
		</article>	
		<article class="food">
			<div>
				<div class="img"></div>
				<div class="txt"><img src="http://localhost:9000/starbucks/images/menu_btxt2.png"></div>
				<p><a href="#" class="btn_detail">자세히 보기</a></p>
			</div>
		</article>	
		<article class="product">
			<div>
				<div class="img"></div>
				<div class="txt"><img src="http://localhost:9000/starbucks/images/menu_btxt3.png"></div>
				<p><a href="#" class="btn_detail">자세히 보기</a></p>
			</div>
		</article>	
	</div>
	<!--  footer -->
	<jsp:include page ="../footer.jsp"></jsp:include>
</body>
</html>