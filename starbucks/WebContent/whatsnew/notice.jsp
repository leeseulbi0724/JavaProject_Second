<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
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
	margin-top: 30px;
	padding-top: 30px;
}
ul.smap li{
	float: left;
	margin: 0 2.5px;
	text-decoration: none;
	display: inline-block;
	margin-right: 2px;
	color: #ffffff;
}
.this{
	color: #777777;
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
.sub_title h1{
	font: bold 36px Avenir, Arial, georgia;
	color: #222222;
	padding-top: 30px;
	position: relative;
}
.container{
	width: 100%;
}
.notice_wrap{
	width: 1100px;
	padding-bottom: 80px;
	margin: 0 auto;
}
.search_notice{
	padding: 20px 30;
	height: 38px;
	background: #f4f4f2;
	border-radius: 3px;
	margin-bottom: 30px;
	position: relative;
}
.search_notice p {
	position: absolute;
	right: 30px;
	
}
.search_notice p label{
	width: 1px;
	height: 1px;
	margin: -1px;
	overflow: hidden;
	position: absolute;
}
.search_notice p input{
	width: 321px;
	height: 36px;
	line-height: 36px;
	border: 1px solid #ddd;
	border-radius: 3px;
	text-indent: 10px;
	color: #666;
}
.search_notice p a{
	display: inline-block;
	width: 54px;
	height: 38px;
	line-height: 38px;
	background: #777;
	border-radius: 3px;
	font-size: 14px;
	font-weight: bold;
	color: #fff;
	text-align: center;
}
.notice_tb{
	width: 1100px;
}
colgroup{
	display: table-column-group;
}
.notice_tb{
	border-collapse: collapse;
	border-spacing: 0;
}
.notice_tb th{
	font-size: 14px;
	font-weight: bold;
	color: #222222;
	text-align: center;
	padding: 17px 0;
	border-top: 1px solid #333333;
	border-bottom: 1px solid #333333;
}
.notice tr td.left{
	text-align: left;
	padding-left: 20px;
}
.notice tr td{
	font-size: 14px;
	color: 	#666666;
	text-align: center;
	padding: 17px 0;
	border-bottom: 1px solid #dddddd;
	line-height: 1.8;
}
.page_btn{
	width: 100%;
	height: 27px;
	margin-top: 50px;
}
.paper{
	text-align: center;
}
.paper li{
	display: inline-block;
	margin:  0 10px;
	vertical-align: middle;
	list-style: none;
}
.paper li a{
	color: #555555;
	font-size: 14px;
}
.paper li a img{
	margin-top: 5px;
}
	
</style>
</head>
<body>
<jsp:include page="../header.jsp"></jsp:include>
	<!-- 서브 타이틀  -->
	<div class="sub_title">
		<div class="sub_inner_title">
			<img class="event_txt"src="http://localhost:9000/starbucks/images/notice_tit.jpg">
		<ul class="smap">
			<li><a href=""><img class="home_icon" src="http://localhost:9000/starbucks/images/icon_home.png"></a></li>
			<li><img class=arrow_icon src="http://localhost:9000/starbucks/images/icon_arrow.png"></li>
			<li><a class= "this" href="http://localhost:9000/starbucks/whatsnew/whatsnew.jsp" style="text-decoration-line: none;">WHAT'S NEW</a></li>
			<li><img class=arrow_icon src="http://localhost:9000/starbucks/images/icon_arrow.png"></li>
			<li><a class= "this" href="http://localhost:9000/starbucks/whatsnew/notice.jsp" style="text-decoration-line: none;">공지사항</a></li>
		</ul>
	</div>
</div>	

	<!-- 공지사항 검색-->
	<div class= "container">
		<div class= "notice_wrap">
			<div class="search_notice"> 
				<p><label>검색어</label><input type="text" placeholder="검색어를 입력해 주세요.">
				   <a href="">검색</a>
				</p>
			</div> <!-- search_notice -->
			<!-- 공지사항 Table -->
			<table class="notice_tb">
			<colgroup>
				<col width="5.45454%">
				<col width="74.5454%">
				<col width="10.90909%">
				<col width="*">
			</colgroup>
			<thead>
				<tr>
					<th scope= "col">NO</th>
					<th scope= "col">제목</th>
					<th scope= "col">날짜</th>
					<th scope= "col">조회수</th>
				</tr>
				
				<tbody class= "notice">
					<tr>
						<td>318</td>
						<td class="left"><a href= "">개인정보 처리방침 개정안내</a></td>
						<td>2021-05-27</td>
						<td>4806</td>
					</tr>
					<tr>
						<td>317</td>
						<td class="left"><a href= "">시스템 개선 및 점검 안내</a></td>
						<td>2021-05-21</td>
						<td>8695</td>
					</tr>
					<tr>
						<td>316</td>
						<td class="left"><a href= "">스타벅스 애플리케이션 Android 7.0 미만 버전 서비스 지원종료 안내</a></td>
						<td>2021-05-19</td>
						<td>9483</td>
					</tr>
					<tr>
						<td>315</td>
						<td class="left"><a href= "">시스템 개선 및 점검 안내</a></td>
						<td>2021-05-13</td>
						<td>4806</td>
					</tr>
					<tr>
						<td>314</td>
						<td class="left"><a href= "">시스템 개선 및 점검 안내</a></td>
						<td>2021-05-08</td>
						<td>5433</td>
					</tr>
					<tr>
						<td>313</td>
						<td class="left"><a href= "">Delivers 서비스 이용 약관 개정 안내</a></td>
						<td>2021-05-02</td>
						<td>6545</td>
					</tr>
					<tr>
						<td>312</td>
						<td class="left"><a href= "">Tmap 스타벅스 음성주문 서비스 제휴 종료 안내</a></td>
						<td>2021-04-29</td>
						<td>10234</td>
					</tr>
					<tr>
						<td>311</td>
						<td class="left"><a href= "">개인정보 처리방침 개정 안내</a></td>
						<td>2021-04-23</td>
						<td>6345</td>
					</tr>
					<tr>
						<td>310</td>
						<td class="left"><a href= "">시스템 개선 및 점검 안내</a></td>
						<td>2021-04-19</td>
						<td>8575</td>
					</tr>
					<tr>
						<td>309</td>
						<td class="left"><a href= "">쿠폰 발행 지연 안내</a></td>
						<td>2021-04-12</td>
						<td>4543</td>
					</tr>
					<tr>
						<td>308</td>
						<td class="left"><a href= "">시스템 개선 및 점검안내</a></td>
						<td>2021-04-09</td>
						<td>2155</td>
					</tr>
					<tr>
						<td>307</td>
						<td class="left"><a href= "">시스템 개선 및 점검 안내</a></td>
						<td>2021-04-01</td>
						<td>6489</td>
					</tr>
					<tr>
						<td>306</td>
						<td class="left"><a href= "">사이렌 오더 음료 기본 설정 변경 안내 (HOT -> ICED)</a></td>
						<td>201-03-31</td>
						<td>9509</td>
					</tr>
				</tbody>
			</thead>
			</table>
			<div class= "page_btn">
				<ul class= "paper">
					<li>
						<a href="http://localhost:9000/starbucks/whatsnew/notice.jsp">1</a>
					</li>
					<li>
						<a href="http://localhost:9000/starbucks/whatsnew/notice.jsp">2</a>
					</li>
					<li>
						<a href="http://localhost:9000/starbucks/whatsnew/notice.jsp">3</a>
					</li>
					<li>
						<a href="http://localhost:9000/starbucks/whatsnew/notice.jsp">4</a>
					</li>
					<li>
						<a href="http://localhost:9000/starbucks/whatsnew/notice.jsp">5</a>
					</li>
					<li>
						<a href="http://localhost:9000/starbucks/whatsnew/notice.jsp"><img src="http://localhost:9000/starbucks/images/next.jpg"></a>
					</li>
				</ul>
			</div>
		</div> <!-- notice_wrap -->
	</div>  <!-- container -->
	



<jsp:include page="../footer.jsp"></jsp:include>
</body>
</html>