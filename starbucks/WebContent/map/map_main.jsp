<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Starbucks Coffee Korea</title>
<style>
	.coffee_txt{
		padding-top: 30px;
		position: relative;
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
	
	/***** img 01 ******/
	.img_01 {
		text-align:center;
		width:100%; height:420px;
		background-image:url("http://localhost:9000/starbucks/images/store_bn1_171109.jpg");
		background-repeat: no-repeat;
		background-position:left;
		background-size: cover;
	}	
	.img_01 div { display:inline-block; text-align:left; margin:100px 0 0 700px; }
	
	.img_01 a { 
		color:white; text-decoration:none; border:2px solid white; border-radius:3px; padding:5px 20px 5px 20px;
		font-size:13px; display:inline-block; margin-top:20px;		
	}
	.img_01 a:hover {
		color:black;
		background-color:white;
		text-decoration:underline;
	}
	
	
	/***** img 02 ******/
	.img_02 {
		text-align:center;
		width:100%; height:420px;
		background-image:url("http://localhost:9000/starbucks/images/store_bn2_img01.jpg");
		background-repeat: no-repeat;
		background-position:left;
		background-size: cover;
	}	
	.img_02 div { 
		display:inline-block;
		text-align:left; margin:120px 570px 0 0;
	}
	.img_02 img, .img_03 img, .img_04 img, .img_05 img { margin-bottom:20px; }
	.img_02 a, .img_04 a, .img_05 a { border:2px solid; padding:5px 20px 5px 20px; font-size:13px; border-radius:3px; }
	
	
	/***** img 03 ******/
	.img_03 {
		text-align:center;
		width:100%; height:420px;
		background-image:url("http://localhost:9000/starbucks/images/store_bn3_img01.jpg");
		background-repeat: no-repeat;
		background-position:left;
		background-size: cover;
	}		
	.img_03 div { 
		display:inline-block;
		text-align:left; margin:120px 0 0 700px;
	 }
	 .img_03 a { 
	 	border:2px solid white; padding:5px 20px 5px 20px; font-size:13px; border-radius:2px; color:white;
	  }	
	
	
	/***** img 04 ******/
	.img_04 {
		text-align:center;
		width:100%; height:420px;
		background-image:url("http://localhost:9000/starbucks/images/store_bn4_img01.jpg");
		background-repeat: no-repeat;
		background-position:left;
		background-size: cover;
	}	
	.img_04 div { display:inline-block;  text-align:left; margin:120px 570px 0 0; }
	
	
	/***** img 05 ******/
		.img_05 {
		text-align:center;
		width:100%; height:420px;
		background-image:url("http://localhost:9000/starbucks/images/store_bn6_img01_01.jpg");
		background-repeat: no-repeat;
		background-position:left;
		background-size: cover;
	}	
	.img_05 div { display:inline-block;  text-align:left; margin:120px 500px 0 0; }
	
	
	.this { color:black; text-decoration:none; }
	.this:hover { text-decoration:underline; }
</style>
</head>
<body>
<!--  header -->
<jsp:include page ="../header.jsp"></jsp:include>

<!--  content -->
	<div class="sub_title">
		<div class="sub_inner_title">
			<img class="coffee_txt"src="http://localhost:9000/starbucks/images/store_tit.jpg">
			<ul class="smap">
				<li><a href="http://localhost:9000/starbucks/index.jsp"><img class="home_icon" src="http://localhost:9000/starbucks/images/icon_home.png"></a></li>
				<li><img class=arrow_icon src="http://localhost:9000/starbucks/images/icon_arrow.png"></li>
				<li><a class="this" href="http://localhost:9000/starbucks/map/map_main.jsp" >STORE</a></li>
			</ul>
		</div>
	</div>
	<div class="img_01">
		<div>
			<img src="http://localhost:9000/starbucks/images/store_bn1_txt01.png"><br>
			<a href="http://localhost:9000/starbucks/map/map.jsp">매장 찾기</a>
		</div>
	</div>
	<div class="img_02">
		<div>
			<img src="http://localhost:9000/starbucks/images/store_bn2_txt01.png"><br>
			<a>자세히 보기</a>
		</div>
	</div>
	<div class="img_03">
		<div>
			<img src="http://localhost:9000/starbucks/images/store_bn3_txt01.png"><br>
			<a>자세히 보기</a>
		</div>
	</div>
	<div class="img_04">
		<div>
			<img src="http://localhost:9000/starbucks/images/store_bn4_txt01.png"><br>
			<a>자세히 보기</a>
		</div>
	</div>
	<div class="img_05">
		<div>
			<img src="http://localhost:9000/starbucks/images/store_btxt6_01.png"><br>
			<a>자세히 보기</a>
		</div>
	</div>
	
<!--  footer -->
<jsp:include page ="../footer.jsp"></jsp:include>
</body>
</html>