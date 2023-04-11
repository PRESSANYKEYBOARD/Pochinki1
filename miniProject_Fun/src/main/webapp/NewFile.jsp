<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">

	div {
		display: block;
	}

   ul { /* 내가 추가한 것.  */
	    display: block;
	    list-style-type: disc;
	    margin-block-start: 1em;
	    margin-block-end: 1em;
	    margin-inline-start: 0px;
	    margin-inline-end: 0px;
	    padding-inline-start: 40px;
	    justify-content: center;
   	}
   
  	.blind, input[type="radio"] {
	  	position: absolute;
	    width: 1px;
	    height: 1px;
	    clip: rect(0px, 0px, 0px, 0px);
	    overflow: hidden;
	    margin: -1px;
	}
	
	.FundingHeader_wrap {
	    position: relative;
	    z-index: 1;
	    min-height: 50px;
	    margin-bottom: -1px;
	    padding: 0 5px;
	    border-bottom: 1px solid rgba(0,0,0,.12);
	    text-align: center;
	}
	
	.FundingHeader_item {
		display: inline-block;
    	font-size: 0;
	}
	
	.FundingHeader_link {
		display: block;
    	padding: 0 22px;
	}
	
	.FundingHeader_text {
		display: inline-block;
	    position: relative;
	    padding: 16px 3px 15px;
	    /* font-family: NanumSquareWebFont,dotum,Sans-serif; */
	    font-size: 17px;
	    line-height: 18px;
	    color: #000;
	}
	
	a {
		text-decoration: none;
		color: inherit;
	}

	.FundingSlide_wrap {
		display: inline-block;
	    position: relative;
	    padding: 16px 3px 15px;
	    /* font-family: NanumSquareWebFont,dotum,Sans-serif; */
	    font-size: 17px;
	    line-height: 18px;
	    color: #000;
	}
	
</style>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-KK94CHFLLe+nY2dmCWGMq91rCGa5gtU4mk92HdvYe+M/SXH301p5ILy+dN9+nJOZ" crossorigin="anonymous">
</head>
<body>
<nav class="navbar sticky-top navbar-expand-sm navbar bg-white">
  <div class="container justify-content-center">
    <a class="navbar-brand" href="#"><img width="120" height="70" src="./images/한걸음.jfif"><img></a>
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse flex-grow-0" id="navbarSupportedContent">
      <ul class="navbar-nav me-auto mb-2 mb-lg-0">
        <li class="nav-item">
          <a class="nav-link active" aria-current="page" href="#">기부</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="#">펀딩</a>
        </li>
        
         <li class="nav-item">
          <a class="nav-link" href="#">일자리</a>
        </li>
      
        <li class="nav-item">
          <a class="nav-link">고객지원</a>
        </li>
      </ul>
      <form class="d-flex" role="search">
        <input class="form-control me-2" type="search" placeholder="Search" aria-label="Search">
        <button class="btn btn-outline-success" type="submit">Search</button>
      </form>
    </div>
  </div>
</nav>

