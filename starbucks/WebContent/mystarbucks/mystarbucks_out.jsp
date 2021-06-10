<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="http://localhost:9000/starbucks/mystarbucks/mystarbucks.css">
<script src="../js/jquery-3.6.0.min.js"></script>
<script>
	function showphone(){
			$('#info_btn_inner').show();
	}
	function hidephone(){
		$('#info_btn_inner').hide();
	}
	function showmail(){
		$('#info_btn_inner_mail').show();
	}
	function hidemail(){
		$('#info_btn_inner_mail').hide();
	}	
	function shownick(){
		$('#info_btn_inner_nick').show();
	}
	function hidenick(){
		$('#info_btn_inner_nick').hide();
	}
	
	function imgtoggle(){
		$('agreement1').hide();
		$('#agreement2').show();
	}
	
	$(document).ready(function(){
        var bCheck=false;
        var $chk=$(".ez-checkbox");
        

        $(".ez-checkbox").click(function(){
            bCheck = !bCheck;

            if(bCheck == true){
                $chk.addClass("ez-checked");
            }
            else{
                $chk.removeClass("ez-checked");
            }
        })
    })
    $(document).ready(function(){
        var bCheck=false;
        var $chk=$(".ez-checkbox2");
        

        $(".ez-checkbox2").click(function(){
            bCheck = !bCheck;

            if(bCheck == true){
                $chk.addClass("ez-checked");
            }
            else{
                $chk.removeClass("ez-checked");
            }
        })
    })
      // 닉네임 체크, 체크해제에 따른 이벤트 처리
        $("#mem_choice_yes").on("change", function() {
            //placeholder
            var $chk = $('[name="mem_choice"]:checked');
            var nickChangeYn = $("#user_nick_nm").attr('data-user_nick_change_yn');
            var penaltyYn = $("#user_nick_nm").attr('data-penalty_yn');
            var penaltyDate = $("#user_nick_nm").attr('data-penalty_date');
            var nickLimitedDtYn = $("#user_nick_nm").attr('data-nick_Limited_DtYn');
            var nickUseYn = $("#user_nick_nm").attr('data-nick_use_yn');

            if ($chk.length == 0) {
                if (nickChangeYn == 'N' && penaltyYn == 'N') {
                    alert("저장된 닉네임과 이용동의 정보는 즉시 삭제 및 철회되므로, 다음달 1일부터 닉네임 등록이 가능합니다.");
                }

                if (nickLimitedDtYn == 'Y') {
                    alert(nickCancelMessage);
                }

                $("#user_nick_nm").removeClass("input_warn");
                $("#user_nick_nm").attr("placeholder", "닉네임 입력을 위해 약관에 동의해 주세요.").blur();
                $("#user_nick_nm").attr("readonly", true);
                $("#user_nick_nm").attr("onfocus", "this.blur()");
                $("#user_nick_nm").addClass("disabled");
                $("#user_nick_nm").val("");
                $(".user_nick_nm_txt").removeClass("input_warn_text").text("").hide();
            } else {
                if (penaltyYn == 'Y') {
                    var penaltyYear = penaltyDate.substring(0, 4);
                    var penaltyMonth = penaltyDate.substring(4, 6);
                    var penaltyDay = penaltyDate.substring(6, 8);
                    var penaltyDateFormat = penaltyYear + "년 " + parseInt(penaltyMonth) + "월 " + parseInt(penaltyDay) + "일";
                    alert("닉네임 사용 제한 정책에 의해 " + penaltyDateFormat + "까지 닉네임 등록이 제한됩니다.");
                    $("input:checkbox[name='mem_choice']").prop("checked", false);
                    return;
                }
                //닉네임 설정 제한 기능 기능 추가
                if (nickLimitedDtYn == 'Y' && (nickUseYn == 'N' || nickUseYn == '')) {
                    alert(nickLimitedMessage);
                    $("input:checkbox[name='mem_choice']").prop("checked", false);
                    return;
                }
                $("#user_nick_nm").attr("placeholder", "한글 6자리 이내로 입력하세요.").blur();
                $("#user_nick_nm").attr("readonly", false);
                $("#user_nick_nm").attr("onfocus", "");
                $("#user_nick_nm").removeClass("disabled");
                $("#user_nick_nm").focus().stbScrollTop();
            }
        });
