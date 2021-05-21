<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
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
	header ul.login div.icon {
		background-color:white;
		border:1px solid gray;
		border-radius:3px;
		display:inline-block;
		padding:3px;

	}
	header ul.login li>div {
		background-color:lightgray;
		width:1px; height:10px;
		display:inline-block;
	}
	header>div.logo>a>img {
		display:inline-block;
		width:100px; height:80px;
	}
	header>div.logo nav {
		margin-top:15px;
		float:right;
	}
	header>div.logo nav ul {
		display:inline-block;	
		list-style-type:none;
	}
	header>div.logo nav li {
		text-decoration:none;
		padding:0 30px;
	}
	header>div.logo nav li>a {
		font-size:16px;
		color:rgb(51,51,51);
		}
</style>
</head>
<body>
	<!--  header -->
	<header>
			<ul class="login">
				<li><a href ="http://localhost:9000/starbucks/">Sign In</a><div></div></li>
				<li><a href ="http://localhost:9000/starbucks/">My Starbucks</a><div></div></li>
				<li><a href ="http://localhost:9000/starbucks/">Customer Service & Ideas</a><div></div></li>
				<li><a href ="http://localhost:9000/starbucks/">Find a Store</a></li>
				<div class="icon">
				<a href="#">
				<img src="http://localhost:9000/starbucks/images/icon_magnifier_black.png"></a>
				</div>
			</ul>
		
		<div class="logo">
			<a href="http://localhost:9000/starbucks/index.jsp"><img src="http://localhost:9000/starbucks/images/starbucks_logo.png"></a>
				<nav>
					<ul>
						<li><a href ="#">COFFEE</a></li>
						<li><a href ="#">MENU</a></li>
						<li><a href ="#">STORE</a></li>
						<li><a href ="#">STARBUCKS REWARDS</a></li>
						<li><a href ="#">WHAT'S NEW</a></li>
					</ul>
				</nav>
		</div>
		
	</header>

</body>
</html>


















