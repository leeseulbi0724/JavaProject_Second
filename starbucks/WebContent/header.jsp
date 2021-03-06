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
	header>div, header>ul.login{
		width:1200px;
		margin:auto;
		height:100px;
	}
	header {
		background-color:rgb(246,245,239);
	}
	header ul.login {
		list-style-type:none;
		text-align:right;
		padding-right:50px;
		height:30px;
	}
	header li {
		display:inline-block;
		padding:0 5px;
	}
	header li>a{
		text-decoration:none;
		font-size:13px;
		color:rgb(85,85,85);
		margin-right:10px;
	}
	header li>a:hover { text-decoration:underline; }
	header ul.login div.icon {
		background-color:white;
		border:1px solid gray;
		border-radius:3px;
		display:inline-block;
		padding:3px;
		margin-top:10px;

	}
	header ul.login li>div {
		background-color:lightgray;
		width:1px; height:10px;
		display:inline-block;
	}
	header>div.logo>a>img {
		display:inline-block;
		width:80px; height:80px;
	}
	header>div.logo nav {
		margin-top:15px;
		float:right;
	}
	header>div.logo nav ul {
		display:inline-block;	
		list-style-type:none;
	}	
	header>div.logo nav a {
		font-size:16px;
		color:rgb(51,51,51);
		text-decoration:none;
	}
	#header {
		position:fixed;
		top:0; left:0; right:0;
		width:100%;
		z-index:999;
	}
	body {
		padding-top:120px;
	}
	
	#coffee, #menu, #rewards, #new, #store { display:inline-block; position:relative; padding:20px; margin-bottom:0px; top:16px;}
	#dropdown { 
		display:none;
		position:absolute;
		background-color:rgb(44,42,41);
		color:white;
		padding:5px;
		height:300px; width:10000px;
		margin-top:20px; left:-5000px;
		text-align:center;
	}
	#coffee:hover #dropdown, #menu:hover #dropdown, #store:hover #dropdown, #new:hover #dropdown { display:block; color:white; }
	#coffee:hover, #menu:hover, #store:hover, #new:hover { background-color:rgb(44,42,41); }
	#coffee:hover .M, #menu:hover .M, #store:hover .M, #new:hover .M { text-decoration:underline; color:green; }
	#coffee:hover a.m, #menu:hover a.m, #store:hover a.m, #new:hover a.m { text-decoration:none; color:gray; font-size:13px; }
	#coffee:hover a:hover, #menu:hover a:hover, #store:hover a:hover, #new:hover a:hover { text-decoration:underline; }
	.s_coffee, .s_ecoffee, .s_drink, .s_food, .s_gift, .s_search, .s_event, .s_notice { text-align:left;  }
	.s_coffee li:first-child, .s_ecoffee li:first-child, .s_drink li:first-child, .s_food li:first-child, 
	.s_gift li:first-child, .s_search li:first-child, .s_event li:first-child, .s_notice li:first-child { margin:10px 0 10px 0; }
	
	.s_coffee { position:relative; bottom:110px; }	
	.s_ecoffee { position:relative; left:150px; }
	.s_drink { position:relative; right:170px; }
	.s_food { position:relative; bottom:45px; right:20px; }
	.s_gift { position:relative; left:130px; }
	.s_search { position:relative; right:140px; }
	.s_event { position:relative; right:500px; }
	.s_notice { position:relative; bottom:33px; right:400px; }
