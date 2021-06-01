<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Starbucks Coffee Korea</title>
<style>
	#map { width:100%; height:650px; position:relative;  }
	.search { 
		border:1px solid lightgray; width:300px; height:500px; position:absolute;
		margin-left:20px; margin-top:-600px; z-index:1; background-color:white;
	 }
	 div.title { 
	 	background-color:rgb(0,102,51); color:white; font-size:25px; display:inline-block; width:50%; 
	 	height:70px; line-height:70px; text-align:center; font-weight:bold;
	 }
	 div.empty { background-color:rgb(244,244,242); width:100%; height:35px; }
	div.m_search div { 
		display:inline-block; width:50%; border-top:1px solid lightgray; margin:0; padding:0; float:left; 
		padding:10px 0; 
	}
	div.m_search { text-align:center; background-color:rgb(0,102,51); color:white; font-size:13px; font-weight:bold; }
	div.m_search div:nth-child(2) { background-color:white; color:black; }
	div.m_search input { width:90%; height:30px; border-radius:4px; border:1px solid lightgray; margin:10px 0; }
	
	div.content { width:100%; height:305px; }
</style>
<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=3474f52995f1235c3b9181cffc06fbe0"></script>
<script>
window.onload = function() {
	var container = document.getElementById('map');
	var options = {
		center: new kakao.maps.LatLng(33.450701, 126.570667),
		level: 3
	};

	var map = new kakao.maps.Map(container, options);
		
}
</script>
</head>
<body>
	<!--  header -->
	<jsp:include page ="../header.jsp"></jsp:include>
	
	<!-- map -->
	<div>
		<div id="map" ></div>
		<div class="search">
			<div class="title">매장찾기</div>
			<div class="empty"></div>
			<div class="m_search">
				<div>퀵 검색</div>
				<div>지역 검색</div>
				<input type="text" placeholder="매장명 또는 주소">
			</div>
			<div style="overflow:scroll" class="content"></div>
		</div>
	</div>
	
	<!--  footer -->
	<jsp:include page ="../footer.jsp"></jsp:include>
</body>
</html>