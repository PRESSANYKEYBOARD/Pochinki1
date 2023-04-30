<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<html xmlns:th="http://www.thymeleaf.org">
<head>
<link rel="stylesheet" href="/Hangeulum/css/fun_main.css">
<meta name="viewport" content="width=device-width,initial-scale=1">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<!--Header Start-->

<div>
    <div id="header">
        <div class="headerContent">
            <div class="logo"><a href ="#"></a></div>
            <img src="/Hangeulum/image/funmain_image/logo_main.png" alt="로고" width="250" height="60">
            <div class="menu">
                <ul>
                    <li><a href="">기부</a></li>
                    <li><a href="">펀딩</a></li>
                    <li><a href="">고객센터</a></li>
                </ul>
            </div>
    
            <div class="header-r">
                <a href="/Hangeulum/user/loginForm" class="login_btn">로그인</a>
                <span class="header-bar"></span>
                <a href="#" class="search_btn">
                    <img src="/Hangeulum/image/funmain_image/enlargement.png" alt="enlargement.jpg">
                </a>
            </div>
        </div>
	</div> <!-- header1 끝 -->
	
	<div class="header2"> 
		<div class="container">
			<div class="menu2">
				<ul>
	                <li><a href="/Hangeulum/funding/fun_main">전체 펀딩</a></li>
	                <li><a href="">펀딩 후기</a></li>
	            </ul>
			</div> <!-- menu2 끝 -->
		</div> <!-- container 끝 -->
	</div> <!-- header2 끝 -->
	
	<!-- 슬라이드 -->
		<div id="carouselExampleIndicators" class="carousel slide"
			data-bs-ride="carousel">
			<ol class="carousel-indicators">
				<li data-bs-target="#carouselExampleIndicators" data-bs-slide-to="0"
					class="active"></li>
				<li data-bs-target="#carouselExampleIndicators" data-bs-slide-to="1"></li>
				<li data-bs-target="#carouselExampleIndicators" data-bs-slide-to="2"></li>
			</ol>
			<div class="carousel-inner">
				<div class="carousel-item active">
					<img src="/Hangeulum/image/funmain_image/main1.png"
						class="d-block w-100" width="1800" height="300" alt="...">
				</div>
				<div class="carousel-item">
					<img src="/Hangeulum/image/funmain_image/main2.png"
						class="d-block w-100" width="1800" height="300" alt="...">
				</div>
				<div class="carousel-item">
					<img src="/Hangeulum/image/funmain_image/main3.png"
						class="d-block w-100" width="1800" height="300" alt="...">
				</div>
			</div>
			<a class="carousel-control-prev" href="#carouselExampleIndicators"
				role="button" data-bs-slide="prev"> <span
				class="carousel-control-prev-icon" aria-hidden="true"></span> <span
				class="visually-hidden">Previous</span>
			</a> <a class="carousel-control-next" href="#carouselExampleIndicators"
				role="button" data-bs-slide="next"> <span
				class="carousel-control-next-icon" aria-hidden="true"></span> <span
				class="visually-hidden">Next</span>
			</a>
		</div> <!-- 슬라이드 끝 -->
	
	<div class="category">
<!-- 		<ul class="category_exercise" role="tablist" aria-label="활동 카테고리">
			<li class="FundingHomeCategory_item" role="presentation">
				<input type="radio" id="fundingHome_All" name="funding" role="tab" aria-controls="fundingHome_tab" class="fundingHomeCategory_input">
					<label for="fundingHome_tabAll" class="FundingHomeCategory_label">전체</label>
			</li>
			<li class="FundingHomeCategory_item" role="presentation">
				<input type="radio" id="fundingHome_2" name="funding" role="tab" aria-controls="fundingHome_tab" class="fundingHomeCategory_input">
					<label for="fundingHome_tab2" class="FundingHomeCategory_label">일자리 창출</label>
			</li>
			<li class="FundingHomeCategory_item" role="presentation">
				<input type="radio" id="fundingHome_3" name="funding" role="tab" aria-controls="fundingHome_tab" class="fundingHomeCategory_input">
					<label for="fundingHome_tab3" class="FundingHomeCategory_label">공정 무역</label>
			</li>				
			<li class="FundingHomeCategory_item" role="presentation">
				<input type="radio" id="fundingHome_4" name="funding" role="tab" aria-controls="fundingHome_tab" class="fundingHomeCategory_input">
					<label for="fundingHome_tab4" class="FundingHomeCategory_label">친환경</label>
			</li>
			<li class="FundingHomeCategory_item" role="presentation">
				<input type="radio" id="fundingHome_5" name="funding" role="tab" aria-controls="fundingHome_tab" class="fundingHomeCategory_input">
					<label for="fundingHome_tab5" class="FundingHomeCategory_label">기부</label>
			</li>
		</ul> -->
		</div>
		
