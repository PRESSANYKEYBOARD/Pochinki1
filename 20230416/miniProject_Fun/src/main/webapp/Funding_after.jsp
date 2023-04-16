<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width,initial-scale=1">	
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">

/* Desktop First */

/* 반응형 웹 */
.title { font-size: 18px; }

@media (max-width: 1023px) {
  .title { font-size: 16px; }
}

@media (max-width: 767px) {
  .title { font-size: 14px; }
}

@media (max-width: 639px) {
  .title { font-size: 12px; }
} 
/* 반응형 웹 */

/* 자바스크립트로 추가될 클래스 */
.nav-up {
    top: -40px; // 헤더 높이와 같게 
}

select{
	width: 350px;
	text-align : center;
}

.header1 { /* 상단 헤드 영역 */
    border-bottom: 1px solid #ddd;
    position: fixed;
    width: 100%;
    background-color: white;
    Z-index: 1000;
}

.header1 .container { /* 헤드 내부의 컨테이너 */
    display: flex;
    align-items: center;
    min-width: 1200px;
}

.header1_left { /* 로고 */
	padding-left: 130px;
}

.header1_left h1 {
	margin: 0;
}

.header1_left > a { /* 로고 영역 */
    margin: 0;
    font-size: 30px;
    font-weight: bold;
    color: yellowgreen;
    text-decoration: none;
}

.header1_mid { /* 메뉴 */
	flex: 1;
}

.header1_mid ul { /* 기부 펀딩 고객센터 */
    display: flex;
    justify-content: center;
    list-style: none;
    margin: 0;
    padding: 0;
}

.header1_mid ul li {
    margin-left: 50px;
    margin-right: 30px;
}

.header1_mid ul li a {
    display: block;
    padding: 20px 0;
    font-size: 20px;
    font-weight: 800;
    color: black;
    text-decoration: none;
} 

.header1_right { /* 로그인 검색 */
	padding-right: 200px;
} 

.header1_right > a {
    text-decoration: none;
    color: black;
} 

.header1_right > span.header-bar{
    display: inline-block;
    width: 1px;
    height: 16px;
    margin: 1px 1px 3px 1px;
    background-color: #d8d8d8;
    vertical-align: middle;
    content: '';
}

.header1_right > a.search_btn > img{
    width: 23px;
    height: 23px;
    vertical-align: top;
    margin-top: 1px;
} /* 여기까지 헤더 상단 */

.header2  { /* 하위 메뉴 시작 */
    position: relative;
    z-index: 1;
    min-height: 50px;
    margin-bottom: -1px;
    padding: 0 5px;
    border-bottom: 1px solid rgba(0,0,0,.12);
    text-align: center;
} 

.header2 .container {
	min-width: 1400px;
}

.menu2 { /* 하위 메뉴  */
    padding-top: 70px;
    flex: 1;
}

.menu2 ul { /* 하위 메뉴 */
    display: flex;
    position: relative;
    justify-content: center;
    list-style: none;
    margin: 0;
    padding: 0;
    padding-right: 120px;
}

.menu2 ul li { /* 하위 메뉴 */
    margin: 10px;
    margin-left: 50px;
}

.menu2 ul li a { /* 하위 메뉴 */
    display: block;
    font-size: 15px;
    color:gray;
    text-decoration: none;   
}

.menu2 ul li a:hover { /* 하위 메뉴 */
    color: yellowgreen;
    text-decoration: none;
    text-align: center;
}

.header3 { /* header3 시작 */
    width: 1060px;
    margin: 0 auto;
    padding: 50px 0 30px;
    background-color: #fff;
}

.header3_img { /* 이미지 */
    position: relative;
    float: left;
    width: 590px;
    margin-right: 30px;
}

.header3_summary { /* 펀딩 내용 */
    overflow: hidden;
    position: relative;
}

.dday { /* 남은 일수 */
	display: inline-block;
    position: relative;
    min-width: 54px;
    padding: 3px 9px;
    background-color: #ed5a5a;
    border-radius: 13px;
    font-size: 15px;
    font-weight: 700;
    line-height: 1.33;
    color: #fff;
    letter-spacing: -.4px;
    text-align: center;
}

.title { /* h3 타이틀 */
	word-break: keep-all;
    word-wrap: break-word;
    min-height: 82px;
    margin-top: 12px;
    font-size: 32px;
    font-weight: 900;
    line-height: 1.32;
    letter-spacing: -1px;
}

