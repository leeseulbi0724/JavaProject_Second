<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
	body { overflow-x:hidden; overflow-y:auto; }
	section { text-align:center; }
	div.title>img {	width:100%; background-size : cover; }
	div.icon_home {	position:relative; bottom:50px; left:510px; color:white; font-size:12px;	}
	div.icon_home a { text-decoration:none; color:white; }
	div.icon_home a:hover { text-decoration:underline; }
	
	div.button { position:relative; left:480px; top:60px; display:inline-block; text-align:left; }
	div.button>div { border-top:2px solid black; width:220px;  }
	div.button a { text-decoration:none; color:#444; font-weight:bold; font-size:14px;  }
	div.button a:hover { text-decoration:underline; color:green; }
	div.button p { padding:10px; margin:0; }
	div.button>div.line { border-top:1px solid lightgray; width:220px; }
	
	div.text { 
		display:inline-block; text-align:left; 
		background-image:url("http://localhost:9000/starbucks/images/voc_top_bg.png");
		width:830px; height:180px; margin-right:250px; position:relative; bottom:30px;		
		padding:10px 0 0 0;
	}
	div.text p, div.text li { padding-left:30px; }
	div.text p:first-child { font-weight:bold; font-size:15px; }
	div.text p:nth-child(2) { font-size:13px; }
	div.text li { font-size:12px; margin-bottom:20px; color:gray; list-style-type:square; }
	div.text a, button.a { 
		background-color:rgb(226,195,131); text-decoration:none; color:black; border:1px solid gray;
		margin:30px; font-size:12px; border-radius:4px; padding:5px 10px 5px 10px; font-weight:bold;
		cursor:pointer;
	}
	div.text a:hover, button.a:hover { text-decoration:underline; }
	
	section.input>p { color:gray; font-size:12px; margin-left:350px; }	
	section.input table { 
		border-top:1px solid black; text-align:left; display:inline-block; 
		width:830px; margin-right:250px; margin-bottom:20px;
	}
	section.input th { 
		background-color:rgb(244,244,242); padding:10px 40px 10px 15px; border-bottom:1px solid lightgray; 
		font-size:14px; 
	}
	section.input td { border-bottom:1px solid lightgray; padding-left:15px; font-size:14px; }
	input { border:1px solid lightgray; border-radius:3px; height:20px; }
	#radio { height:10px; }
	textarea { margin:10px 0 10px 0; width:500px; height:200px; border:1px solid lightgray; }
	li.file_text { font-size:13px; color:#333; margin-bottom:10px; list-style-type:square; }
	button.button { background-color:rgb(119,119,119); color:white; border:1px solid rgb(119,119,119); border-radius:4px; }
	
	tr:last-child input { width:400px; margin:10px 0 10px 0 }
	tr:nth-child(5) input { width:500px; }
	
	div.bottom_box { 
		display:inline-block; font-size:13px; border:1px solid lightgray; width:830px; position:relative; right:123px; 
		text-align:left; color:gray; list-style-type:square; margin-bottom:20px; 
	} 
	div.bottom_box li { margin:5px 10px 5px 10px; }
	button.a { margin-left:300px; margin-bottom:50px; }
	#분야, #email3, #hp { width:100px; height:25px; font-size:12px; font-weight:bold; color:#555; }
	#email3 { width:160px; }
	#hp { width:50px; }
</style>
<script></script>
</head>
<body>
	<!--  header -->
	<jsp:include page ="../header.jsp"></jsp:include>
	
	<!--  content -->
	<section>
		<div class="title"><img src="http://localhost:9000/starbucks/images/sound_bg.PNG"></div>
		<div class="icon_home">
			<a href="http://localhost:9000/starbucks/index.jsp"><img src="http://localhost:9000/starbucks/images/icon_home.png" ></a>
			<img src="http://localhost:9000/starbucks/images/icon_arrow_w.png" >
			<a href="http://localhost:9000/starbucks/service/service_sound.jsp">고객의 소리</a>
		</div>
	</section>
	<section>
	<div class="button">
		<div></div>
		<p><a href="http://localhost:9000/starbucks/service/service_question.jsp">자주하는 질문</a></p>
		<div class="line"></div>
		<p><a href="http://localhost:9000/starbucks/service/service_sound.jsp">고객의 소리</a></p>
		<div class="line"></div>
	</div>	
	</section>
	<section>
		<div class="text">
			<p>귀한 말씀 들려 주십시오. 작은 소리도 듣겠습니다.</p>
			<p>스타벅스에서는 고객 여러분의 즐겁고 행복한 시간을 위해 정성을 다하고 있습니다.<br>
			만족스러운 서비스였는지, 불만스러운 점은 없으셨는지 귀한 의견을 들려주시기 바랍니다. 보다 나은 서비스로 보답하겠습니다.</p>
			<li>고객의 소리 운영시간 : 09:00~18:00 (연중무휴)</li>
			<a href="#">나의 문의 내역 보기</a>
		</div>
	</section>
	<section class="input">
		<p><img src="http://localhost:9000/starbucks/images/star_red.gif"> 표시 항목은 필수 입력 사항입니다.</p>
		<form name="service_form" action="#" method="get">
			<table>
				<tr>
					<th>분야 <img src="http://localhost:9000/starbucks/images/star_red.gif"></th>
					<td><select id="분야" name="category">
						<option value="문의유형">문의유형</option>
						<option value="문의">문의</option>
						<option value="칭찬">칭찬</option>
						<option value="제안">제안</option>
						<option value="불만">불만</option>
					</select></td>
				</tr>				
				<tr>
					<th>답변 받으실 메일 <img src="http://localhost:9000/starbucks/images/star_red.gif"></th>
					<td><input type="text" name="email1" id="email1" >@
					<input type="text" name="email2" id="email2">
					<select id="email3" onchange="emailCheck()">
						<option value="직접입력">직접입력</option>
						<option value="naver.com">네이버</option>
						<option value="gamil.com">구글</option>
						<option value="daum.net">다음</option>
					</select></td>
				</tr>
				<tr>
					<th>연락처 <img src="http://localhost:9000/starbucks/images/star_red.gif"></th>
					<td><select name="hp1" id="hp">
						<option value="010">010</option>
						<option value="011">011</option>
						<option value="016">016</option>
						<option value="017">017</option>
						<option value="018">018</option>
						<option value="019">019</option>
					</select>
						-<input type="text" name="hp2" id="hp2">
						-<input type="text" name="hp3" id="hp3"></td>
				</tr>
				<tr>
					<th>장소 <img src="http://localhost:9000/starbucks/images/star_red.gif"></th>
					<td><input id="radio" type="radio" name="place" value="매장 방문">매장 방문 
					<input id="radio" type="radio" name="place" value="매장 방문 외">매장 방문 외</td>
				</tr>
				<tr>
					<th>제목 <img src="http://localhost:9000/starbucks/images/star_red.gif"></th>
					<td><input type="text" name="title"></td>
				</tr>
				<tr>
					<th>내용 <img src="http://localhost:9000/starbucks/images/star_red.gif"></th>
					<td><textarea name="content"
						placeholder="관계 법령에 저촉되거나 사회통념 등에 어긋나는 내용 (예: 개인정보 보안, 불충분한 증거/귀책 사유에 대한 개인 음해성/ 음란성 비방, 의도적인 업무 방해 등) 또는 광고성 게시물은 별도의 사전 통보 없이 답변이 되지 않을 수 있으며, 등록된 의견은 처리가 시작되면 수정이 불가하오니 이 점 양지하여 주시기 바랍니다." ></textarea></td>
				</tr>
				<tr>
					<th>파일첨부</th>
					<td><input type="text">
					<input type="file" name="bfile" id="file" style="display:none">
					<button type="button" class="button" onclick="onclick=document.all.file.click()" name="n_file">찾아보기</button>
					<li class="file_text">파일첨부는 아래의 파일만 등록이 가능하며 최대 2개(1개당 최대5MB), 총 10MB까지 등록이 가능합니다.<br>
					(등록 가능 확장자 : jpg, jpeg, png, gif)</li></td>
				</tr>
			</table>		
			<section>
				<div class="bottom_box">
					<li>본 고객의 소리는 e-mail을 통한 상담으로만 진행됩니다. 전화 상담 요청은 불가하오니 양해 부탁 드립니다.</li>
					<li>고객이 동의한 개인정보처리방침에 따라 고객의 소리 민원 처리를 위해 작성자의 개인정보를 활용할 수 있습니다.</li>
					<li>답변은 직접 기재하여 주신 메일주소로 발송되며, 기재 오류 및 계정문제가 발생한 경우에는 답변이 불가할 수 있으므로 메일 주소를 꼭 확인해 주시기 바랍니다.</li>
					<li>관계 법령에 저촉되거나 사회통념 등에 어긋나는 내용(예: 개인정보보안, 불충분한 증거/귀책 사유에 대한 개인 음해성/음란성 비방, 의도적인 업무 방해 등) 또는 광고성 게시물은 별도의 사전 통보 없이 답변이 되지 않을 수 있으며, 등록된 의견은 처리가 시작되면 수정이 불가하오니 이 점 양지하여 주시기 바랍니다.</li>
					<li>공정거래위원회에서 고시한 소비자분쟁해결기준에 의거 소비자 피해에 대한 교환/환불 처리 해드립니다.</li>
				</div>
			</section>
			<button type="button" class="a">고객의 소리 등록하기</button>
		</form>
	</section>
	
	
	<!--  footer -->
	<jsp:include page ="../footer.jsp"></jsp:include>
</body>
</html>