</script>
</head>
<body>
<jsp:include page="../header.jsp"></jsp:include>
	<div id="container">
			<div class="find_mem_wrap"><!-- jsp 수정 : 클래스명 추가 -->
				<!-- 20160804 수정 -->
				<div class="find_mem_inner">
					<form id="frmMemberInfo" method="post">
						<input type="hidden" name="SOM_ETC_1" value="">
						<fieldset>
							<strong class="find_mem_ttl">개인정보 확인 및 수정</strong>
							
							<!-- <strong class="modify_section_ttl">아이디 정보</strong> -->
							<section class="renew_joinform_v2">
								<div class="renew_input_box bd_none">
								<strong>아이디</strong>
								<p class="renew_user_id user_id">LIMHS01**</p>
							</div>
							</section>
							
							
							<!-- <strong class="modify_section_ttl">개인정보</strong> -->
							<section class="renew_joinform_v2">
								<div class="renew_input_box gender_chk">
									<strong>이름(필수)</strong>
									<p class="nofix_name user_nm">임현*</p>
									<input type="hidden" name="user_nm" id="user_nm" value="">
									<input type="hidden" name="native_yn" id="native_yn" value="">
									<input type="hidden" name="ipin_jumin" id="ipin_jumin" value="">
									<input type="hidden" name="ipin_change_dt" id="ipin_change_dt" value="">
									<input type="hidden" name="join_flag" id="join_flag" value="">
									<input type="hidden" name="IS_DORMANCY" id="IS_DORMANCY" value="">
									<div class="user_gender">
										<a class="male on" href="javascript:void(0);">남</a>
										<a class="female  " href="javascript:void(0);">여</a>
										<input type="hidden" name="gender" id="gender" value="M">
									</div>
										<a class="btn_change_name" href="javascript:void(0);">변경</a>
								</div>
								
								<div class="renew_input_box birth_chk">
									<strong>생년월일(필수)</strong>
									<div class="select_birth_box">
										<div class="birth_select year">
					                      	<select id="birth_year" name="birth_year" required="required"><option value="">****년</option><option value="2007">2007년</option><option value="2006">2006년</option><option value="2005">2005년</option><option value="2004">2004년</option><option value="2003">2003년</option><option value="2002">2002년</option><option value="2001">2001년</option><option value="2000">2000년</option><option value="1999">1999년</option><option value="1998">1998년</option><option value="1997">1997년</option><option value="1996">1996년</option><option value="1995">1995년</option><option value="1994">1994년</option><option value="1993">1993년</option><option value="1992">1992년</option><option value="1991">1991년</option><option value="1990">1990년</option><option value="1989">1989년</option><option value="1988">1988년</option><option value="1987">1987년</option><option value="1986">1986년</option><option value="1985">1985년</option><option value="1984">1984년</option><option value="1983">1983년</option><option value="1982">1982년</option><option value="1981">1981년</option><option value="1980">1980년</option><option value="1979">1979년</option><option value="1978">1978년</option><option value="1977">1977년</option><option value="1976">1976년</option><option value="1975">1975년</option><option value="1974">1974년</option><option value="1973">1973년</option><option value="1972">1972년</option><option value="1971">1971년</option><option value="1970">1970년</option><option value="1969">1969년</option><option value="1968">1968년</option><option value="1967">1967년</option><option value="1966">1966년</option><option value="1965">1965년</option><option value="1964">1964년</option><option value="1963">1963년</option><option value="1962">1962년</option><option value="1961">1961년</option><option value="1960">1960년</option><option value="1959">1959년</option><option value="1958">1958년</option><option value="1957">1957년</option><option value="1956">1956년</option><option value="1955">1955년</option><option value="1954">1954년</option><option value="1953">1953년</option><option value="1952">1952년</option><option value="1951">1951년</option><option value="1950">1950년</option><option value="1949">1949년</option><option value="1948">1948년</option><option value="1947">1947년</option><option value="1946">1946년</option><option value="1945">1945년</option><option value="1944">1944년</option><option value="1943">1943년</option><option value="1942">1942년</option><option value="1941">1941년</option><option value="1940">1940년</option><option value="1939">1939년</option><option value="1938">1938년</option><option value="1937">1937년</option><option value="1936">1936년</option><option value="1935">1935년</option><option value="1934">1934년</option><option value="1933">1933년</option><option value="1932">1932년</option><option value="1931">1931년</option><option value="1930">1930년</option><option value="1929">1929년</option><option value="1928">1928년</option><option value="1927">1927년</option><option value="1926">1926년</option><option value="1925">1925년</option><option value="1924">1924년</option><option value="1923">1923년</option><option value="1922">1922년</option><option value="1921">1921년</option><option value="1920">1920년</option><option value="1919">1919년</option><option value="1918">1918년</option><option value="1917">1917년</option><option value="1916">1916년</option><option value="1915">1915년</option><option value="1914">1914년</option><option value="1913">1913년</option><option value="1912">1912년</option><option value="1911">1911년</option><option value="1910">1910년</option><option value="1909">1909년</option><option value="1908">1908년</option><option value="1907">1907년</option></select>
										</div>
										<div class="birth_select month">
						                    <select id="birth_month" name="birth_month" required="required"><option value="">선택</option><option value="01">1월</option><option value="02">2월</option><option value="03">3월</option><option value="04">4월</option><option value="05">5월</option><option value="06">6월</option><option value="07">7월</option><option value="08">8월</option><option value="09">9월</option><option value="10">10월</option><option value="11">11월</option><option value="12">12월</option></select>
										</div>
										<div class="birth_select day">
					                      	<select id="birth_day" name="birth_day" required="required"><option value="">선택</option><option value="01">1일</option><option value="02">2일</option><option value="03">3일</option><option value="04">4일</option><option value="05">5일</option><option value="06">6일</option><option value="07">7일</option><option value="08">8일</option><option value="09">9일</option><option value="10">10일</option><option value="11">11일</option><option value="12">12일</option><option value="13">13일</option><option value="14">14일</option><option value="15">15일</option><option value="16">16일</option><option value="17">17일</option><option value="18">18일</option><option value="19">19일</option><option value="20">20일</option><option value="21">21일</option><option value="22">22일</option><option value="23">23일</option><option value="24">24일</option><option value="25">25일</option><option value="26">26일</option><option value="27">27일</option><option value="28">28일</option><option value="29">29일</option><option value="30">30일</option><option value="31">31일</option></select>
										</div>
										<div class="birth_select yny">
						                    <select id="birth_flag" name="birth_flag">
						                    	<option selected="selected" value="1">양</option>
						                        <option value="2">음</option>
						                    </select>
										</div>
									</div>
									<p class="limit_txt birth_txt" style="display: none;"></p>
									<p class="select_birth_txt">
										생일 무료 음료 쿠폰은 1년에 1번만 발행되므로, 변경 후에도 해당 연도 내 발행 이력이 있는 경우 추가 발행되지 않습니다.
									</p>
								</div>
								<div class="renew_input_box" id="save">
									<strong>휴대폰(필수) <i class="icon_mark_point" onclick="showphone()"></i></strong>
									<!-- 툴팁 -->
									<div class="info_btn_inner" id= "info_btn_inner">
										<div class="info_btn_box" id="info_btn_box">	
											<p class="btn_close"><a onclick="hidephone()"><img src="//image.istarbucks.co.kr/common/img/util/ec/btn_close2.png" alt="닫기"></a></p>
											<dl>
												<dt>휴대폰 번호 입력 안내</dt>
												<dd>이벤트 및 주문정보가 담긴 <span class="en">SMS/MMS</span>를 수신하세요.</dd>
												<!-- 150706 DOM 수정 - 텍스트 수정 -->
												<dd>주요 공지사항 및 이벤트 당첨 안내 등은 수신 동의 여부에 관계없이 발송됩니다.</dd>
											</dl>
											<p class="btn_close02"><a onclick="hidephone()">닫기</a></p>															
										</div>
									</div>
									
									<div class="phone_change_box">
									   <input class="phone" type="tel" name="phone" id="phone" maxlength="13" value="">
										<a class="btn_phone_change certi" href="javascript:void(0);" style="display:none;">변경</a>
										<a id="phone_num_certi" class="btn_phone_change green certi_no ">인증</a>
									</div>
									<p class="limit_txt phone_txt"></p>
									
									<div class="choice_agreement border">
										<div class="choice_agreement_txt">
											<div class="ez-checkbox"><input type="checkbox" name="sms_agree" value="Y" id="agreement1" class="ez-hide"></div>
											<input type="hidden" name="sms_yn" value="N" id="agreement2">
											<label for="agreement1">SMS를 통한 이벤트 및 신규 매장 정보 수신에 동의합니다.[선택]</label>
										</div>
									</div>
								</div>
								<div class="renew_input_box">
									<strong>메일(필수) <i class="icon_mark_point" onclick="showmail()"></i></strong>
									<!-- 툴팁 -->
									<div class="info_btn_inner" id= "info_btn_inner_mail">
										<div class="info_btn_box">	
											<p class="btn_close"><a><img onclick='hidemail()' src="//image.istarbucks.co.kr/common/img/util/ec/btn_close2.png" alt="닫기"></a></p>
											<dl>
												<dt><span class="en">E-Mail</span> 입력 안내</dt>
												<dd>스타벅스커피 코리아의 새로운 서비스, 신상품이나 이벤트 정보 등 최신 정보를 <span class="en">E-mail</span>로 미리 받아 보실 수 있습니다.</dd>
												<dd>스타벅스 리워드 회원은 쿠폰과 혜택에 대한 내용이 <span class="en">E-mail</span>을 통해 받아 보실 수 있습니다.</dd> <!-- 스타벅스 리워드 수정 -->
												<dd>주요 공지사항 및 이벤트 당첨 안내 등은 수신 동의 여부에 관계없이 발송됩니다.</dd>
											</dl>
											<p class="btn_close02"><a onclick='hidemail()'>닫기</a></p>															
										</div>
									</div>
									<!-- // 툴팁 -->
									<div>
										<input type="text" name="email" id="email" placeholder="E-mail을 입력하세요.">
										<p class="limit_txt mail_txt"></p>
									</div>
									<div class="choice_agreement border"> <!--  20170626  border 클라스 추가 -->
										<div class="choice_agreement_txt"><!--   태그 변경 p > div -->
											<div class="ez-checkbox2"><input type="checkbox" name="mail_agree" value="Y" id="agreement3" class="ez-hide"></div>
											<input type="hidden" name="mail_yn" value="N" id="agreement4">
											<label for="agreement3">이메일을 통한 이벤트 및 신규 매장 정보 수신에 동의합니다.[선택]</label>
										</div>
									</div>
								</div>
							</section>
							<section class="renew_joinform_v2 bdt_no">
								<figure class="icon_mem_sally">
									<img src="//image.istarbucks.co.kr/common/img/util/mem/icon_nick_sally.jpg" alt="">
								</figure>
								<p class="mem_nick_txt">
									주문하신 제품을 찾으실 때, <br>
									파트너가 등록하신 닉네임을 불러드립니다.
								</p>
								<div class="renew_input_box bd_none">
									<strong>닉네임(선택) <i class="icon_mark_point" onclick='shownick()'></i></strong>
									<!-- 툴팁 -->
									<div class="info_btn_inner" id= "info_btn_inner_nick">
										<div class="info_btn_box">	
											<p class="btn_close"><a><img onclick='hidenick()' src="//image.istarbucks.co.kr/common/img/util/ec/btn_close2.png" alt="닫기"></a></p>
											<dl>
												<dt>닉네임이란?</dt>
												<dd>스타벅스 리워드 회원이 매장에서 스타벅스 카드로 결제 후, 주문하신 제품 / 상품을 찾으실 때 불러드리는 고유한 이름입니다.</dd>
											</dl>
											<p class="t1">[이용방법]</p>
											<ol>
												<li>1. 닉네임 등록</li>
												<li>2. 스타벅스 카드를 등록하여 "스타벅스 리워드" 회원 가입</li>
												<li>3. 매장 방문 후 제품/상품 주문</li>
											</ol>
											<p class="t2">주문하신 제품/상품을 찾으실 때, 파트너가 등록하신 닉네임을 불러 드립니다.</p>
											<p class="img"><img src="//image.istarbucks.co.kr/common/img/util/myinfo/nick_bn.jpg"></p>
											<dl id="nickGuide" class="nickArea">
												<dt>[닉네임 이용 유의사항]</dt>
												<dd>- 닉네임은 한글로 최대 6자까지 신청 가능하며, 주문하신 메뉴를 찾으실 때 매장 파트너가 등록된 닉네임을 불러드립니다.</dd>
												<dd>- 부적절한 닉네임을 신청하는 경우, 신청이 제한되거나 또는 신청 후 관리자에 의해 예고 없이 사용이 제한될 수 있습니다.</dd>
												<dd>- 아래와 같은 유형은 사용이 제한될 수 있습니다.</dd>
												<dd class="nickList">① 미풍양속 및 사회통념에 어긋나는 부적절한 표현</dd>
												<dd class="nickList">② 욕설/음란성/혐오성 단어나 비속어를 사용하여 타인을 직접적으로 비방하는 표현</dd>
												<dd class="nickList">③ 영업에 방해가 될 수 있는 표현
														<span>· 콜링시 다른 고객에게 혼란을 주는 단어 (예: 라떼시키신분, 매장내모든 등)</span>
      													<span>· 파트너가 부르기 어렵거나 곤란한 단어 (예: 왕밤빵, 우루쿵쿠우웅 등)</span>
												</dd>
												<dd class="nickList">④ 기타 타인에게 불쾌감을 줄 수 있는 표현</dd>
												
												<br>
												<dd class="nickGuideInfo">
													<div>
														<dl>
															<dt>[닉네임 변경 및 사용 제한]</dt>
														</dl>
													</div>
												</dd>
											<dd>닉네임 신청은 매월 1일~말일까지 최대 4회까지 가능합니다.</dd><dd>부적절한 닉네임을 3개월 간 3회 이상 신청하는 경우, 이후 30일간 닉네임 서비스를 이용할 수 없습니다.</dd></dl>
											<p class="btn_close02"><a onclick='hidenick()'>닫기</a></p>															
										</div>
									</div>
									<!-- //툴팁 -->
									<!-- 20180726 이용약관 영역추가 -->
									<section class="mem_agreement_wrap choice_agreement_wrap new_agr_choice">
										<h5>선택적 개인정보 수집동의 및 이용약관</h5>
										<!-- 접근성_20171120 추가 -->
										<span class="agree-check">
											<input type="checkbox" name="mem_choice" id="mem_choice_yes" class="mem">
											<label id="mem_choice_label" for="mem_choice_yes">동의</label>
										</span>
										<!-- 접근성_20171120 추가 end -->
										<div class="mem_purpose_area mem_purpose_area_v2 mCustomScrollbar _mCS_1"><div id="mCSB_1" class="mCustomScrollBox mCS-light mCSB_vertical mCSB_inside" tabindex="0"><div id="mCSB_1_container" class="mCSB_container" style="position:relative; top:0; left:0;" dir="ltr">
											<!-- 개인정보의 수집 및 이용목적 내용 -->
											<div class="privacy_cont">
						                		<p class="nickname_text" id="nickname_text">

