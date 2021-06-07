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
		padding-top:40px;
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
		color: black;
		font-size: 12px;
	}
	ul.route li>a:hover{
		text-decoration: underline;
	}
	div.div_route{
		width: 1100px;
		height: 115px;
		margin: 0 auto;
	}
	.carousel_control{
		position:absolute;
		right:80px;bottom:15px;left:0;
		z-index:20;
		display:flex;
		justify-content:center;
		padding-left:0;
		margin-right:15%;
		margin-left:15%;
	}
	.carousel_control:hover{
		cursor: pointer;
	}
	
	/* 이벤트 제품 사진 */
	div.btn_pv {
		position: relative;
		bottom: 52px;
		left: 445px;
		z-index: 1000;
		display: inline-block;
	}
	div.btn_pv:hover{
		cursor: pointer;
	}
	
	/* 메뉴 이미지 리스트 */
	.product_view{
		width: 100%;
		background-color: #fffaf4;
		margin: 0 auto;
		text-align: center;
		position: relative;
		border-bottom: 2px solid #0d6035;
	    padding: 28px 0 80px 0;
	    display: none;
	}
	.product_view>div{
		width: 1100px;
		margin: 0 auto;
		display: block;
	}
	.product_view>div ul{
		list-style-type: none;
		text-align: left;
		margin:0; padding:0;
	}
	.product_view>div>ul{
		width: 1140px;
		position: relative;
		left: -20px;
	}
	.product_view>div>ul>li{
		display: inline-block;
		vertical-align: middle;
		margin:20px 0 20px 20px; 
		padding:0;
		font-size: 13px;
		position: relative;
	}
	.product_view>div>ul>li>ul>li>a>img{
		width: 260px;
		height: 245px;
		overflow:hidden;
		object-fit: cover;
		object-position: center top;
		transform: scale(1.0, 1.0);
		transition: all 1s ease-in-out;
	}
	.product_view>div>ul>li>ul>li{
		width: 260px;
		max-height: 245px;
		overflow:hidden;
	}
	.product_view>div>ul>li>ul>li>a>img:hover{
	transform: scale(1.1, 1.1);
	transition: all 1s ease-in-out;
	}
	.product_view>div>ul>li>ul>li>label{
		display:block;
		margin-top:10px;
		text-align: center;
		font-size: 14px;
	}
	
	article.drink div.img{
		width: 100%;
		height:430px;
		background-size:cover;
		background-image:url("http://localhost:9000/starbucks/images/menu_bimg1.jpg");
		background-position:left;
		background-repeat:no-repeat;
		text-align: center;
	}
	article.drink div.txt{
		display: inline-block;
		text-align: left;
		margin: 120px 0 0 970px;
	}
	article.drink a{
		text-decoration: none;
		color:white;
		border:2px solid white;
		border-radius:3px;
		padding: 7px 20px;
		position: relative;
		top: 50px;
		right: 285px;
	}
	article.drink a:hover{
		background-color: white;
		text-decoration: underline;
		color:black;
	}
	article.food div.img{
		width: 100%;
		height:430px;
		background-size:cover;
		background-image:url("http://localhost:9000/starbucks/images/menu_bimg2.jpg");
		background-position: left;
		background-repeat:no-repeat;
		text-align: center;
	}article.food div.txt{
		display: inline-block;
		text-align: left;
		margin: 120px 520px 0 0;
	}
	article.food a{
		text-decoration: none;
		color:black;
		border:2px solid black;
		border-radius:3px;
		padding: 7px 20px;
		position: relative;
		top: 50px;
		right: 940px;
	}
	article.food a:hover{
		text-decoration: underline;
		color:white;
		background-color: black;
	}
	article.product div.img{
		width: 100%;
		height:430px;
		background-size:cover;
		background-image:url("http://localhost:9000/starbucks/images/menu_bimg3.jpg");
		background-position:left;
		background-repeat:no-repeat;
		text-align: center;
	}
	article.product div.txt{
		display: inline-block;
		text-align: left;
		margin: 120px 0 0 1020px;
	}
	article.product a{
		text-decoration: none;
		color:white;
		border:2px solid white;
		border-radius:3px;
		padding: 7px 20px;
		position: relative;
		top: 50px;
		right: 343px;
	}
	article.product a:hover{
		background-color: white;
		text-decoration: underline;
		color:black;
	}
