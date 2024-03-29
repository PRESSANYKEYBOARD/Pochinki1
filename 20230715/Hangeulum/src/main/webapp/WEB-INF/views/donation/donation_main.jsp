<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>   
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>Donation_main</title>
    
     <script type="text/javascript" src="http://code.jquery.com/jquery-3.6.4.min.js"></script>
    
    <script src="https://use.fontawesome.com/releases/v6.4.0/js/all.js"></script>
    <script src="https://code.jquery.com/jquery-3.76.3.min.js"
        integrity="sha256-pvPw+upLPUjgMXY0G+8O0xUf+/Im1MZjXxxgOcBQBXU=" crossorigin="anonymous"></script>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css"
        integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N" crossorigin="anonymous" />
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.min.js"
        integrity="sha384-+sLIOodYLS7CIrQpBjl+C7nPvqq+FbNUBDunl/OZv93DB7Ln/533i8e/mZXLi/P+" crossorigin="anonymous">
    </script>
    <script type="text/javascript" src="https://code.jquery.com/jquery-3.6.4.min.js"></script>

    <link rel="stylesheet" href="/Hangeulum/css/donation_main.css" />
</head>

<body>
    <!--Header Start-->
<div>
    <div id="header">
        <div class="headerContent">
            <div class="logo"><a href="/Hangeulum/"></a></div>
            <img src="/Hangeulum/image/logo.png" alt="로고" width="250" height="60">
            <div class="menu">
                <ul>
                    <li><a href="/Hangeulum/donation/donation_main">기부</a></li>
                    <li><a href="/Hangeulum/funding/fun_main">펀딩</a></li>
                    <li><a href="/Hangeulum/support/noticeList">고객센터</a></li>
                </ul>
            </div>
    
            <div class="header-r">
                <a href="#" class="login_btn">로그인</a>
                <span class="header-bar"></span>
                <a href="#" class="search_btn">
                    <img src="/Hangeulum/image/enlargement.png" alt="enlargement.png">
                </a>
            </div>
        </div>
    </div>
</div>
<!--Header End-->

<!-- 메뉴바2 -->
<div id="menubar">
	<div class="container">
        <div class="menu2">
            <ul>
                <li><a href="/Hangeulum/donation/donation_ing">진행중 모금함</a></li>
                <li><a href="">모금 후기</a></li>
            </ul>
        </div>
	</div>
</div>

<div id="test11" style="background: green;"></div>

<!-- 카테고리 -->
<input type="hidden" id="childrenViewSearch" value="아동">
<input type="hidden" id="adultViewSearch" value="어르신">
<input type="hidden" id="disabledViewSearch" value="장애인">

<!-- 카테고리 -->
<div id="content2">
    <div class="container">
        <div class="category">
            <ul>    
                <li>
                    <a class="category-link-total" href="#">
                        <span id="category-1"></span>
                         <div style="color:green;">
                        <i class="fas fa-heart fa-3x" ></i></div>
                        <p class="testPtag">전체 보기</p>
                    </a>
                </li>

                <li>
                   <a class="category-link-child" href="#" data-category="2">
                        <span id="category-2"></span>
                        <div style= color:green;>
                        <i class="fas fa-child fa-3x" ></i></div>
                        <p class="child">아동</p>
                    </a>
                </li>
                <li>
                    <a class="category-link-adult" href="#" data-category="3">
                        <span id="category-3"></span>
                        <div style= color:green;>
                            <i class="fa-solid fa-person-cane fa-3x"></i></div>
                        <p class="adult">어르신</p>
                    </a>
                </li>
                <li>
                     <a class="category-link-disabled" href="#" data-category="4">
                        <span id="category-4"></span>
                        <div style= color:green;>
                            <i class="fa-solid fa-wheelchair-move fa-3x"></i></div>
                        <p class="disabled">장애인</p>
                    </a>
                </li>
            </ul>
        </div>
    </div>
</div>

<!-- 오늘의 모금함  -->