</style>
<script src="js/jquery-3.6.0.min.js"></script>
</head>
<body>
	<!--  header -->
	<header id="header">
			<ul class="login">	
				<% if(session.getAttribute("signedUser") == null) { %>
				<li><a href ="http://localhost:9000/starbucks/login/login.jsp">Sign In</a><div></div></li>
				<% } else { %>
				<li><a href="http://localhost:9000/starbucks/login/logout_process.jsp" id="logout">Sign Out</a><div></div></li>			
				<% } %>
				<% if(session.getAttribute("signedUser") == null) { %>
				<li><a href ="http://localhost:9000/starbucks/no_login.jsp">My Starbucks</a><div></div></li>
				<% } else { %>
				<li><a href="http://localhost:9000/starbucks/mystarbucks/mystarbucks_main.jsp">My Starbucks</a><div></div></li>
				<% } %>
				<li><a href ="http://localhost:9000/starbucks/service/service_main.jsp">Customer Service & Ideas</a><div></div></li>
				<li><a href ="http://localhost:9000/starbucks/map/map.jsp">Find a Store</a><div></div></li>
				<li><a href="http://localhost:9000/starbucks/admin/admin_login.jsp">Admin</a></li>
				<div class="icon">
				<a href="#"><img src="http://localhost:9000/starbucks/images/icon_magnifier_black.png"></a>
				</div>
			</ul>
		
		<div class="logo">
			<a href="http://localhost:9000/starbucks/index.jsp"><img src="http://localhost:9000/starbucks/images/starbucks_logo.png"></a>
				<nav>
					<ul>
						<li><div id="coffee"><a href ="http://localhost:9000/starbucks/coffee/coffee_main.jsp"  class="M">COFFEE</a>
						 <div id="dropdown">
    						<ul class="s_coffee">
	    						<li><a href="http://localhost:9000/starbucks/coffee/coffee_list.jsp?beanid=<%="bean1" %>" class="m" style="color:white"><strong>??????</strong></a></li><br>
	   							<li><a href="http://localhost:9000/starbucks/coffee/coffee_list.jsp?beanid=<%="bean1" %>" class="m">???????????? ??????</a></li><br>
	    						<li><a href="http://localhost:9000/starbucks/coffee/coffee_list.jsp?beanid=<%="bean2" %>" class="m">???????????? ??????</a></li><br>
	   							<li><a href="http://localhost:9000/starbucks/coffee/coffee_list.jsp?beanid=<%="bean3" %>" class="m">???????????? ????????????</a></li>
   							</ul>
   							<ul class="s_ecoffee">
	    						<li><a href="http://localhost:9000/starbucks/coffee/espresso_main.jsp" class="m" style="color:white"><strong>??????????????? ??????</strong></a></li><br>
	   							<li><a href="http://localhost:9000/starbucks/coffee/espresso_list.jsp?etype_id=dopio" class="m">?????????</a></li><br>
	    						<li><a href="http://localhost:9000/starbucks/coffee/espresso_list.jsp?etype_id=esp_macchiato" class="m">??????????????? ????????????</a></li><br>
	   							<li><a href="http://localhost:9000/starbucks/coffee/espresso_list.jsp?etype_id=americano" class="m">???????????????</a></li><br>
	   							<li><a href="http://localhost:9000/starbucks/coffee/espresso_list.jsp?etype_id=macchiato" class="m">????????????</a></li><br>
	   							<li><a href="http://localhost:9000/starbucks/coffee/espresso_list.jsp?etype_id=cappuccino" class="m">????????????</a></li><br>
	   							<li><a href="http://localhost:9000/starbucks/coffee/espresso_list.jsp?etype_id=latte" class="m">??????</a></li><br>
	   							<li><a href="http://localhost:9000/starbucks/coffee/espresso_list.jsp?etype_id=mocha" class="m">??????</a></li><br>
	   							<li><a href="http://localhost:9000/starbucks/coffee/espresso_list.jsp?etype_id=flat_white" class="m">??????????????? ?????????</a></li>
   							</ul>
 						</div></div></li>
						<li><div id="menu"><a href ="http://localhost:9000/starbucks/menu/menu_main.jsp" class="M">MENU</a>
						<div id="dropdown">
    						<ul class="s_drink">
	    						<li><a href="http://localhost:9000/starbucks/menu/menu_drink.jsp" class="m" style="color:white"><strong>??????</strong></a></li><br>
	   							<li><a href="http://localhost:9000/starbucks/menu/menu_drink.jsp?chk=coldbrew" class="m">?????? ??????</a></li><br>
	    						<li><a href="http://localhost:9000/starbucks/menu/menu_drink.jsp?chk=brood" class="m">????????? ??????</a></li><br>
	   							<li><a href="http://localhost:9000/starbucks/menu/menu_drink.jsp?chk=esp" class="m">???????????????</a></li><br>
	   							<li><a href="http://localhost:9000/starbucks/menu/menu_drink.jsp?chk=fra" class="m">???????????????</a></li><br>
	   							<li><a href="http://localhost:9000/starbucks/menu/menu_drink.jsp?chk=blended" class="m">????????????</a></li><br>
	   							<li><a href="http://localhost:9000/starbucks/menu/menu_drink.jsp?chk=fizzo" class="m">???????????? ?????????</a></li><br>
	   							<li><a href="http://localhost:9000/starbucks/menu/menu_drink.jsp?chk=tea" class="m">???(?????????)</a></li><br>
	   							<li><a href="http://localhost:9000/starbucks/menu/menu_drink.jsp?chk=etc" class="m">?????? ?????? ??????</a></li><br>
	   							<li><a href="http://localhost:9000/starbucks/menu/menu_drink.jsp?chk=juice" class="m">???????????? ??????(?????????)</a></li>
   							</ul>
   							<ul class="s_food">
	    						<li><a href="http://localhost:9000/starbucks/menu/menu_food.jsp" class="m" style="color:white"><strong>??????</strong></a></li><br>
	   							<li><a href="http://localhost:9000/starbucks/menu/menu_food.jsp?chk=bread" class="m">?????????</a></li><br>
	    						<li><a href="http://localhost:9000/starbucks/menu/menu_food.jsp?chk=cake" class="m">?????????</a></li><br>
	   							<li><a href="http://localhost:9000/starbucks/menu/menu_food.jsp?chk=sand" class="m">???????????? & ?????????</a></li><br>
	   							<li><a href="http://localhost:9000/starbucks/menu/menu_food.jsp?chk=hot" class="m">????????? ??????</a></li><br>
	   							<li><a href="http://localhost:9000/starbucks/menu/menu_food.jsp?chk=fru" class="m">?????? & ?????????</a></li><br>
	   							<li><a href="http://localhost:9000/starbucks/menu/menu_food.jsp?chk=snack" class="m">?????? & ?????? ?????????</a></li><br>
	   							<li><a href="http://localhost:9000/starbucks/menu/menu_food.jsp?chk=ice" class="m">???????????????</a></li>
   							</ul>
   							<ul class="s_gift">
	    						<li><a href="http://localhost:9000/starbucks/menu/menu_product.jsp" class="m" style="color:white"><strong>??????</strong></a></li><br>
	   							<li><a href="http://localhost:9000/starbucks/menu/menu_product.jsp?chk=mug" class="m">??????</a></li><br>
	    						<li><a href="http://localhost:9000/starbucks/menu/menu_product.jsp?chk=glass" class="m">?????????</a></li><br>
	   							<li><a href="http://localhost:9000/starbucks/menu/menu_product.jsp?chk=pla" class="m">???????????? ?????????</a></li><br>
	   							<li><a href="http://localhost:9000/starbucks/menu/menu_product.jsp?chk=stain" class="m">??????????????? ?????????</a></li><br>
	   							<li><a href="http://localhost:9000/starbucks/menu/menu_product.jsp?chk=thermos" class="m">?????????</a></li><br>
	   							<li><a href="http://localhost:9000/starbucks/menu/menu_product.jsp?chk=acc" class="m">????????????</a></li><br>
	   							<li><a href="http://localhost:9000/starbucks/menu/menu_product.jsp?chk=cof" class="m">?????? ??????</a></li><br>
	   							<li><a href="http://localhost:9000/starbucks/menu/menu_product.jsp?chk=pack" class="m">????????? ???(?????????)</a></li><br>
	   							<li><a href="http://localhost:9000/starbucks/menu/menu_product.jsp?chk=plan" class="m">???????????? ?????????</a></li>
   							</ul>
 						</div></div></li>
						<li><div id="store"><a href ="http://localhost:9000/starbucks/map/map_main.jsp" class="M">STORE</a>
						<div id="dropdown">
    						<ul class="s_search">
	    						<li><a href="http://localhost:9000/starbucks/map/map.jsp" class="m" style="color:white"><strong>?????? ??????</strong></a></li><br>
	   							<li><a href="http://localhost:9000/starbucks/map/map.jsp" class="m">?????? ??????</a></li>
   							</ul>
   						</div></div></li>
						<li><div id="rewards"><a href ="#" style="cursor:default">STARBUCKS REWARDS</a></div></li>
						<li><div id="new"><a href ="http://localhost:9000/starbucks/whatsnew/whatsnew.jsp" class="M">WHAT'S NEW</a>
						<div id="dropdown">
    						<ul class="s_event">
	    						<li><a href="http://localhost:9000/starbucks/whatsnew/event.jsp" class="m" style="color:white"><strong>?????????</strong></a></li><br>
	   							<li><a href="http://localhost:9000/starbucks/whatsnew/event.jsp" class="m">??????</a></li>
   							</ul>
   							<ul class="s_notice">
   								<li><a href="http://localhost:9000/starbucks/whatsnew/notice.jsp" class="m" style="color:white"><strong>????????????</strong></a></li><br>
   							</ul>
						</div></div></li>
					</ul>
				</nav>
		</div>		
	</header>
</body>
</html>


