.graph { /* 목표금액 % */
    width: 350px;
    margin-top: 2px;
}

.rate { /* 목표를 포착했다. */
	width: 350px;
    margin-top: 2px;
    text_align: right;
}

.per { /* % */
    font-size: 28px;
    color: #0091ff;
}

.bar_main { /* 프로그래스 바 메인 */
    position: relative;
    width: 100%;
    height: 3px;
    margin-top: 7px;
    background-color: #eee;
}

.bar { /* 프로그래스 바 */
    display: inline-block;
    position: absolute;
    height: 100%;
    background-color: #0f92e0;
}

.credit_goal { /* 목표금액 메인 */
    float: left;
    margin-top: 13px;
    font-size: 15px;
    line-height: 1.13;
    color: #828282;
    letter-spacing: -.6px;
}

.credit { /* 금액 */
    display: inline-block;
    margin: 0 1px -1px 0;
    font-size: 16px;
    letter-spacing: -.4px;
    vertical-align: bottom;
}

.credit_much { /* 얼마요? 메인 */
    float: right;
    margin-top: 14px;
    font-size: 18px;
    font-weight: 700;
    line-height: 1.11;
    letter-spacing: -.8px;
}

.much { /* 얼마요? */
	display: inline-block;
    margin: 0 1px -3px 0;
    font-size: 23px;
    line-height: 1.13;
    letter-spacing: -1px;
    vertical-align: bottom;
}

.company_main { /* 회사소개 메인 */
	overflow: hidden;
    display: table;
    position: relative;
    width: 350px;
    height: 60px;
    margin: 26px 16px 0;
    table-layout: fixed;
}

.company_img { /* 회사 로고 */
 	display: table-cell;
    width: 74px;
    height: 60px;
    padding-right: 14px;
    margin-right: 8px;
    vertical-align: middle;
}

.company_img2 { /* 회사 로고 내부 */
	background-repeat: no-repeat;
    background-position: 50% 50%;
    background-size: cover;
    width: 60px;
    height: 60px;
    background-origin: border-box;
    border: 1px solid rgba(0,0,0,.05);
    border-radius: 50%;
}

.company_text { /* 회사 소개글 */
    display: table-cell;
    width: 100%;
    padding-top: 1px;
    vertical-align: middle;
}

.company_text1 { /* 회사명 */
	overflow: hidden;
    text-overflow: ellipsis;
    white-space: nowrap;
    display: block;
    font-size: 16px;
    font-weight: 700;
    color: #000;
    letter-spacing: -.3px;
}

.company_text2 { /* 회사소개 */
    overflow: hidden;
    text-overflow: ellipsis;
    white-space: nowrap;
    display: block;
    margin-top: 4px;
    font-size: 14px;
    color: #666;
}

.dropdown { /* 드롭다운 리스트 */
    float: right;
    position: relative;
    width: 100%;
    height: 100%;
    margin-top: 18px;
    border-top: 1px solid rgba(0,0,0,.05);
    padding-top: 18px;
}

.selectbox { /* 셀렉트 박스 굳이 적용 안해도 될 것 같긴 함 */
	position: relative;
    float: right;
    margin-top: 30px;
    background-color: white;
    width: 100%;
    height: 100%; 
    color: black;
}

.total { /* 총 수량과 총 금액 */
    margin-top: 21px;
}

.total_left { /* 총 수량 */
    float: left;
    margin: 6px 0 0 1px;
    font-size: 14px;
    color: #666;
}

.total_right { /* 총 금액 */
	float: right;
	margin: 6px 0 0 1px;
	margin-right: 90px;
    font-size: 15px;
    font-weight: 700;
}

.funding_go { /* 펀딩 참여하기 */
	display: flex;
    margin-top: 18px;
    float: left;
}

.funding_go_button { /* 펀딩 참여/종료 버튼 */
    display: inline-block;
    width: 350px;
    height: 54px;
    background-color: #333;
    border: 1px solid rgba(0,0,0,.02);
    border-radius: 3px;
    font-size: 19px;
    font-weight: 700;
    color: #fff;
    letter-spacing: -.3px;
    margin-right: 100px;
}

.funding_go_button a { /* 내부의 a태그 */
	text-align: center;
    position: relative;
    text-decoration: none;
}