</style>
<link rel="stylesheet" href="http://localhost:9000/starbucks/menu/menu_carousel.css">
<script src="http://localhost:9000/mycgv/js/jquery-3.6.0.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
<script>
/* 관련 제품 보기 */
$( document ).ready(function() {
	$(".btn_pv").click(function(){
		var id=$(this).attr("id");
		if(id=="up_btn"){
			$(".btn_pv img").attr("src","http://localhost:9000/starbucks/images/product_view_down.png");
			$(".btn_pv").attr("id","down_btn");
			$(".product_view").slideUp(500);
		}else{
			$(".btn_pv img").attr("src","http://localhost:9000/starbucks/images/product_view_up.png");
			$(".btn_pv").attr("id","up_btn");
			$(".product_view").slideDown(500);
		}
	});
	$(".carousel_control").click(function(){
		var id=$(this).attr("id");
		if(id=="pause"){
			$(".carousel_control img").attr("src","http://localhost:9000/starbucks/images/play.png");
			$(".carousel_control").attr("id","play");
			$("#demo").carousel("pause");
		}else{
			$(".carousel_control img").attr("src","http://localhost:9000/starbucks/images/pause.png");
			$(".carousel_control").attr("id","pause");
			$("#demo").carousel("cycle");
		}
	});
});
</script>
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
				 <!-- 캐러셀 시작 -->
				<div id="demo" class="carousel slide" data-ride="carousel">
				
					<!-- Indicators -->
					<div class="indicators">
						<div class="carousel_control" id="pause">
							<img src="http://localhost:9000/starbucks/images/pause.png">
						</div>
						<ul class="carousel-indicators">
							<li data-target="#demo" data-slide-to="0" class="active"></li>
							<li data-target="#demo" data-slide-to="1"></li>
							<li data-target="#demo" data-slide-to="2"></li>
						</ul>
					</div>
					
					<!-- The slideshow -->
					<div class="carousel-inner">
						<div class="carousel-item active">
							<img src="http://localhost:9000/starbucks/images/menu_carousel.jpg" width="2000" height="400">
						</div>
						<div class="carousel-item">
							<img src="http://localhost:9000/starbucks/images/menu_carousel.jpg" width="2000" height="400">
						</div>
						<div class="carousel-item">
							<img src="http://localhost:9000/starbucks/images/menu_carousel.jpg" width="2000" height="400">
						</div>
					</div>
					
					<!-- Left and right controls -->
					<a class="carousel-control-prev" href="#demo" data-slide="prev">
						<span class="carousel-control-prev-icon"></span>
					</a>
					<a class="carousel-control-next" href="#demo" data-slide="next">
						<span class="carousel-control-next-icon"></span>
					</a>
					<div class="btn_pv" id="down_btn"><img src="http://localhost:9000/starbucks/images/product_view_down.png"></div>
				</div>
				<!-- 캐러셀 종료 -->
				
			</article>
		</section>
	</div>
	<div class="product_view">
		<div>
			<ul>
				<li>
					<ul>
						<li><a href="drink_detail.jsp"><img src="http://localhost:9000/starbucks/images/cold_brew02.jpg"></a></li>
						<li><label>포레스트 콜드 브루</label></li>
					</ul>
				</li>
				<li>
					<ul>
						<li><a href="#"><img src="http://localhost:9000/starbucks/images/fra01.jpg"></a></li>
						<li><label>바나나 크림 다크 초코 블렌디드</label></li>
					</ul>
				</li>
				<li>
					<ul>
						<li><a href="#"><img src="http://localhost:9000/starbucks/images/etc01.jpg"></a></li>
						<li><label>샤이닝 머스캣 에이드</label></li>
					</ul>
				</li>
				<li>
					<ul>
						<li><a href="#"><img src="http://localhost:9000/starbucks/images/cake03.jpg"></a></li>
						<li><label>바나나 체커스 케이크</label></li>
					</ul>
				</li>
				<li>
					<ul>
						<li><a href="#"><img src="http://localhost:9000/starbucks/images/cake02.jpg"></a></li>
						<li><label>바나나 슈크림 타르트</label></li>
					</ul>
				</li>
				<li>
					<ul>
						<li><a href="#"><img src="http://localhost:9000/starbucks/images/bread01.jpg"></a></li>
						<li><label>바나나 슈크림 큐브</label></li>
					</ul>
				</li>
				<li>
					<ul>
						<li><a href="#"><img src="http://localhost:9000/starbucks/images/mug02.jpg"></a></li>
						<li><label>21 서머 마레 머그 355ml</label></li>
					</ul>
				</li>
				<li>
					<ul>
						<li><a href="#"><img src="http://localhost:9000/starbucks/images/mug03.jpg"></a></li>
						<li><label>21 서머 테일 머그 355ml</label></li>
					</ul>
				</li>
				<li>
					<ul>
						<li><a href="#"><img src="http://localhost:9000/starbucks/images/mug08.jpg"></a></li>
						<li><label>SS 마레 스탠리 듀 컵 세트 355ml</label></li>
					</ul>
				</li>
				<li>
					<ul>
						<li><a href="#"><img src="http://localhost:9000/starbucks/images/glass09.jpg"></a></li>
						<li><label>21 서머 해마 글라스 473ml</label></li>
					</ul>
				</li>
				<li>
					<ul>
						<li><a href="#"><img src="http://localhost:9000/starbucks/images/glass08.jpg"></a></li>
						<li><label>21 서머 글리터 핸들 글라스 355ml</label></li>
					</ul>
				</li>
				<li>
					<ul>
						<li><a href="#"><img src="http://localhost:9000/starbucks/images/glass01.jpg"></a></li>
						<li><label>21 서머 고블렛 글라스 355ml</label></li>
					</ul>
				</li>
				<li>
					<ul>
						<li><a href="#"><img src="http://localhost:9000/starbucks/images/cof06.jpg"></a></li>
						<li><label>언더더씨 글라스 서버 600ml</label></li>
					</ul>
				</li>
				<li>
					<ul>
						<li><a href="#"><img src="http://localhost:9000/starbucks/images/pla21.jpg"></a></li>
						<li><label>언더더씨 슬림라인 워터보틀 532ml</label></li>
					</ul>
				</li>
				<li>
					<ul>
						<li><a href="#"><img src="http://localhost:9000/starbucks/images/pla20.jpg"></a></li>
						<li><label>마레 지아 워터보틀 473ml</label></li>
					</ul>
				</li>
				<li>
					<ul>
						<li><a href="#"><img src="http://localhost:9000/starbucks/images/pla11.jpg"></a></li>
						<li><label>마레 DW 컬러체인징 텀블러 473ml</label></li>
					</ul>
				</li>
				<li>
					<ul>
						<li><a href="#"><img src="http://localhost:9000/starbucks/images/pla12.jpg"></a></li>
						<li><label>마레 콜드컵 710ml</label></li>
					</ul>
				</li>
				<li>
					<ul>
						<li><a href="#"><img src="http://localhost:9000/starbucks/images/pla07.jpg"></a></li>
						<li><label>언더더씨 워터볼 텀블러 355ml</label></li>
					</ul>
				</li>
				<li>
					<ul>
						<li><a href="#"><img src="http://localhost:9000/starbucks/images/stain11.jpg"></a></li>
						<li><label>SS 마레 힐사이드 텀블러 355ml</label></li>
					</ul>
				</li>
				<li>
					<ul>
						<li><a href="#"><img src="http://localhost:9000/starbucks/images/stain18.jpg"></a></li>
						<li><label>SS 언더더씨 DW 투고 텀블러 473ml</label></li>
					</ul>
				</li>
				<li>
					<ul>
						<li><a href="#"><img src="http://localhost:9000/starbucks/images/stain19.jpg"></a></li>
						<li><label>SS 언더더씨 야빈 텀블러 473ml</label></li>
					</ul>
				</li>
				<li>
					<ul>
						<li><a href="#"><img src="http://localhost:9000/starbucks/images/stain38.jpg"></a></li>
						<li><label>SS 마레 스탠리 플라스크 237ml</label></li>
					</ul>
				</li>
				<li>
					<ul>
						<li><a href="#"><img src="http://localhost:9000/starbucks/images/thermos04.jpg"></a></li>
						<li><label>SS 마레 스탠리 베이츠 보온병 473ml</label></li>
					</ul>
				</li>
				<li>
					<ul>
						<li><a href="#"><img src="http://localhost:9000/starbucks/images/thermos05.jpg"></a></li>
						<li><label>SS 마레 스탠리 통가 보온병 710ml</label></li>
					</ul>
				</li>
				<li>
					<ul>
						<li><a href="#"><img src="http://localhost:9000/starbucks/images/thermos06.jpg"></a></li>
						<li><label>SS 마레 스탠리 푸드 자 414ml</label></li>
					</ul>
				</li>
				<li>
					<ul>
						<li><a href="#"><img src="http://localhost:9000/starbucks/images/acc06.jpg"></a></li>
						<li><label>21 서머1 마레 보틀 파우치</label></li>
					</ul>
				</li>
				<li>
					<ul>
						<li><a href="#"><img src="http://localhost:9000/starbucks/images/acc07.jpg"></a></li>
						<li><label>21 서머1 마레 폴더블 백팩</label></li>
					</ul>
				</li>
				<li>
					<ul>
						<li><a href="#"><img src="http://localhost:9000/starbucks/images/acc27.jpg"></a></li>
						<li><label>21 서머 1 스탠리 런치 박스</label></li>
					</ul>
				</li>
				<li>
					<ul>
						<li><a href="#"><img src="http://localhost:9000/starbucks/images/mug11.jpg"></a></li>
						<li><label>고슴도치 스푼 머그 296ml</label></li>
					</ul>
				</li>
				<li>
					<ul>
						<li><a href="#"><img src="http://localhost:9000/starbucks/images/glass10.jpg"></a></li>
						<li><label>고슴도치 머들러 글라스 355ml</label></li>
					</ul>
				</li>
				<li>
					<ul>
						<li><a href="#"><img src="http://localhost:9000/starbucks/images/stain12.jpg"></a></li>
						<li><label>SS 미르 고슴도치 텀블러 473ml</label></li>
					</ul>
				</li>
				<li>
					<ul>
						<li><a href="#"><img src="http://localhost:9000/starbucks/images/stain13.jpg"></a></li>
						<li><label>SS 미르 핸들 고슴도치 텀블러 591ml</label></li>
					</ul>
				</li>
				<li>
					<ul>
						<li><a href="#"><img src="http://localhost:9000/starbucks/images/pla16.jpg"></a></li>
						<li><label>서머 민트 스터드 텀블러 710ml</label></li>
					</ul>
				</li>
				<li>
					<ul>
						<li><a href="#"><img src="http://localhost:9000/starbucks/images/pla19.jpg"></a></li>
						<li><label>고슴도치 스퀘어 워터보틀 414ml</label></li>
					</ul>
				</li>
				<li>
					<ul>
						<li><a href="#"><img src="http://localhost:9000/starbucks/images/stain40.jpg"></a></li>
						<li><label>SS 고슴도치 데일리 워터보틀 473ml</label></li>
					</ul>
				</li>
			</ul>
		</div>
	</div>
	<div class="menu_img">
		<article class="drink">
			<div class="img">
				<div class="txt"><img src="http://localhost:9000/starbucks/images/menu_btxt1.png"></div>
				<a href="http://localhost:9000/starbucks/menu/menu_drink.jsp" class="btn_detail">자세히 보기</a>
			</div>
		</article>	
		<article class="food">
			<div class="img">
				<div class="txt"><img src="http://localhost:9000/starbucks/images/menu_btxt2.png"></div>
				<a href="http://localhost:9000/starbucks/menu/menu_food.jsp" class="btn_detail">자세히 보기</a>
			</div>
		</article>	
		<article class="product">
			<div class="img">
				<div class="txt"><img src="http://localhost:9000/starbucks/images/menu_btxt3.png"></div>
				<a href="http://localhost:9000/starbucks/menu/menu_product.jsp" class="btn_detail">자세히 보기</a>
			</div>
		</article>	
	</div>
	<!--  footer -->
	<jsp:include page ="../footer.jsp"></jsp:include>
</body>
</html>