<br/>
<br/>

    <div id="apply" style="padding-right: 100px; padding-left: -7px;">
        <div class="container">
            <div class="left_cont">
                <span class="smallbox">TODAY</span>
                <h2>오늘 함께한 기부금</h2>
            </div>
            <div class="right_cont">
                <div class="donation_line">
                    <p class="right_txt">
                        <span class="count">10,678<small class="unit">명이</small></span>
                        <span class="num">58,009,000<small class="unit">원을</small></span>
                        기부하였습니다.
                    </p>
                </div>
            </div>
        </div>
    </div>
</div>








<br/>
<br/>
<br/>



<!-- 진행 중 모금함 -->
	<div class="container">
    <div class="container-card"></div>
    </div>




    <!-- 더보기 버튼  -->
    <div class="container">
        <a href="#" id="load"><div class="more_btn">더보기</div></a>
    </div>
    
		    <script>
		    $(function(){
		  var cards = $("div.card"); // 모든 카드 요소를 가져옴
		  var numToShow = 2; // 한번에 보여줄 갯수
		  var numMore = 3; // 더 보여줄 갯수
		
		  // 초기 카드 요소를 보여줌
		  cards.slice(0, numToShow).show();
		
		  // 더보기 버튼 클릭시 실행될 함수
		  $("a#load").click(function(e){
		    e.preventDefault();
		
		    // 남아있는 카드 갯수가 더 보여줄 갯수보다 작을 경우, 모든 카드 요소를 보여줌
		    if(cards.filter(":hidden").length <= numMore){
		      cards.filter(":hidden").show();
		      $(this).remove(); // 더보기 버튼을 제거함
		    }
		    // 더 이상 보여줄 카드 요소가 없을 경우, 클릭 이벤트를 제거하고 알림창을 띄움
		    else if(cards.filter(":hidden").length == 0){
		      alert("게시물의 끝입니다.");
		      $(this).off("click");
		    }
		    else {
		      // 더 보여줄 카드 요소를 선택하고 보여줌
		      cards.filter(":hidden").slice(0, numMore).show();
		    }
		  });
		});
		    </script>
		    
		    
  
    
    
   <!--  <script type="text/javascript">
    $(function() {
    	  var cards = $('.card');
    	  var numToShow = 1; // 한번에 보여줄 갯수
    	  var numMore = 1; // 더 보여줄 갯수
    	  
    	  cards.slice(numToShow).hide();
    	  
    	  $('#load').click(function(e) {
    	    e.preventDefault();
    	    cards.filter(':hidden').slice(0, numMore).show();
    	    if (cards.filter(':hidden').length === 0) {
    	      $('#load').fadeOut('slow');
    	    }
    	  });
    	});
    </script> -->
 
 
 
<!--     <script>

/*     var numShownCards = 0;
    var numHiddenCards = numTotalCards - numShownCards;
 */
        $(function(){
            $("div.card").slice(0, 6).show(); // 초기갯수
            $("#load").click(function(e){ // 클릭시 more
                e.preventDefault();
                $("div.card:hidden").slice(0, 3).show(); // 클릭시 more 갯수 지정
                    if($("div.card:hidden").length <= 0){ // 컨텐츠 남아있는지 확인
                    alert("게시물의 끝입니다."); // 컨텐츠 없을시 alert 창 띄우기 
                }
            });
        });
        </script> -->




   
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
                    <div class="footer_info_copyright"><a href="https://www.naver.com/" class="footer_info_naver"><img src="/Hangeulum/image/logo2.png" width="70" height="45" alt="한걸음"></a> Copyright &copy; StepWithUs Corp. All Rights Reserved.</div>
                </ul>
            </div>
        </div>
    </div>
</div>


<!--Footer End-->

 <script type="text/javascript" src="http://code.jquery.com/jquery-3.6.4.min.js"></script>
 <script type="text/javascript" src="/Hangeulum/js/donation_main.js"></script> <!-- -->
  <script type="text/javascript" src="/Hangeulum/js/donation_main_cate.js"></script>




</body>
</html>