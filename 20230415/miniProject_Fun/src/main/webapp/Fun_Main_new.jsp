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

.category { /* 하위 메뉴 */
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

.blind, input[type=checkbox], input[type=radio] { /* 체크 속성 없애기 */
    overflow: hidden;
    position: absolute;
    width: 1px;
    height: 1px;
    margin: -1px;
    clip: rect(0 0 0 0);
}

button, input[type=button], input[type=checkbox]+label, input[type=radio]+label, input[type=reset], input[type=submit] {
    cursor: pointer;
} /* 버튼 속성 추가 */

.dropdown { /* 드롭다운 리스트 */
    margin-bottom: 20px; /* 여백 주기 */
    display: inlline-block;
    position: relative;
    vertical-align: top;
    text-align: right;
    padding-right: 80px;
}

.selectbox { /* 셀렉트 박스 굳이 적용 안해도 될 것 같긴 함 */
	position: static;
    float: right;
    margin-top: 30px;
    background-color: white;
    width: fit-content;
    height: 40px;
    color: black;
}

.content { /* 본문 영역 */
	width: 1140px;
    padding-bottom: 60px;
    margin: 0 auto;
}

.content_list {
    border-bottom: 1px solid #ddd;
    position: fixed;
    width: 100%;
    background-color: white;
    Z-index: 1000;
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
	             		<img src="https://t1.kakaocdn.net/friends/prod/product/20230307100106001_8809922502072_AW_00.jpg">
	                	<div class="card-body">
	                  			<h5 class="card-title">제목</h5>
	                  			<p class="card-text">내용</p>
	                     		<a href="#" class="btn btn-primary">Go somewhere</a>
	               		</div>
	            	</div>
	          	</div>
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
		</div> <!-- content 끝 -->
	<div class="footer"></div> <!-- 하단 끝 -->
</div> <!-- 전체 영역 끝 -->

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