.donae {
	display: inline-block;
	font-size: 13px;
}

.content { /* content 전체 내용 */
    width: 1060px;
    margin: 0 auto;
}

.content_list { /* 스토리 소식후기 */
	min-width: 1140px;
	z-index: 2000;
	margin: 0 120px;
}

.content_list ul {
    display: flex;
    position: relative;
    justify-content: center;
    list-style: none;
    margin: 0;
    padding: 0;
    padding-right: 100px;
}

.content_list ul li {
	margin-left: 50px;
    margin-right: 30px;
}

.content_list ul li a {
	display: block;
    padding: 20px 0;
    font-size: 20px;
    font-weight: 800;
    color: black;
    text-decoration: none;
}

.content_list ul li a:hover {
    color: yellowgreen;
    text-decoration: none;
    text-align: center;
} /* 소식 후기 끝 */

.content_left { /* content 왼쪽 내용 */
	float: left;
    width: 560px;
    padding-top: 60px;
    margin-left: 12px;
}

.content_left1 {
 	margin-bottom: 60px;
}

.content_right { /* content 오른쪽 내용 */
    float: right;
    width: 480px;
    padding-top: 60px;
    padding-left: 43px;
    padding-right: 80px;
}

.content_hidden { /* 스크롤 내리면 뜨는 펀딩 */
    position: fixed;
    top: 71px;
    right: 0;
    left: 0;
    z-index: 40;
    background-color: #fff;
}

.content_hidden_middle { /* 스크롤 내리면 뜨는 펀딩 */
	width: 1060px;
    padding: 24px 0 21px;
    margin: 0 auto;
    line-height: 0;
}

.content_guide { /* 결제 방법 및 배송 안내 */
    padding: 40px 0 50px;
    border-top: 1px solid #000;
}

.content_guide > h4 { /* 결제 방법 및 배송 안내 */
    display: block;
    /* font-family: NanumSquareWebFont,dotum,Sans-serif; */
    font-size: 22px;
    font-weight: 700;
    line-height: 1.19;
    color: #202020;
    letter-spacing: -.6px;
}

.content_guide_inner2 { /* 1차 배송, 2차 배송 */
    display: block;
    margin-top: 21px;
    font-size: 17px;
    font-weight: 400;
    line-height: 1.4;
    color: #202020;
    letter-spacing: -.3px;
}