<!-- 	<div class="dropdown">
		<label for="selectbox"></label>
			<select id="selectbox">
				<option value="option1">전체</option>
	            <option value="option2">진행중</option>
	            <option value="option3">종료</option>
			</select>
            <select id="selectbox">
	            <option value="option1">최신 순</option>
	            <option value="option2">참여금액 순</option>
	            <option value="option3">참여율 순</option>
	            <option value="option4">종료임박 순</option>
        	</select>
		</div> 드롭다운 끝
	<div></div>
	</div> 카테고리 끝 -->
	
	<div class="category">
	  <div class="dropdown">
	  
	    <label for="selectbox1"></label>
	    <select id="selectbox1">
	      <option value="option1">전체</option>
	      <option value="option2">진행중</option>
	      <option value="option3">종료</option>
	    </select>
	    <label for="selectbox2"></label>
	    <select id="selectbox2">
		    <option value="option1" th:href="@{/funList_last}">최신 순</option>
		    <option value="option2" th:href="@{/funList_rewardPrice}">참여금액 순</option>
	      <option value="option3">참여율 순</option>
	      <option value="option4">종료임박 순</option>
	    </select>
	    <a href="/Hangeulum/funding/fun_writeform" class="button">글쓰기로 가기</a>
	  </div>
	  <div>
	  </div>
	</div>
	 
		<div class="content">
		  <div class="container text-center">
		    <div class="row" id="funding-list">
		    </div> <!-- row -->
		  </div> <!-- container text-center -->
		</div> <!-- content 끝 -->
		
		<!--Footer-->
		<div class="footer">
		    <div class="footer_menu">
		        <!--<div class="footer_menu_left"></div>-->
		        <div class="footer_menu_right">
		            <ul>
		                <li style="font-weight: 700; color: #202020; padding-right: 25px;">한걸음 안내</a></li>
		                <li><a href="">공지사항</a></li>|&nbsp;&nbsp;
		                <li><a href="">이용약관</a></li>|&nbsp;&nbsp;
		                <li><a href="">고객센터</a></li>|&nbsp;&nbsp;
		                <li><a href="">기업제휴 문의</a></li>|&nbsp;&nbsp;
		                <li><a href="">FAQ</a></li>
		            </ul>
		        </div>
		    </div>
		
		    <div class="footer_info_wrap">
		        <div class="footer_info_inner">
		            <!--<div class="footer_info_left"></div>-->
		            <div class="footer_info_right">
		                <ul class="footer_info_list">
		                    <li class="footer_info_item">재단법인 한걸음</li>
		                    <li class="footer_info_item">대표자: 이정규, 김지혜, 김현지, 엄태훈, 이소훈, 최도담</li>
		                    <li class="footer_info_item">주소 : 서울시 강남구 역삼동 819-3 삼오빌딩 5-9층</li>
		                    <li class="footer_info_item">대표전화 : 02-3486-9600</li>
		                    <li class="footer_info_item">이메일 : bitcamp601@naver.com</li>
		                    <li class="footer_info_item">사업자등록번호 : 220-12-34567</li>
		                    <li class="footer_info_item">통신판매업신고 : 제2023-서울역삼-601호</li>
		                    <br>
		                    <small class="footer_info_notice">(재)한걸음은 프로젝트의 당사자가 아니므로, 프로젝트 진행 및 거래 등에 대한 책임은 해당 프로젝트의 개설자에게 있습니다.</small>
		                    <div class="footer_info_copyright"><a href="https://www.naver.com/" class="footer_info_naver"><img src="/Hangeulum/image/funmain_image/logo1.png" width="70" height="45" alt="한걸음"></a> Copyright &copy; StepWithUs Corp. All Rights Reserved.</div>
		                </ul>
		            </div>
		        </div>
		    </div>
		</div>
	<!--Footer End-->
</div> <!-- 전체 영역 끝 -->
<script type="text/javascript" src="http://code.jquery.com/jquery-3.6.4.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4" crossorigin="anonymous"></script>
<script type="text/javascript" src="/Hangeulum/js/fun_main.js"></script>
</body>
</html>