<div role="main" id="content" class="content">
	<div>
		<div class="content_2">
			<ul class="FundingHeader_wrap" role="menubar">
			  <li class="FundingHeader_item" role="presentation">
			    <a class="FundingHeader_link" href="#" role="tab" aria-selected="true">
			    	<span class="FundingHeader_text">전체 펀딩</span>
			    </a>
			  </li>
			  <li class="FundingHeader_item" role="presentation">
			    <a class="FundingHeader_link" href="#" role="tab" aria-selected="false">
			    	<span class="FundingHeader_text">편딩 후기</span>
			    </a>
			  </li>
			</ul>
		
			<!-- 슬라이드  -->
			<div class="FundingSlide_wrap">
				<h2 class="blind">펀딩 배너 리스트</h2>
					<div class="FundingSlideBanner">
						<div class="slick-slider slick-initialized" dir="ltr">
						
						
						</div>
					
					</div>
			
			</div>
			
			
			<ul class="FundingCategory_wrap" role="tablist">
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
				<li class="FundingHomeCategory_item" role="presentation">
					<input type="radio" id="fundingHome_6" name="funding" role="tab" aria-controls="fundingHome_tab" class="fundingHomeCategory_input">
						<label for="fundingHome_tab6" class="FundingHomeCategory_label">작은가게</label>
				</li>
				<li class="FundingHomeCategory_item" role="presentation">
					<input type="radio" id="fundingHome_7" name="funding" role="tab" aria-controls="fundingHome_tab" class="fundingHomeCategory_input">
						<label for="fundingHome_tab7" class="FundingHomeCategory_label">미디어</label>
				</li>
				<li class="FundingHomeCategory_item" role="presentation">
					<input type="radio" id="fundingHome_8" name="funding" role="tab" aria-controls="fundingHome_tab" class="fundingHomeCategory_input">
						<label for="fundingHome_tab8" class="FundingHomeCategory_label">창작자</label>
				</li>
			</ul>
			
			<section id="Funding_Home_Panel" class="FundingHomeContent" role="tabpanel">
				<h3 class="blind">펀딩 목록</h3>
					<div class="FundingHomeContent_filter">
						<div class="Funding_Home_Selectlist">
							<button class="selectArea_Button" aria-haspopup="listbox" aria-expanded="false"></button>
								<ul class="Select_list" role="listbox" aria-hidden="true">
									<li role="option" class="SelectItem" tabindex="0" data-value="ALL" aria-selected="true">
										<span class="ListText">전체</span>
									</li>
									<li role="option" class="SelectItem" tabindex="0" data-value="COMING" aria-selected="false">
										<span class="ListText">진행중</span>
									</li>
									<li role="option" class="SelectItem" tabindex="0" data-value="END" aria-selected="false">
										<span class="ListText">종료</span>
									</li>
								</ul>
						</div>
						<div class="Funding_Home_SelectWrap">
							<button class="selectArea_Button" aria-haspoup="listbox" aria-expanded="false"></button>
								<ul class="SelectArea_Button" role="listbox" aria-hidden="true">
									<li role="option" class="SelectArea_Select" tabindex="0" data-value="LAST" aria-selected="true">
										<span class="SelectText">최신 순</span>
									</li>
								</ul>
								<ul class="SelectArea_Button" role="listbox" aria-hidden="true">
									<li role="option" class="SelectArea_Select" tabindex="0" data-value="AMOUNT" aria-selected="false">
										<span class="SelectText">참여금액 순</span>
									</li>
								</ul>
								<ul class="SelectArea_Button" role="listbox" aria-hidden="true">
									<li role="option" class="SelectArea_Select" tabindex="0" data-value="RATE" aria-selected="false">
										<span class="SelectText">참여율 순</span>
									</li>
								</ul>
								<ul class="SelectArea_Button" role="listbox" aria-hidden="true">
									<li role="option" class="SelectArea_Select" tabindex="0" data-value="END_APP" aria-selected="false">
										<span class="SelectText">종료 임박 순ㄴ</span>
									</li>
								</ul>
						</div>
					</div>
				<ul class="FundingHomeContent">
					<li class="FundingHomeContent_item">끼에엨</li>
					<li class="FundingHomeContent_item">끼에엨</li>
					<li class="FundingHomeContent_item">끼에엨</li>
					<li class="FundingHomeContent_item">끼에엨</li>
					<li class="FundingHomeContent_item">끼에엨</li>
					<li class="FundingHomeContent_item">끼에엨</li>
					<li class="FundingHomeContent_item">끼에엨</li>
					<li class="FundingHomeContent_item">끼에엨</li>
					<li class="FundingHomeContent_item">끼에엨</li>
					<li class="FundingHomeContent_item">끼에엨</li>
					<li class="FundingHomeContent_item">끼에엨</li>
					<li class="FundingHomeContent_item">끼에엨</li>
				</ul>
				<button type="button" class="FundingHome_content_more">"더보기"
					<span class="FundingHome_more"></span>
				</button>
			</section>
		</div>
	</div>
</div>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4" crossorigin="anonymous"></script>
</body>
</html>