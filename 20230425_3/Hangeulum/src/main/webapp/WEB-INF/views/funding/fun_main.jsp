<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="../css/fun_main.css">
<meta name="viewport" content="width=device-width,initial-scale=1">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<!--Header Start-->

<a href="../funding/fun_writeform">글쓰기로가기</a>

<div>
    <div id="header">
        <div class="headerContent">
            <div class="logo"><a href ="#"></a></div>
            <img src="../image/funmain_image/logo_main.png" alt="로고" width="250" height="60">
            <div class="menu">
                <ul>
                    <li><a href="">기부</a></li>
                    <li><a href="">펀딩</a></li>
                    <li><a href="">고객센터</a></li>
                </ul>
            </div>
    
            <div class="header-r">
                <a href="#" class="login_btn">로그인</a>
                <span class="header-bar"></span>
                <a href="#" class="search_btn">
                    <img src="../image/funmain_image/enlargement.png" alt="enlargement.jpg">
                </a>
            </div>
        </div>
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
					<img src="../image/funmain_image/main1.png"
						class="d-block w-100" width="1800" height="300" alt="...">
				</div>
				<div class="carousel-item">
					<img src="../image/funmain_image/main2.png"
						class="d-block w-100" width="1800" height="300" alt="...">
				</div>
				<div class="carousel-item">
					<img src="../image/funmain_image/main3.png"
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
		<ul class="category_exercise" role="tablist" aria-label="활동 카테고리">
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
		</ul>
		
	<div class="dropdown">
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
		</div> <!-- 드롭다운 끝 -->
	<div></div>
	</div> <!-- 카테고리 끝 -->
	
	<div class="content">
		<div class="container text-center">
	        <div class="row">
	             <div class="col-md-4 col-sm-6">
	                <div class="card" style="width: 18rem;">
	             		<img src="../image/fun_image/fun_card1.png" class="card-img-top" alt="...">
	                	<div class="card-body">
	                  			<h5 class="card-title">'가비지타임' 단행본 15권과 굿즈</h5>
	                  			<p class="card-text">네이버 웹툰 X 가비지 타임</p>
	                     		<a href="#" class="btn btn-primary">펀딩 참여하기</a>
	               		</div>
	               		<ul class="list-group list-group-flush">
					    	<li class="list-group-item">
					    	<div class="progress">
							  <div class="progress-bar bg-success progress-bar-striped progress-bar-animated" role="progressbar" style="width: 10931%;" aria-valuenow="25" aria-valuemin="0" aria-valuemax="100">10931%</div>
							</div>
							</li>
					    	<li class="list-group-item"><span>0</span>원</li>
					  	</ul>
						<div class="card-footer">
					    	<span>0</span>일 남음
					  	</div>
	            	</div>
	          	</div>
	          	
	             <div class="col-md-4 col-sm-6">
	                <div class="card" style="width: 18rem;">
	             		<img src="../image/fun_image/fun_card2.png" class="card-img-top" alt="...">
	                	<div class="card-body">
                  			<h5 class="card-title">케플러와 함께 유기묘를 돕는 패션 아이템</h5>
                  			<p class="card-text">APOC X KEP1er</p>
                     		<a href="#" class="btn btn-primary">펀딩 참여하기</a>
	               		</div>
	            		<ul class="list-group list-group-flush">
					    	<li class="list-group-item">
					    	<div class="progress">
							  <div class="progress-bar bg-success progress-bar-striped progress-bar-animated" role="progressbar" style="width: 2697%;" aria-valuenow="25" aria-valuemin="0" aria-valuemax="100">2697%</div>
							</div>
							</li>
					    	<li class="list-group-item"><span>0</span>원</li>
					  	</ul>
						<div class="card-footer">
					    	<span>0</span>일 남음
					  	</div>
	            	</div>
	          	</div>
	          	
	             <div class="col-md-4 col-sm-6">
	                <div class="card" style="width: 18rem;">
	             		<img src="../image/fun_image/fun_card3.png">
	                	<div class="card-body">
                  			<h5 class="card-title">달콤하고 고소한 속초 대표 디저트 3선</h5>
                  			<p class="card-text">마므레 상점</p>
                     		<a href="#" class="btn btn-primary">펀딩 참여하기</a>
	               		</div>
	            		<ul class="list-group list-group-flush">
					    	<li class="list-group-item">
					    	<div class="progress">
							  <div class="progress-bar bg-info progress-bar-striped progress-bar-animated" role="progressbar" style="width: 80%;" aria-valuenow="25" aria-valuemin="0" aria-valuemax="100">80%</div>
							</div>
							</li>
					    	<li class="list-group-item"><span>0</span>원</li>
					  	</ul>
						<div class="card-footer">
					    	<span>0</span>일 남음
					  	</div>
	            	</div>
	          	</div>
	          	
	             <div class="col-md-4 col-sm-6">
	                <div class="card" style="width: 18rem;">
	             		<img src="../image/fun_image/fun_card4.png">
	                	<div class="card-body">
                  			<h5 class="card-title">땅의 시간을 지켜 익힌 육보 딸기와 딸기청</h5>
                  			<p class="card-text">농사펀드</p>
                     		<a href="#" class="btn btn-primary">펀딩 참여하기</a>
	               		</div>
	            		<ul class="list-group list-group-flush">
					    	<li class="list-group-item">
					    	<div class="progress">
							  <div class="progress-bar bg-danger progress-bar-striped progress-bar-animated" role="progressbar" style="width: 12%;" aria-valuenow="25" aria-valuemin="0" aria-valuemax="100">12%</div>
							</div>
							</li>
					    	<li class="list-group-item"><span>0</span>원</li>
					  	</ul>
						<div class="card-footer">
					    	<span>0</span>일 남음
					  	</div>
	            	</div>
	          	</div>
	          	
	             <div class="col-md-4 col-sm-6">
	                <div class="card" style="width: 18rem;">
	             		<img src="../image/fun_image/fun_card5.png">
	                	<div class="card-body">
	                  			<h5 class="card-title">영양 듬뿍 바삭한 반려견 전용 시리얼</h5>
	                  			<p class="card-text">애니먼</p>
	                     		<a href="#" class="btn btn-primary">펀딩 참여하기</a>
	               		</div>
	            		<ul class="list-group list-group-flush">
					    	<li class="list-group-item">
					    	<div class="progress">
							  <div class="progress-bar bg-warning progress-bar-striped progress-bar-animated" role="progressbar" style="width: 48%;" aria-valuenow="25" aria-valuemin="0" aria-valuemax="100">48%</div>
							</div>
							</li>
					    	<li class="list-group-item"><span>0</span>원</li>
					  	</ul>
						<div class="card-footer">
					    	<span>0</span>일 남음
					  	</div>
	            	</div>
	          	</div>
	          	
	             <div class="col-md-4 col-sm-6">
	                <div class="card" style="width: 18rem;">
	             		<img src="../image/fun_image/fun_card6.png">
	                	<div class="card-body">
                  			<h5 class="card-title">싱싱 그 자체! 갓 딴 강원도 아스파라거스</h5>
                  			<p class="card-text">프루떼</p>
                     		<a href="#" class="btn btn-primary">펀딩 참여하기</a>
	               		</div>
	            		<ul class="list-group list-group-flush">
					    	<li class="list-group-item">
					    	<div class="progress">
							  <div class="progress-bar bg-success progress-bar-striped progress-bar-animated" role="progressbar" style="width: 133%;" aria-valuenow="25" aria-valuemin="0" aria-valuemax="100">133%</div>
							</div>
							</li>
					    	<li class="list-group-item"><span>0</span>원</li>
					  	</ul>
						<div class="card-footer">
					    	<span>0</span>일 남음
					  	</div>
	            	</div>
	          	</div>
	          	
	             <div class="col-md-4 col-sm-6">
	                <div class="card" style="width: 18rem;">
	             		<img src="../image/fun_image/fun_card7.png">
	                	<div class="card-body">
                  			<h5 class="card-title">이 귀여움은 모꼬? 달콤한 마음을 보냇디</h5>
                  			<p class="card-text">보냇디</p>
                     		<a href="#" class="btn btn-primary">펀딩 참여하기</a>
	               		</div>
	            		<ul class="list-group list-group-flush">
					    	<li class="list-group-item">
					    	<div class="progress">
							  <div class="progress-bar progress-bar-striped progress-bar-animated" role="progressbar" style="width: 33%;" aria-valuenow="25" aria-valuemin="0" aria-valuemax="100">33%</div>
							</div>
							</li>
					    	<li class="list-group-item"><span>0</span>원</li>
					  	</ul>
						<div class="card-footer">
					    	<span>0</span>일 남음
					  	</div>
	            	</div>
	          	</div>
	          	
	             <div class="col-md-4 col-sm-6">
	                <div class="card" style="width: 18rem;">
	             		<img src="../image/fun_image/fun_card8.png">
	                	<div class="card-body">
                  			<h5 class="card-title">과즙팡팡! 재주문 부르는 제주 오렌지 청견</h5>
                  			<p class="card-text">농사펀드</p>
                     		<a href="#" class="btn btn-primary">펀딩 참여하기</a>
	               		</div>
	               		<ul class="list-group list-group-flush">
					    	<li class="list-group-item">
					    	<div class="progress">
							  <div class="progress-bar bg-success progress-bar-striped progress-bar-animated" role="progressbar" style="width: 2068%;" aria-valuenow="25" aria-valuemin="0" aria-valuemax="100">2068%</div>
							</div>
							</li>
					    	<li class="list-group-item"><span>0</span>원</li>
					  	</ul>
						<div class="card-footer">
					    	3일 남음
					  	</div>
	            	</div>
	          	</div>

	             <div class="col-md-4 col-sm-6">
	                <div class="card" style="width: 18rem;">
	             		<img src="../image/fun_image/fun_card9.png" class="card-img-top" alt="...">
	                	<div class="card-body">
                  			<h5 class="card-title">나와 지구에 무해한 비건 양치 세트</h5>
                  			<p class="card-text">쏘두위</p>
                     		<a href="#" class="btn btn-primary">펀딩 참여하기</a>
	               		</div>
	               		<ul class="list-group list-group-flush">
					    	<li class="list-group-item">
					    	<div class="progress">
							  <div class="progress-bar progress-bar-striped bg-info progress-bar-animated" role="progressbar" style="width: 95%;" aria-valuenow="25" aria-valuemin="0" aria-valuemax="100">95%</div>
							</div>
							</li>
					    	<li class="list-group-item"><span>0</span>원</li>
					  	</ul>
						<div class="card-footer">
					    	<span>0</span>일 남음
					  	</div>
	            	</div>
	          	</div>
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

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4" crossorigin="anonymous"></script>
<script type="text/javascript">
</script>
</body>
</html>