<div id="popWrap">

 <div id="container">


    <!-- 개인정보의 수집 및 이용목적 내용 -->
    <div class="privacy_cont">
     <p class="mb15">
      본인은 (주)스타벅스커피코리아(이하 “회사”라 합니다)가 제공하는 콜 마이 네임 서비스(이하 “서비스”라 합니다)를 이용하기 위해, 다음과 같이 “회사”가 본인의 개인정보를 수집·이용하는 것에 동의합니다.</p>
     <p class="mb15 fontBold underLine">※ 귀하께서는 개인정보 수집·이용에 대한 동의를 거부하실 수 있으나, 동의를 거부하실 경우 서비스 이용을 하실 수 없습니다.</p>
     <ul class="pri_con mb40">
      <li>
       <span class="fontBold">1. 개인정보 항목·목적·보유기간</span>
       <table class="vod_tb_ag mb20 mt10">
       <caption class="hid">수집하는 개인정보에 대한 항목, 목적, 보유기간 안내 테이블</caption>
        <colgroup>
         <col width="">
         <col width="80%">
        </colgroup>
        <thead>
         <tr>
          <th scope="col">구분</th>
          <th scope="col">내역</th>
         </tr>
        </thead>
        <tbody>
         <tr>
          <th scope="row"><span class="fontBold">항목</span></th>
          <td class="taLeft">닉네임</td>
         </tr>
         <tr>
          <th scope="row"><span class="fontBold">목적</span></th>
          <td>
           콜 마이 네임 서비스</td>
         </tr>
         <tr>
          <th scope="row"><span class="fontBold">보유 및 <br>이용기간</span></th>
          <td class="pointFont"><span class="underLine">회원 탈퇴 시 까지 또는 관계법령에 의한 별도 보존기간 </span> (2. 관계법령에 의한 개인정보 보존기간 참고)</td>
         </tr>
        </tbody>
       </table>
      </li>
      <li>
       <span class="fontBold">2. 관계법령에 의한 개인정보 보존기간</span>
       <ul>
        <li class="pointFont">- 서비스이용기록, 접속로그, 접속IP정보 (통신비밀보호법 : 3개월)</li>
        <li class="pointFont">- 표시/광고에 관한 기록 (전자상거래법 : 6개월)</li>
        <li class="pointFont">- 계약 또는 청약철회 등에 관한 기록 (전자상거래법 : 5년)</li>
        <li class="pointFont">- 대금결제 및 재화 등의 공급에 관한 기록 (전자상거래법 : 5년)</li>
        <li class="pointFont">- 소비자의 불만 또는 분쟁처리에 관한 기록 (전자상거래법 : 3년)</li>
       </ul>
      </li>
      
      <li class="mt20">
       <span class="fontBold">3. 서비스 이용과정 및 사업 처리과정에서 수집될 수 있는 개인정보의 범위 </span>
       <p class="pl20">서비스 이용기록, 접속 로그, 쿠키, 접속 IP 정보, 결제기록</p>
       <p class="pl20">* 쿠키의 경우 구체적인 운영 내역과 설정 거부 방법 등은 본 홈페이지 개인정보처리방침 “개인정보 자동수집 장치의 설치, 운영 및 그 거부에 관한 사항”에서 확인하실 수 있습니다.</p>
      </li>
     </ul>
    </div>
    
   </div>

 </div> 