.content_guide_inner > span {
    padding: 1px 3px 0;
    margin: 2px -3px 0;
    background-image: linear-gradient(180deg,#e9f5ff,#e9f5ff);
    color: #0091ff;
}

.content_sns { /* 문의하기 */
    padding: 40px 0 48px;
    border: 1px solid #000;
    border-width: 1px 0;
}

.hidden_jpg { /* 히든 이미지 */
	display: inline-block;
    position: relative;
    margin-left: 10px;
    margin-right: 20px;
    vertical-align: top;
}

.hidden_title { /* 히든 타이틀 */
    display: inline-block;
    margin-top: 2px;
    vertical-align: top;
}

.hidden_fungo { /* 히든 펀딩참여하기 */
	float: right;
    margin-top: 2px;
}

.hidden_dday { /* 히든의 DDAY */
    display: inline-block;
    position: relative;
    min-width: 47px;
    padding: 5px 10px 1px;
    background-color: #ed5a5a;
    border-radius: 13px;
    font-size: 12px;
    font-weight: 700;
    line-height: 1.33;
    color: #fff;
    letter-spacing: -.4px;
    text-align: center;
}

.hidden_subject { /* 히든의 제목 */
	overflow: hidden;
    text-overflow: ellipsis;
    white-space: nowrap;
    display: block;
    max-width: 635px;
    margin-top: 7px;
    /* font-family: NanumSquareWebFont,dotum,Sans-serif; */
    font-size: 20px;
    font-weight: 900;
    line-height: 1.1;
    letter-spacing: -.3px;
}

.hidden_fungo { /* 스크롤을 내렸을 때 펀딩 참여하기 버튼 div */
	float: right;
    margin-top: 2px;
    padding-right: 81px;
}

.hidden_button { /* 스크롤을 내렸을 때 펀딩 참여하기 버튼 */
    display: inline-block;
    width: 270px;
    height: 52px;
    background-color: #1f9eff;
    border: 1px solid rgba(0,0,0,.02);
    border-radius: 3px;
    font-size: 19px;
    font-weight: 700;
    color: #fff;
    letter-spacing: -.3px;
}

.hidden_list { /* 스크롤을 내릴 때 리스트 */
    height: 61px;
    border: 1px solid rgba(0,0,0,.05);
    border-width: 1px 0;
}

.hidden_list ul {
    display: flex;
    position: relative;
    justify-content: center;
    list-style: none;
    margin: 0;
    padding: 0;
    padding-right: 100px;
}

.hidden_list ul li {
	margin-top: 10px;
    margin-left: 50px;
    margin-right: 30px;
}

.hidden_list ul li a { 
    display: block;
    padding: 20px 0;
    font-size: 20px;
    font-weight: 800;
    color: black;
    text-decoration: none;
}

.hiddeh_list ul li a:hover { /* 스크롤을 내렸을 때 스토리 소식·후기 마우스 커서 */
    color: yellowgreen;
    text-decoration: none;
    text-align: center;
} /* 히든 리스트 끝 */

.content_left1-1 {
	padding-bottom: 10px;
}

.content_left1-2 {
    margin-top: 10px;
    font-size: 17px;
    line-height: 1.53;
    color: #333;
    white-space: pre-line;
}

.footer * {
    font-family: NanumBarunGothic,"나눔바른고딕","Nanum Barun Gothic",Sans-serif;
    box-sizing: border-box;
}

.footer { /* 푸터 시작 */
    margin: 0 auto;
    background: #f6f6f6;
    padding-top: 50px;
    border-top: 1px solid #e0e0e0;
    background-color: #fff;
    font-size: 14px;
    line-height: 19px;
    color: #202020;
}

.footer_menu {
    clear: both;
    display: flex;
    padding: 20px;
    border: 1px solid #bcbcbc;
    background-color:#f6f6f6;
}

.footer_menu_left {
	flex: 1;
	float: left;
}

.footer_menu_right {
	flex: 9;
	float: right;
}

.footer_menu_right ul {
	list-style-type: none;
	color: #828282;
	margin: 0;
	padding: 0;
}

.footer_menu_right ul li {
	display: inline-block;
	margin: 15px;
}

.footer_menu_right ul li a {
	text-decoration: none;
	color: #828282;
}

.item {
	display: inline-block;
}

.footer_info_wrap {
    box-sizing: border-box;
    color: rgb(130, 130, 130);
    display: block;
    font-family: NanumBarunGothic,"나눔바른고딕","Nanum Barun Gothic",Sans-serif;
    font-size: 14px;
    line-height: 19px;
    padding-bottom: 50px;
    padding-left: 0px;
    padding-right: 0px;
    padding-top: 22px;
    position: relative;
}

.footer_info_inner {
    display: flex;
}

.footer_info_left {
    flex: 1;
    float: left;
}

.footer_info_right {
    flex: 9;
    float: right;
}

.footer_info_right ul {
    list-style-type: none;
    color: #828282;
    margin: 0;
    padding: 0;
} /* 푸터 끝 */

</style>
</head>
<body>
<div>
	<div class="header1">
		<div class="container">
			<div class="header1_left"><a href =" img ">한걸음</a></div> <!-- 로고 끝 -->
			<div class="header1_mid">
				<ul>
	                <li><a href="">기부</a></li>
	                <li><a href="">펀딩</a></li>
	                <li><a href="">고객센터</a></li>
	            </ul>
			</div> <!-- 메뉴 끝  -->
			<div class="header1_right">
				<a href="#" class="login_btn">로그인</a>
		        <span class="header-bar"></span>
		        <a href="#" class="search_btn">
		        	<img src="./image/enlargement.png" alt="enlargement.png">
		        </a>
			</div> <!-- 로그인 검색 끝 -->
		</div> <!-- header1의 컨테이너 끝 -->
	</div> <!-- header1 끝 -->
	
	<div class="header2"> 
		<div class="container">
			<div class="menu2">
				<ul>
	                <li><a href="">전체 펀딩</a></li>
	                <li><a href="">펀딩 후기</a></li>
	            </ul>
			</div> <!-- menu2 끝 -->
		</div> <!-- container 끝 -->
	</div> <!-- header2 끝 -->
	
	<div class="header3">
		<div class="header3_img">
			<img src="./image/jjang.png">
		</div> <!-- header3 이미지 끝 -->
		<div class="header3_summary">
			<strong class="dday">D-39</strong>
			<h3 class="title">나는 전설이다.</h3>
			<div class="graph">
				<div class="rate">
					<strong class="per">180%</strong>
				</div> <!-- rate -->
				<div class="bar_main">
					<span class="bar" style="width: 31%;"></span>				
				</div> <!-- bar_main -->
				<div class="credit_goal">
					<span class="credit">1,000,000원 목표</span>
				</div> <!-- credit_main -->
				<div class="credit_much">
					<span class="much">3,500원</span>
				</div> <!-- credit_much -->
			</div> <!--graph 끝  -->
			
			<div class="company_main">
				<div class="company_img">
					<span class="company_img2"></span>
				</div> <!-- company_img -->
				<div class="company_text">
					<span class="company_text1">로스트 아크</span>
					<span class="company_text2">로스트 아크</span>
				</div> <!-- company_text -->
			</div> <!-- 회사소개 메인 -->	
		
			<div class="dropdown">
				<label for="selectbox">
					<select id="selectbox">
						<option value="option1">리워드 선택하기</option>
			            <option value="option2">3,500원</option>
					</select>
				</label>
			</div> <!-- dropdown -->
			
			<div class="total">
				<div class="total_left">총 수량 <span></span>개</div>
				<div class="total_right">총 금액 <span></span>원</div>
			</div> <!-- total -->
			
			<div class="funding_go">
				<button type="button" class="funding_go_button"><a href="">참여하기</a></button>
			</div> <!-- funding_go -->
		
			<div class="donae">
				<label for="selectbox">
					<select id="selectbox">
						<option value="option1">가상 계좌</option>
			            <option value="option2">내돈 내놔</option>
					</select>
				</label>
			</div>
		</div> <!-- header3 내용 끝 -->
	</div> <!-- header3 끝 -->
	
		<div class="content_list">
			<ul>
		        <li><a href="">스토리</a></li>
		        <li><a href="">소식·후기</a></li>
	        </ul>
		</div> <!--content_list 끝 -->
		
	<div class="content">
		<div class="content_left">
			<div class="content_left1">
				<div class="content_left1-1">
					<h3>정신없는 일상 속 간편하게 즐기는 든든한 한 끼</h3>
				</div>
				<div class="content_left1-2">
					<p>바쁘게 스쳐가는 하루하루에 제대로 끼니를 챙기는 일은 어렵게만 느껴집니다. 간편하게 건강한 한 끼를 드시고 싶은 분들을 위해 준비했습니다. 프리미엄 냉동 도시락 '넉넉소반'은 엄마의 마음으로 정성껏 잘 차린 집밥입니다. 엄선한 좋은 재료로 영양과 맛을 모두 잡은 도시락을 지금 바로 만나 보세요!
					</p>
				</div>
				<div class="content_left1-3">
				</div>
				<div class="content_left1-4">
				</div>
			</div> <!-- content_left1 끝 -->
			
			<div class="content_left1">
				<div class="content_left1-1">
					<img src="./image/sample4.jpg" width="550px" height= "550px">
				</div>
				<div class="content_left1-2">
					<h3>취향에 맞게 즐기는 가정식 도시락 12종</h3>
				</div>
				<div class="content_left1-3">
					넉넉소반 도시락은 취향에 맞게 즐기실 수 있도록 12종의 메뉴로 구성됩니다. 향긋한 깻잎 닭갈비, 타르타르 소스를 곁들인 새우부터 표고채 탕수육과 부추 훈제오리까지 입맛을 당기는 음식들을 만나보실 수 있습니다. 직접 재운 양념육과 신선 야채를 사용하고 압력밥솥으로 쌀을 안쳐 정성을 담았습니다. 밥도 100% 흑미, 강황, 현미로 만들어 더 맛있답니다.
				</div>
				<div class="content_left1-4">
				</div>
			</div> <!-- content_left2 끝 -->
			
			<div class="content_left1">
				<div class="content_left1-1">
					<video src="">비디오 삽입 위치</video>
				</div>
				<div class="content_left1-2">
					<h3>속은 든든하게</h3>
				</div>
				<div class="content_left1-3">
					사회적기업 디자인앤본두의 샐러드보울은 건강한 식품으로 더 건강한 사회를 만들기 위해 런칭된 브랜드입니다. 어르신에게 착한 일자리를 제공하며, 수익 중 일부는 지역 사회를 위해 기부하고 있습니다. 이번 펀딩 수익금 중 5%에 해당하는 먹거리를 사회 복지 시설에 전달할 예정입니다. 맛있는 도시락으로 속은 든든하게, 마음은 따뜻하게 채워 보시기 바랍니다.
				</div>
				<div class="content_left1-4">
				</div>
			</div> <!-- 3번째 내용 끝-->
			
			<div id="carouselExampleControls" class="carousel slide" data-bs-ride="carousel"> <!-- 부트스트랩 이미지 슬라이드 -->
			  <div class="carousel-inner">
			    <div class="carousel-item active">
			      <img src="./image/sample_silde1.jpg" class="d-block w-100" alt="...">
			    </div>
			    <div class="carousel-item">
			      <img src="./image/sample_silde1.jpg" class="d-block w-100" alt="...">
			    </div>
			  </div>
			  <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleControls" data-bs-slide="prev">
			    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
			    <span class="visually-hidden">Previous</span>
			  </button>
			  <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleControls" data-bs-slide="next">
			    <span class="carousel-control-next-icon" aria-hidden="true"></span>
			    <span class="visually-hidden">Next</span>
			  </button>
			</div> <!-- 이미지 슬라이드 끝 -->
			
			<div class="content_left1">
				<div class="content_left1-1">
					<img src="./image/sample_list.jpg" width="720px" height="450px">
				</div>
				<div class="content_left1-2">
					<h4>도시락 12종 구성</h4>
				</div>
			</div> <!-- 4번째 내용 끝 -->
			
			<div class="content_left1">
				<div class="content_left1-1">
					<strong>고객의 후기</strong>
				</div>
				<div class="contetn_left1-2"> 
					<div id="carouselExampleFade" class="carousel slide carousel-fade" data-bs-ride="carousel">
					  <div class="carousel-inner">
					    <div class="carousel-item active">
					      <img src="./image/after1.png" class="d-block w-100" alt="...">
					    </div>
					    <div class="carousel-item">
					      <img src="./image/after2.png" class="d-block w-100" alt="...">
					    </div>
					    <div class="carousel-item">
					      <img src="./image/after3.png" class="d-block w-100" alt="...">
					    </div>
					  </div>
					  <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleFade" data-bs-slide="prev">
					    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
					    <span class="visually-hidden">Previous</span>
					  </button>
					  <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleFade" data-bs-slide="next">
					    <span class="carousel-control-next-icon" aria-hidden="true"></span>
					    <span class="visually-hidden">Next</span>
					  </button>
					</div> <!-- 이미지 슬라이드 끝 -->
				</div> <!-- contetn_left1-2 -->
			</div> <!-- 5번째 내용 끝 -->
			<div class="content_guide">
				<h4>결제 방법 안내</h4>
				<div class=content_guide_inner1>
					<ul>
						<li>리워드는 해당 프로젝트 개설자가 제공합니다.</li>
						<li>100% 달성 시에만 아래 지정일에 결제됩니다.</li>
					</ul>
				</div> <!-- content_guide_inner1 -->
				<div class="content_guide_inner2">
					<h5><img src="./image/cal.png" alt="끼에엨">결제 및 발송 예정일</h5>
					<ul>
						<li><span>1차 결제 : 언젠가 그가 너를, 예상 발송일 : 맘 아프게 너혼자</span></li>
						<li><span>2차 결제 : 울고 있는걸, 예상 발송일 : 봤어!!!!!!!!!</span></li>
					</ul>
				</div> <!-- content_guide_inner2 -->
			
			</div> <!-- content_guide -->
			<div class="content_left1"></div> <!-- 8번째 내용 -->
			<div class="content_left1"></div> <!-- 9번째 내용 -->
			
		</div> <!-- content_left -->
		<div class="content_right">
			내용이 들어갈 자리
			내용이 들어갈 자리
			내용이 들어갈 자리
			내용이 들어갈 자리
			내용이 들어갈 자리
			내용이 들어갈 자리
			내용이 들어갈 자리
			내용이 들어갈 자리
			내용이 들어갈 자리
			내용이 들어갈 자리
			내용이 들어갈 자리
			내용이 들어갈 자리
			내용이 들어갈 자리
			
		</div> <!-- content_right -->
	</div> <!-- content 끝 -->
	
		<div class="content_hidden" aria-hidden="true"> <!-- 스크롤 히든 클래스 -->
			<div class="content_hidden_middle">
				<div class="hidden_jpg">
					<img src="./image/jjang.png" width="70px" height="70px">
				</div> <!-- hidden_jpg -->
				<div class="hidden_title">
					<span class="hidden_dday">D-39</span>
					<strong class="hidden_subject">제목이 들어갈 자리</strong>
				</div> <!-- hidden_title -->
				<div class="hidden_fungo">
					<button class="hidden_button">참여하기</button>
				</div> <!-- hidden_fungo -->
				
			<div class="hidden_list">
				<ul>
			        <li><a href="">스토리</a></li>
			        <li><a href="">소식·후기</a></li>
	            </ul>
			</div>
			
			</div> <!-- content_hidden_middle -->
		</div> <!-- content_hidden -->
		
		<div class="footer">
	        <div class="footer_menu">
	            <div class="footer_menu_left"></div>
		            <div class="footer_menu_right">
		                <ul>
		                    <li><a href="">공지사항</a></li>
		                    <li><a href="">이용약관</a></li>
		                    <li><a href="">고객센터</a></li>
		                    <li><a href="">기업제휴 문의</a></li>
		                    <li><a href="">FAQ</a></li>
		                </ul>
		            </div> <!-- footer_menu_right -->
	        </div> <!-- footer_menu -->

		        <div class="footer_info_wrap">
		            <div class="footer_info_inner">
		                <div class="footer_info_left"></div>
		                <div class="footer_info_right">
		                    <ul class="footer_info_list">
		                        <li class="footer_info_item">재단법인 한걸음</li>
		                        <li class="footer_info_item">대표자: 이정규, 김지혜, 김현지, 엄태훈, 이소훈, 최도담</li>
		                        <li class="footer_info_item">주소 : 서울시 강남구 역삼동 819-3 삼오빌딩 5-9층</li>
		                        <li class="footer_info_item">대표전화 : 02-3486-9600</li>
		                        <li class="footer_info_item">이메일 : bitcamp601@naver.com</li>
		                        <li class="footer_info_item">사업자등록번호 : 220-12-34567</li>
		                        <li class="footer_info_item">통신판매업신고 : 제2023-서울역삼-601호</li>
		                        <small class="footer_info_notice">(재)한걸음은 프로젝트의 당사자가 아니므로, 프로젝트 진행 및 거래 등에 대한 책임은 해당 프로젝트의 개설자에게 있습니다.</small>
		                        <div class="footer_info_copyright"><a href="https://www.naver.com/" class="footer_info_naver"><img src="../img/logo1.png" width="70" height="45" alt="한걸음"></a> Copyright &copy; OneStep Corp. All Rights Reserved.</div>
		                    </ul>
		                </div>
		            </div>
		        </div> <!-- footer_info_wrap -->
	    </div><!-- footer 끝 -->
		
</div> <!-- 전체 요소 끝 -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4" crossorigin="anonymous"></script>
<script type="text/javascript" src="http://code.jquery.com/jquery-3.6.4.min.js"></script>
<script type="text/javascript">
$(document).ready(function(){
    var navHeight = $(".header3").height(); 
    //navHeight 의 높이를 구하기
    $(".content_hidden").hide();
    //스크롤시 나타날 객체 미리 숨기기

    $(window).scroll(function(){  // 윈도우 스크롤 기능 작동
        var rollIt = $(this).scrollTop() >= navHeight; 
// 스크롤의 정도가 navHeight 의 값을 넘었을 때 == 윈도우 스크롤의 값이 navHeight 의 높이와 같거나 크다

/*
scrollTop 은 윈도우에서 스크롤의 위치가 가장 상위에 있다는 의미로 해석
스크롤의 위치가 화면 아래일수록 == scrollTop 의 값이 커짐
*/

    if(rollIt){ 
		//윈도우 스크롤 기능의 값이 navHeight 의 높이와 같거나 크면
            $(".content_hidden").show().css({"position":"fixed"});
        }
        else{
            $(".content_hidden").hide();
        }
    });
});
</script>
</body>
</html>