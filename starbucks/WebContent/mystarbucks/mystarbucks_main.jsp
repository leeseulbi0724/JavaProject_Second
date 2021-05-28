<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="js/jquery-3.6.0.min.js"></script>
<script>
    // html dom 이 다 로딩된 후 실행된다.
    $(document).ready(function(){
        // memu 클래스 바로 하위에 있는 a 태그를 클릭했을때
        $(".user_if>a").click(function(){
        	
            // 현재 클릭한 태그가 a 이기 때문에
            // a 옆의 태그중 ul 태그에 hide 클래스 태그를 넣던지 빼던지 한다.
            $(this).next("ul").toggleClass("hide");
        });
    });
</script>
<link rel="stylesheet" href="http://localhost:9000/starbucks/css/starbucks.css">
</head>
<body>
	<jsp:include page="../header.jsp"></jsp:include>
	
	<div class= "sub_title"> 
	<div class= "sub_inner_title">
	<h1>My StarBucks</h1>
	
	<ul class="smap">
	<li><a href="http://localhost:9000/starbucks/index.jsp"><img class="home_icon" src="http://localhost:9000/starbucks/images/icon_home.png"></a></li>
	<li><img class=arrow_icon src="http://localhost:9000/starbucks/images/icon_arrow.png"></li>
	<li><a class= "this" href="http://localhost:9000/starbucks/mystarbucks/mystarbucks.jsp" style="text-decoration-line: none;">My StarBucks</a></li>
	</ul>
	</div>
	 </div>	
	 
	 <div class= "ms_cont_wrap">
		 <nav class="ms_nav">
			<ul>
				<li><a href="">My 고객의 소리</a></li>
				<li class="user_if">
				<a>개인정보관리<span class="sbox_arrow_down"></span></a>
				<ul class="hide">
				<li><a class="font" href="">. 개인정보확인 및 수정</a></li>
				<li><a class="font"href="">. 회원 탈퇴</a></li>
				<li><a class="font"href="http://localhost:9000/starbucks/mystarbucks/mystarbucks_pass.jsp">. 비밀번호 변경</a></li>
				</ul>
				</li>
			</ul>
		</nav>
	 	<div class="ms_cont">
			<div class="regular_user_index">
			
				<section class="regular_info">
					<article class ="center">
					<p>
						<strong class="user_name">***님 안녕하세요.</strong><br>
						<span>(지금 스타벅스 카드를 등록하시면 StarBucks Rewards 혜택을 받으실 수 있습니다.)</span>
					</p>
					<a href="">개인정보 수정</a>
					<a href="">비밀번호 변경</a>
					</article>
					
					
					<article class="right">
						<div class="rt">
							<a href="">
								<p class="icon_new_store"></p>
								<p class="icon_new_txt">신규 매장<br><strong>오픈 이벤트</strong></p>
								<span class="next_arrow"></span>
							</a>
						</div>
						<div class="rb"><a href="">
								<p class="icon_new_store2"></p>
								<p class="icon_new_txt">스타벅스<br><strong>전체 이벤트</strong></p>
								<span class="next_arrow"></span>					
						</a></div>					
					</article>
				</section>
							
				<section class="card_wrap">
					<div class="card_int">
						<div class="card_int_icon">
							<figure class="icon_1"></figure>						
						</div>
						<div class="card_int_cont">
							<div class="txt_1">
								<strong>아직 등록된 스타벅스 카드가 없으신가요?</strong><br>
								스타벅스 카드를 등록하시고 생일 무료음료 쿠폰과 다양한 스타벅스의<br>
								리워드를 경험하세요. 스타벅스만의 특별한 혜택을 경험하실 수 있습니다.
							</div>			
							<p class="card_btn1">
							<a href="">스타벅스 카드 보기</a>
							</p>
							<p class="card_btn2">
							<a href="">스타벅스 e-Gift Card 구매</a>
							</p>			
						</div>
					</div>
					
					
					
					<div class="card_inb">
						<div class="card_int_icon">
							<figure class="icon_2"></figure>						
						</div>
						<div class="card_int_cont">
							<div class="txt_2">
								<strong>스타벅스만의 특별한 혜택이 궁금하신가요?</strong><br>
								혜택에 편리함까지 더한 스타벅스 리워드로<br>
								한층 더 스타벅스를 특별하게 즐기세요.
							</div>			
							<p class="card_btn3">
							<a href="">스타벅스 혜택보기</a>
							</p>
										
						</div>
					</div>
					</div>
				</section>
				<section class="user_section">
					<article class="left_store">
						<header><strong>새로운 스타벅스 매장을 소개합니다.</strong><br>
						전국의 새로운 스타벅스의 얼굴들을 만나보세요~!
						</header>
						<div class="store_slider">
							<div class="bx-wrapper">
								<div class= "bx-viewport">
								
									<div class="slides">
	       								 <img src= "http://localhost:9000/starbucks/images/first.jpg">
	       								 <div class="store_txt">
	       								 	<strong>정동</strong><br>서울 종로구<br><span class="date">2021-05-26</span>
	       								 </div>
									</div>
								   <div class="slides">
	       								 <img src= "http://localhost:9000/starbucks/images/first.jpg">
	       								 <div class="store_txt">
	       								 	<strong>정동</strong><br>서울 종로구<br><span class="date">2021-05-26</span>
	       								 </div>
									</div>
									
									
								</div>
								<!--  
								<div class="bx-controls">
									<div class="box_direct">
										<a class="bx-prev" href="">Prev</a>
										<a class="bx-next" href="">Next</a>
									</div>
								</div>
								-->
								<script id="storeList" type="text/x-jquery-tmpl">
                                        	<li>
                                                <a href="/store/store_map.do?in_biz_cd=${s_biz_code}">
                                                    <div class="ms_sstore_slider_img">
                                                        <img alt="" src="${defaultimage}" onerror="this.src='/common/img/util/edwDefault.png'">
                                                    </div>
                                                    <div class="ms_sstore_slider_txt">
                                                        <strong>${s_name}</strong><br>
                                                        ${sido_name} ${gugun_name}<br>
                                                        <span class="date">${open_dt.substr(0, 4)}-${open_dt.substr(4, 2)}-${open_dt.substr(6, 2)}</span>
                                                    </div>
                                                </a>
                                            </li>
                                  </script>
							</div>
						</div>
					</article>
						<article class= "sstore">
							<div class= "regi_card">
								<a href="">
								<p class="icon_card"></p>
								<p class="icon_new_txt"><strong>카드 등록</strong><br>카드를 등록하시고 다양한 리워드를 만나보세요.</p>
							</a>
							</div>
							<div class= "regi_card2">
								<a href="">
								<p class="icon_card2"></p>
								<p class="icon_new_txt2"><strong>카드 충전</strong><br>매장과 온라인에서 간편하게 충전하세요.</p>
							</a>
							</div>
							
							
							<div class="mem_icon_wrap">
								<a class="icon_mem1" href="">
									<span class="regu_icon"></span>
									<span class="regu_txt">전자영수증</span>
								</a>
								
								<a class="icon_mem2" href="">
									<span class="regu_icon2"></span>
									<span class="regu_txt">캘린더</span>
								</a>
								
								<a class="icon_mem3" href="">
									<span class="regu_icon3"></span>
									<span class="regu_txt">e-쿠폰</span>
								</a>
							</div>
						</article>
				</section>
				
			</div>	 
			
			
			
			
			
			
				
	 	</div>
	 
	 
	 
	
	
	
	
	<jsp:include page="../footer.jsp"></jsp:include>
</body>
</html>