</p>
											</div>
											
										</div><div id="mCSB_1_scrollbar_vertical" class="mCSB_scrollTools mCSB_1_scrollbar mCS-light mCSB_scrollTools_vertical" style="display: block;"><div class="mCSB_draggerContainer"><div id="mCSB_1_dragger_vertical" class="mCSB_dragger" style="position: absolute; min-height: 33px; top: 0px; display: block; height: 20px; max-height: 118px;" oncontextmenu="return false;"><div class="mCSB_dragger_bar" style="line-height: 33px;"></div></div><div class="mCSB_draggerRail"></div></div></div></div></div>
									</section>
									
									<input type="text" name="user_nick_nm" id="user_nick_nm" placeholder="닉네임 입력을 위해 약관에 동의해 주세요." maxlength="6" readonly="readonly" class="disabled" onfocus="this.blur()" data-org_user_nick_nm="" data-user_nick_change_yn="Y" data-penalty_yn="N" data-penalty_date="" data-nick_limited_dtyn="" data-nick_use_yn="">
									<input type="hidden" id="nick_nm_use" name="nick_nm_use" value="">
									<p class="limit_txt input_warn_text user_nick_nm_txt"></p>
								</div>
							</section>
							
							<section class="renew_input_bigbox"> 
								<strong class="modify_section_ttl">현금영수증 정보입력</strong>
								<div class="pay_receipt_wrap">
									<p class="pay_receipt_txt">
										등록된 스타벅스카드로 결제하는 고객님들을 위한 추가 입력 
										정보입니다. 고객님의 휴대폰번호 또는 사업자등록번호를 
										입력 해 주세요.
									</p>
									<p class="pay_receipt_txt t_006633">
										* 일부 매장 (프리미엄아울렛 입점 매장 등)에서 자동 발행이 불가 합니다.
									</p>
									<section class="pay_receipt_tab mo_pay_tab ">
										<strong class="receipt_person">개인</strong>
										<div class="renew_input_box receipt_tab_cont receipt_kind1" style="display: none;">
											<div class="receipt_person_input receipt_person_phone">
												<input type="hidden" name="receipt_method" id="receipt_method1" value="">
												<div class="radio_box">
													<div class="ez-radio ez-selected"><input type="radio" name="mobile_select" id="mobile_select1" value="H" checked="checked" class="ez-hide"></div>
													
													<label for="mobile_select1"> 회원 정보에 등록된 휴대폰 번호로 발행</label>
												</div>
											
		                                    
		                                    
		                                    
		                                       <input type="tel" name="mobile_my_mm" id="mobile_my_mm" value="" class="mb20" maxlength="13" disabled="disabled">
												<div class="radio_box">
													<div class="ez-radio"><input type="radio" name="mobile_select" id="mobile_select2" value="K" class="ez-hide"></div>
													<label for="mobile_select2"> 다른 휴대폰 번호로 발행</label>
												</div>
												<input class="mb20" type="text" id="mobile_mm" maxlength="13">
												
												<p class="limit_txt input_warn_text receipt_txt_type_k"></p>
												<p class="pay_receipt_txt m0">
													· 상기 휴대폰 번호는 현금영수증 발행 시에만 적용 가능
												</p>
											</div>
										</div>
										<strong class="receipt_company">사업자</strong>
										<div class="renew_input_box receipt_tab_cont receipt_kind2" style="display:none;">
											<div class="receipt_person_input">
												<input type="hidden" name="receipt_method2" id="receipt_method3" value=""><!-- value=H,K -->
												<p class="pay_receipt_txt mb30">
													· 현금영수증을 발급받기 원하시는 사업자 등록 번호를 입력해주세요.
												</p>
												<div class="card_3input">
													<input type="tel" id="business_no_1" maxlength="3">
													<span>-</span>
													<input type="tel" id="business_no_2" maxlength="2">
													<span>-</span>
													<input type="tel" id="business_no_3" maxlength="5">
												</div>
												<p class="limit_txt input_warn_text receipt_txt_type_v"></p>
											</div>
										</div>
										<strong class="receipt_no on">발행하지않음</strong>
										<div class="renew_input_box receipt_tab_cont receipt_kind3" style="display: block;">
											<div class="receipt_person_input">
												<div class="radio_box long_txt mb20">
													<div class="ez-radio"><input type="radio" name="receipt_kind" id="receipt_kind3" value="A" checked="checked" class="ez-hide"></div>
													<label for="NO1">
														스타벅스 이용 시 현금영수증을 발행하지 않으며, 결제 시 파트너가 다시 묻지 않도록 합니다. 
													</label>
												</div>
												<div class="radio_box long_txt">
													<div class="ez-radio ez-selected"><input type="radio" name="receipt_kind" id="receipt_kind4" value="E" class="ez-hide"></div>
													<label for="NO2">
														별도로 설정값을 정해두지 않으며 매장에서 필요할 때마다 요청하겠습니다. 
													</label>
												</div>
											</div>
										</div>
									</section>
								</div>
								<div class="renew_input_box bd_none">
									<strong>
										전자영수증 발급 안내
										<i class="icon_mark_point"></i>
									</strong>
									<!-- 툴팁 -->
									<div class="info_btn_inner">
										<div class="info_btn_box">	
											<p class="btn_close"><a href="javascript:void(0);"><img src="//image.istarbucks.co.kr/common/img/util/ec/btn_close2.png" alt="닫기"></a></p>
											<dl>
												<dt>전자영수증이란</dt>
												<dd>종이자원의 낭비 및 분실로 인한 거래정보 유출 등의 문제를 해결하고자 도입한 서비스로, 등록된 스타벅스 카드로 결제하거나 사이렌 오더로 주문하신 거래에 대해 매장에서 제공되는 종이 영수증과 같은 형태로 스타벅스 모바일 애플리케이션과 홈페이지에서 확인하실 수 있도록 제공하고 있습니다.</dd>	
												<dd>필요 시, 홈페이지에서 인쇄도 가능합니다.</dd>	
												<dd>단, 영수증 쿠폰과 교환증의 경우에는 실물로만 제공되며, 전자영수증으로는 확인 및 출력이 불가하니 참고하시기 바랍니다.</dd>	
											</dl>
											<p class="btn_close02"><a href="javascript:void(0);">닫기</a></p>
										</div>
									</div>
									<!-- //툴팁 -->
									<p class="choice_agreement_txt">개인정보 유출 방지를 위해 전자영수증만 기본 발급됩니다.<br><span class="fontGold3">종이영수증을 원하시면 주문 시 요청해주세요.</span></p> <!--20180523 수정-->
									
								</div>
							</section>
							<p class="modify_txt2"><b>＊ 선택항목은 입력하지 않거나 동의하지 않아도 스타벅스 서비스를 이용하실 수 있습니다.</b></p>
							<p class="btn_mem_login">
								<a href="javascript:void(0);">정보수정</a>
							</p>
						</fieldset>	
					</form>
				</div>
			</div>
		</div>
		<jsp:include page="../footer.jsp"></jsp:include>
</body>
</html>






