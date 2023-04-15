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
} /* 반응형 웹 */

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
    min-width: 1400px;
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
    width: 1140px;
    margin: 0 auto;
    padding: 50px 0 50px;
    background-color: #fff;
}

.header3_img { /* 이미지 */
    position: relative;
    float: left;
    width: 680px;
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
	margin-right: 78px;
    font-size: 15px;
    font-weight: 700;
}

.funding_go { /* 펀딩 참여하기 */
    margin-top: 18px;
    float: right;
}

.funding_go_button { /* 펀딩 참여/종료 버튼 */
    display: inline-block;
    width: 350px;
    height: 52px;
    background-color: #333;
    border: 1px solid rgba(0,0,0,.02);
    border-radius: 3px;
    font-size: 19px;
    font-weight: 700;
    color: #fff;
    letter-spacing: -.3px;
    margin-right: 80px;
}

.funding_go_button a { /* 내부의 a태그 */
    position: relative;
    text-decoration: none;
}

.donae {
	display: inline-block;
	font-size: 13px;
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
    width: 740px;
    padding-top: 60px;
    padding-left: 200px;
}

.content_right {
    float: left;
    width: 500px;
    padding-top: 60px;
    padding-left: 160px;
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
	width: 1140px;
    padding: 24px 0 21px;
    margin: 0 auto;
    line-height: 0;
}

.hidden_jpg { /* 히든 이미지 */
	display: inline-block;
    position: relative;
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

.hidden_fungo {
	float: right;
    margin-top: 2px;
    padding-right: 81px;
}

.hidden_button {
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

.hidden_list {
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
	            <a href="#" class="search_btn">검색</a>
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
			내용이 들어갈 자리
			내용이 들어갈 자리
			내용이 들어갈 자리
			내용이 들어갈 자리
			내용이 들어갈 자리
			내용이 들어갈 자리
			내용이 들어갈 자리내용이 들어갈 자리
			내용이 들어갈 자리
			내용이 들어갈 자리
			내용이 들어갈 자리내용이 들어갈 자리
			내용이 들어갈 자리
			내용이 들어갈 자리
			내용이 들어갈 자리
			내용이 들어갈 자리
			내용이 들어갈 자리
			내용이 들어갈 자리
			내용이 들어갈 자리
			내용이 들어갈 자리
			내용이 들어갈 자리내용이 들어갈 자리
			내용이 들어갈 자리
			내용이 들어갈 자리
			내용이 들어갈 자리내용이 들어갈 자리
			내용이 들어갈 자리
			내용이 들어갈 자리
			내용이 들어갈 자리
			끼에에에에에에에에에에
			에에에에에에에에에에에에
			에에에에에에에에에에에에
			에에에에에에에에에에에에
			에에에에에에에에에에에에
			에에에에에에에에에에에에
			에에에에에에에에에에에에
			에에에에에에에에에에에에에에에
			에에에에에에에에에에에에
			에에에에에에에에에에에에에에에
			에에에에에에에에에에에에에에에
			에에에에에에에에에에에에에에에
			에에에에에에에에에에에에에에에에에에
			에에에에에에에에에에에에에에에에에에에에에에에에
			에에에에에에에에에에에에에에에에에에에에에
			에에에에에에에에에에에에에에에에에에에에에
			에에에에에에에에에에에에에에에에에에
			에에에에에에에에에에에에에에에에에에
			에에에에에에에에에에에에에에에에에에
			에에에에에에에에에에에에에에에에에에
			에에에에에에에에에에에에에에에에에에
			에에에에에에에에에에에에에에에에에에
			에에에에에에에에에에에에에에에에에에
			에에에에에에에에에에에에에에에에에에
			에에에에에에에에에에에에에에에에에에
			에에에에에에에에에에에에에에에에에에
			에에에에에에에에에에에에에에에에에에
			에에에에에에에에에에에에에에에에에에
			에에에에에에에에에에에에에에에에에에
			에에에에에에에에에에에에에에에에에에
			에에에에에에에에에에에에에에에에에에
			에에에에에에에에에에에에에에에에에에
			에에에에에에에에에에에에에에에에에에
			에에에에에에에에에에에에에에에에에에
			에에에에에에에에에에에에에에에에에에
			에에에에에에에에에에에에에에에에에에
			에에에에에에에에에에에에에에에에에에
			에에에에에에에에에에에에에에에에에에
			에에에에에에에에에에에에에에에에에에
			에에에에에에에에에에에에에에에에에에
			에에에에에에에에에에에에에에에에에에
			에에에에에에에에에에에에에에에에에에
			에에에에에에에에에에에에에에에에에에
			에에에에에에에에에에에에에에에에에에
			에에에에에에에에에에에에에에에에에에
			에에에에에에에에에에에에에에에에에에
			에에에에에에에에에에에에에에에에에에
			에에에에에에에에에에에에에에에에에에
			에에에에에에에에에에에에에에에에에에
			
		</div> <!-- content_left -->
		<div class="content_right">
			내용이 들어갈 자리
			내용이 들어갈 자리
			내용이 들어갈 자리
			내용이 들어갈 자리내용이 들어갈 자리
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
	
		<div class="content_hidden" aria-hidden="true">
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
</div>
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