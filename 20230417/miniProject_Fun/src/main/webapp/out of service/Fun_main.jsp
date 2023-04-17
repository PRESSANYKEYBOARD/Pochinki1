<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">

<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">

	.wrap { /* 전체 요소. */
    	max-width: 1140px;
    	margin: 0 auto;
	}

	article, aside, details, figcaption, figure, footer, header, main, menu, header, section, summary {
   		display: block;
	}
	
	body, button, input, select, table, textarea {
	    /* font-family: NanumBarunGothic,dotum,Sans-serif; */
	    font-size: 14px;
	    line-height: 19px;
	    color: #202020;
	}
	
	body {
	    position: relative;
	    -webkit-font-smoothing: antialiased;
	}
	
	body, button, dd, dl, dt, fieldset, form, h1, h2, h3, h4, h5, h6, input, legend, li, ol, p, select, table, td, textarea, th, ul {
	    margin: 0;
	    padding: 0;
	}
	
	#header { /* 상단 부분 시작 */
	    border-bottom: 1px solid #ddd;
	    text-decoration: none;
	}
	
	#header .container{
	    display: flex;
	    align-items: center;
	}
	
	#header .container > div.logo h1{
	   margin: 0;
	}
	
	#header .container > div.logo a{
	    margin: 0;
	    font-size: 30px;
	    font-weight: bold;
	    color: yellowgreen;  
	} 
	
	#header .container > div.menu{
	    flex: 1;
	}
	
	#header .container > div.menu ul {
	   display: flex;
	   justify-content: center;
	   list-style: none;
	   margin: 0;
	   padding: 0;
	}
	
	#header .container > div.menu ul li{
	   margin-left: 50px;
	   margin-right: 30px;
	}
	
	#header .container > div.menu ul li a {
	    display: block;
	    padding: 20px 0;
	    font-size: 20px;
	    font-weight: 800;
	    color:black
	} /* 상단 영역 종료 */
	
	.container { /* 본문 */
		display: flex;
	    justify-content: center;
	    list-style: none;
	    margin: 0 auto;
	}
	
	*, :after, :before {
    	box-sizing: border-box;
	}
	
	.content {
	    position: relative;
	    z-index: 20;
	}
	
	h3 {
	    display: block;
	    font-size: 1.17em;
	    margin-block-start: 1em;
	    margin-block-end: 1em;
	    margin-inline-start: 0px;
	    margin-inline-end: 0px;
	    font-weight: bold;
	}

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
   
  	.blind, input[type=checkbox], input[type=radio] {
	    overflow: hidden;
	    position: absolute;
	    width: 1px;
	    height: 1px;
	    margin: -1px;
	    clip: rect(0 0 0 0);
	}
	
	fieldset, img {
    	border: 0;
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
    	padding: 0 20px;
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
	
	.slick-list, .slick-slider {
	    position: relative;
	    display: block;
	}
	
	.FundingCategory_wrap {
	    width: 1140px;
	    margin: 54px auto 0px;
	    background-color: rgb(255, 255, 255);
	    text-align: center;
	}
	
	.FundingHomeCategory_item { /* 카테고리  */
	    display: inline-block;
	    position: relative;
	    margin-top: 6px;
	    /* 새로 추가한 코드 */
	    transform: translateX(-12%);
	}

	.FundingHomeCategory_label { /* 카테고리 */
		display: block;
	    min-width: 130px;
	    padding: 10px 11px 9px;
	    border: 1px solid #cdcdcd;
	    border-radius: 4px;
	    font-size: 16px;
	    letter-spacing: -.3px;
	    text-align: center;
	}
	
	button, input[type=button], input[type=checkbox]+label, input[type=radio]+label, input[type=reset], input[type=submit] {
    	cursor: pointer;
	}
	
	.FundingHomeContent { /* 리스트부터 더보기까지 메인 */
		max-width: 1140px;
  		padding-bottom: 60px;
	    margin: 0 auto;
	}
	
	.FundingHomeContent_item {
		float: left;
	    width: 25%;
	    padding: 0 0 24px 24px;
	}
	
	.FundingHomeContent_filter { /* 리스트 */
	    margin-top: 43px;
	    margin-bottom: 10px;
	    text-align: right;
	}
	
	.FundingHomeContent_selectWrap { /* 리스트 */
	    display: inline-block;
	    position: relative;
	    vertical-align: top;
	}
	
	.SelectArea_selectArea { /* 리스트 선택 감싸는 영역?  */
		margin-left: 7px;
	}
	
	.FundingCard_img {
		vertical-align: top;
	}
	
	.FundingCard_title {
		padding-right: 66px;
	}
	
	.FundingCard_per {
	    position: absolute;
	    top: 450px;
	    right: 16px;
	    width: 55px;
	    height: 55px;
	    border: 1px solid #0f92e0;
	    border-radius: 50%;
	    font-family: NanumSquareWebFont,dotum,Sans-serif;
	    font-size: 15px;
	    line-height: 55px;
	    letter-spacing: -.2px;
	    text-align: center;
	    color: #0091ff;
	}
	
	.selectArea_Button {
	    position: relative;
	    width: 122px;
	    padding: 2px 39px 0 13px;
	    border: 1px solid #e3e3e3;
	    background-color: #fff;
	    line-height: 32px;
	    text-align: left;
	    white-space: nowrap;
	    color: #333;
	}
	
	.card-img-top {
	  height: 400px;
	  object-fit: cover;
	}
	
	.FundingCard_orgai {
		overflow: hidden;
	    text-overflow: ellipsis;
	    white-space: nowrap;
	    margin-top: 8px;
	    font-size: 15px;
	    color: #828282;
	    letter-spacing: -.5px;
	}
	
	.FundingCard_fig {
		display: table;
	    position: absolute;
	    bottom: 0;
	    left: 0;
	    width: 267px;
	    height: 41px;
	    border-top: 1px solid rgba(0,0,0,.05);
	}
	
	.FundingCard_date {
		display: table-cell;
	    padding: 1px 0 0 20px;
	    font-size: 14px;
	    letter-spacing: -.5px;
	    color: #828282;
	    vertical-align: middle;
	}
	
	.FundingCard_amount {
	    display: table-cell;
	    padding-right: 18px;
	    font-size: 16px;
	    color: #333;
	    letter-spacing: -.2px;
	    text-align: right;
	    vertical-align: middle;
	}
	
	.FundingCard_credit {
		position: relative;
	    height: 163px;
	    padding: 21px 20px 43px;
	}
	
	.FundingHome_content_more { /* 더보기 버튼 */
		width: 100%;
	    height: 53px;
	    margin-top: 30px;
	    border: 1px solid rgba(0,0,0,.07);
	    background-color: #f6f6f6;
	    font-size: 15px;
	    line-height: 1.13;
	    text-align: center;
	    overflow-anchor: none;
	}
	
	.Select_list {
	    overflow-y: auto;
	    position: absolute;
	    top: 35px;
	    right: 0;
	    left: 0;
	    z-index: 30;
	    max-height: 189px;
	    padding: 12px 0;
	    border: 1px solid #202020;
	    background-color: #fff;
	    text-align: left;
	    color: #333;
	    display: none;
	}
	
	.Select_list.show {
  		display: block;
	}
	
	.SelectItem {
	    display: block;
	    padding: 9px 14px;
	    outline: none;
	    line-height: 17px;
	    text-align: left;
	    cursor: pointer;
	}
	
	strong {
    	font-weight: bold;
	}
	
	.footer { /* 하단 */
		position: relative;
		z-index: 10;
		margin-top: 52px;
		padding-top: 52px;
		border-top: 1px solid #e0e0e0;
	    background-clip: content-box;
	    background-color: #f6f6f6;
	}
	
	.service_info {
	    position: relative;
    	width: 1140px;
   		margin: -52px auto 0;
    	padding: 16px 0 0;
	}
	
	.select {
		float: right;
	}
	
	.row {
	    display: -ms-flexbox;
	    display: flex;
	    -ms-flex-wrap: wrap;
	    flex-wrap: wrap;
	    margin-right: -15px;
	    margin-left: -15px;
	}
	
</style>
</head>
<body>
<div id="wrap" class="wrap">
  <div id="header">
     <div class="container">
        <div class="logo"><a href =" img ">한걸음</a></div>
        <div class="menu">
            <ul>
                <li><a href="">기부</a></li>
                <li><a href="">펀딩</a></li>
                <li><a href="">고객센터</a></li>
            </ul>
        </div>
    
        <div class="header-r">
            <a href="#" class="login_btn">로그인</a>
            <a href="#" class="search_btn">검색</a>
        </div>
      </div> <!-- container  -->
	</div> <!-- header  -->

	<!-- 전체 펀딩 영역 시작 -->
	<div role="main" id="content" class="content">
		<div>
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
					<img src="./image/1.jpg"
						class="d-block w-100" width="1800" height="300" alt="...">
				</div>
				<div class="carousel-item">
					<img src="./image/2.jpg"
						class="d-block w-100" width="1800" height="300" alt="...">
				</div>
				<div class="carousel-item">
					<img src="./image/2.jpg"
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
		</div>
		
		<!-- 카테고리 -->
			<ul class="FundingCategory_wrap" role="tablist" aria-label="활동 카테고리">
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
		
		<!-- 본문 영역 시작 -->
		<!-- 본문 1140 x 2102 -->
		<section id="Funding_Home_Panel" class="FundingHomeContent" role="tabpanel">
			<h3 class="blind">펀딩 목록</h3>
				<div class="FundingHomeContent_filter">
					<div class="FundingHomeContent_selectWrap">
					    <div class="SelectArea_selectArea">
					        <button class="selectArea_Button" aria-haspopup="listbox" aria-expanded="false">전체</button>
					        <ul id="listbox1" class="Select_list" role="listbox" aria-hidden="true">
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
				   </div> <!-- FundingHomeContent_selectWrap -->
				    
				   <div class="FundingHomeContent_selectWrap">
				      <div class="SelectArea_selectArea">
				        <button class="selectArea_Button" aria-haspopup="listbox" aria-expanded="false">최신 순</button>
				        <ul id="listbox2" class="Select_list" role="listbox" aria-hidden="true">
				            <li role="option" class="SelectArea_Select" tabindex="0" data-value="LAST" aria-selected="true">
				                <span class="ListText">최신 순</span>
				            </li>
				            <li role="option" class="SelectArea_Select" tabindex="0" data-value="AMOUNT" aria-selected="false">
				                <span class="ListText">참여금액 순</span>
				            </li>
				            <li role="option" class="SelectArea_Select" tabindex="0" data-value="RATE" aria-selected="false">
				                <span class="ListText">참여율 순</span>
				            </li>
				            <li role="option" class="SelectArea_Select" tabindex="0" data-value="END_APP" aria-selected="false">
				                <span class="ListText">종료 임박 순</span>
				            </li>
				        </ul>
				      </div> <!-- SelectArea_selectArea -->
				    </div> <!-- FundingHomeContent_selectWrap -->
				  </div> <!-- FundingHomeContent_filter -->
				  
<!-- Grid start  -->
      <!-- Grid는 총 컬럼의 개수가 12개이다 -->
		      <div class="container text-center overflow-hidden">
		        <div class="row mx-2">
		          <div class="col-md-4 col-sm-6" > <!--  중간크기 화면까지는 제대로 3개씩 보여줌 보이다가 더 작은 화면에서는 사진이 1개로 보여짐 //모든 div를 이거로 바꿔줘야함//화면의 너비에 따라 바꿔주면 됨 -->
		            <div class="card" style="width: 18rem;">
			           	<img src="https://t1.kakaocdn.net/friends/prod/product/20230307100106001_8809922502072_AW_00.jpg">
			              <div class="card-body">
			                <h5 class="card-title">제목</h5>
			                <p class="card-text">내용</p>
			                   <a href="#" class="btn btn-primary">Go somewhere</a>
			                 </div>
		            	</div>
		            </div>
		          <!-- *************************  -->
		          <div class="col-md-4 col-sm-6">
		           <div class="card" style="width: 18rem;">
		        <img src="https://t1.kakaocdn.net/friends/prod/product/20230307100106001_8809922502072_AW_00.jpg">
		           <div class="card-body">
		             <h5 class="card-title">제목</h5>
		             <p class="card-text">내용</p>
		                <a href="#" class="btn btn-primary">Go somewhere</a>
		              </div>
		         </div>
		         </div>
		          <!-- *************************   반응형으로 크기에 따라 사진이 자동 조절되어서 보임--> 
		          <div class="col-md-4 col-sm-6"> 
		           <div class="card" style="width: 18rem;">
		        <img src="https://t1.kakaocdn.net/friends/prod/product/20230307100106001_8809922502072_AW_00.jpg">
		           <div class="card-body">
		             <h5 class="card-title">제목</h5>
		             <p class="card-text">내용</p>
		                <a href="#" class="btn btn-primary">Go somewhere</a>
		           </div>
		
		         </div>
		         </div>
		
		          <!-- *************************  -->
		          <div class="col-md-4 col-sm-6">
		            <div class="card" style="width: 18rem;">
		         <img src="https://t1.kakaocdn.net/friends/prod/product/20230307100106001_8809922502072_AW_00.jpg">
		            <div class="card-body">
		              <h5 class="card-title">제목</h5>
		              <p class="card-text">내용</p>
		                 <a href="#" class="btn btn-primary">Go somewhere</a>
		               </div>
		          </div>
		          </div>
		          
		             <!-- *************************  -->
		             <div class="col-md-4 col-sm-6">
		                <div class="card" style="width: 18rem;">
		             <img src="https://t1.kakaocdn.net/friends/prod/product/20230307100106001_8809922502072_AW_00.jpg">
		                <div class="card-body">
		                  <h5 class="card-title">제목</h5>
		                  <p class="card-text">내용</p>
		                     <a href="#" class="btn btn-primary">Go somewhere</a>
		                   </div>
		              </div>
		              </div>
		
		                 <!-- *************************  -->
		          <div class="col-md-4 col-sm-6">
		            <div class="card" style="width: 18rem;">
		         <img src="https://t1.kakaocdn.net/friends/prod/product/20230307100106001_8809922502072_AW_00.jpg">
		            <div class="card-body">
		              <h5 class="card-title">제목</h5>
		              <p class="card-text">내용</p>
		                 <a href="#" class="btn btn-primary">Go somewhere</a>
		               </div>
		          </div>
		          </div>
		
		
		             <!-- *************************  -->
		             <div class="col-md-4 col-sm-6">
		                <div class="card" style="width: 18rem;">
		             <img src="https://t1.kakaocdn.net/friends/prod/product/20230307100106001_8809922502072_AW_00.jpg">
		                <div class="card-body">
		                  <h5 class="card-title">제목</h5>
		                  <p class="card-text">내용</p>
		                     <a href="#" class="btn btn-primary">Go somewhere</a>
		                   </div>
		              </div>
		              </div>
		
		                 <!-- *************************  -->
		          <div class="col-md-4 col-sm-6">
		            <div class="card" style="width: 18rem;">
		         <img src="https://t1.kakaocdn.net/friends/prod/product/20230307100106001_8809922502072_AW_00.jpg">
		            <div class="card-body">
		              <h5 class="card-title">제목</h5>
		              <p class="card-text">내용</p>
		                 <a href="#" class="btn btn-primary">Go somewhere</a>
		               </div>
		          </div>
		          </div>
		
		             <!-- *************************  -->
		             <div class="col-md-4 col-sm-6">
		                <div class="card" style="width: 18rem;">
		             <img src="https://t1.kakaocdn.net/friends/prod/product/20230307100106001_8809922502072_AW_00.jpg">
		                <div class="card-body">
		                  <h5 class="card-title">제목</h5>
		                  <p class="card-text">내용</p>
		                     <a href="#" class="btn btn-primary">Go somewhere</a>
		                   </div>
		              </div>
		              </div>
		        </div>
		      </div>

      <!-- Grid end  -->

			

			
	</section> <!-- 본문 영역 종료  -->

				  
				
				  
			</div> 
		</div> <!-- FundingHomeContent_selectWrap -->

      <!-- Grid end  -->
      

				


					<button type="button" class="FundingHome_content_more">더보기
							<span class="FundingHome_more"></span>
					</button>
				</div> <!-- content 직전 끝 -->
				<div class="footer">
					<div class="service_info">
					
					
					
					
					</div> <!-- service_info -->
				</div> <!-- footer  -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4" crossorigin="anonymous"></script>
<script type="text/javascript">
function toggleList(listbox) {
	  const expanded = listbox.getAttribute('aria-expanded') === 'true';
	  listbox.setAttribute('aria-expanded', !expanded);
	  listbox.classList.toggle('show');
	}

	const selectButtons1 = document.querySelectorAll('.SelectArea_selectArea')[0].querySelectorAll('.selectArea_Button');
	const selectButtons2 = document.querySelectorAll('.SelectArea_selectArea')[1].querySelectorAll('.selectArea_Button');

	selectButtons1.forEach(function(button) {
	  const listbox = button.nextElementSibling;
	  button.addEventListener('click', function() {
	    toggleList(listbox);
	  });
	});

	selectButtons2.forEach(function(button) {
	  const listbox = button.nextElementSibling;
	  button.addEventListener('click', function() {
	    toggleList(listbox);
	  });
	});
</script>
</body>
</html>