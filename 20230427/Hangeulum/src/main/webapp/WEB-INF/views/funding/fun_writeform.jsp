<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <link rel="reset" href="/Hangeulum/css/reset.css" />
  <link rel="stylesheet" href="/Hangeulum/css/donation_writeform44.css" />
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
  <script type="text/javascript" src="http://code.jquery.com/jquery-3.6.4.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
  <title>Document</title>
</head>
<body>

    <!-- 헤더시작 -->
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
                   <a href="#" class="login_btn">로그인</a>
                   <span class="header-bar"></span>
                   <a href="#" class="search_btn">
                     <img src="/Hangeulum/image/funmain_image/enlargement.png" alt="enlargement.png">
                   </a>
               </div>
           </div>
     </div>
  </div>
  <!-- 헤더 끝 -->

<!-- post -->
<div class="post">
    <form id="fun_writeform" action="/Hangeulum/funding/fun_write" method="POST" enctype="multipart/form-data" >
    
    <!-- <input type="hidden" name="userId" id="userId" value="{sessionScope.userId}"> -->
    
      <div class="form-group_title">
        <label for="title">아이디</label>
        <input type="text" class="form-control" id="userId" name="userId">
      </div>
      
      <div class="form-group"> 
      	<label for="thumnail">썸네일로 설정할 이미지를 선택하세요.</label>
      	<input type="file" class="form-control" id="boardFThumbnail" name="boardFThumbnail">
      </div>
    
      <div class="form-group">
        <label for="title" style="width: 50%;">제목</label>
        <input type="text" class="form-control" id="boardFSubject" name="boardFSubject">
      </div>

      <div class="form-group">
        <label for="goal_amount">목표금액을 설정하세요.</label>
        <input type="text" class="form-control" id="boardFGoalAmount" name="boardFGoalAmount">
      </div>
      
      <div class="form-group">
        <label for="post_period_start">펀딩 개시 시작일 선택하세요.</label>
        <input type="date" class="form-control" id="post_period_start" name="post_period_start">
      </div>
        
      <div class="form-group">
	      <label for="post_period_end">펀딩 개시 종료일 선택하세요</label>
	      <input type="date" class="form-control" id="boardFExpireDate" name="boardFExpireDate">
      </div>
        
      <div class="form-group">
      	  <label for="post_isperiod">개시 종료여부</label>
          <input type="text" class="form-control" id="boardFIsExpired" name="boardFIsExpired" readonly>
      </div>
      
      <div class="form-group">
	      <label for="post_period_send">예상 발송일을 설정하세요.</label>
	      <input type="date" class="form-control" id="boardFSendDate" name="boardFSendDate">
      </div>
      
	<div class="form-group">
	  <label for="reward1">상품</label>
	  <input type="text" class="form-control" id="boardFRewardSelect" name="boardFRewardSelect" placeholder="상품을 입력하세요." required>
	  <input type="number" class="form-control" id="boardFRewardPrice" name="boardFRewardPrice" placeholder="금액을 입력하세요." required>
	</div>
	
	<div id="additional-rewards">
	  <!-- 여기에 추가적인 상품 입력란이 동적으로 생성됩니다. -->
	</div>

	<button id="add-reward-btn" type="button">+ 추가 상품 입력</button>

      <div class="form-group">
      	  <label for="post_period_count">준비된 상품 수량 설정</label>
          <input type="text" class="form-control" id="boardTotRewardCnt" name="boardTotRewardCnt" required>
      </div>
      
      <div class="form-group">
			<label for="editor">내용</label>
			<textarea id="boardFContent" name="boardFContent" rows="10" cols="100"></textarea>
			<script type="text/javascript">
			$(function(){
			//전역변수
			
			var oEditors = [];
			//스마트에디터 프레임생성
			
			nhn.husky.EZCreator.createInIFrame({
			    oAppRef: oEditors,
			    elPlaceHolder: "boardFContent", // textarea의 name태그
			    sSkinURI: "/Hangeulum/smartEditor/SmartEditor2Skin.html",  // 본인 경로게 맞게 수정
			    fCreator: "createSEditor2",
			    
			    htParams : {
			        // 툴바 사용 여부
			        bUseToolbar : true,
			        // 입력창 크기 조절바 사용 여부
			        bUseVerticalResizer : true,
			        // 모드 탭(Editor | HTML | TEXT) 사용 여부
			        bUseModeChanger : true,
			    },
			    
			    
			});
			
			function pasteHTML(filepath) {
			    var sHTML = '';
			    oEditors.getById["boardFContent"].exec("PASTE_HTML", [sHTML]);
			}
			
			//전송버튼
			$("#writeBtn").click(function(){
			    //id가 smarteditor인 textarea에 에디터에서 대입
			    
			    oEditors.getById["boardFContent"].exec("UPDATE_CONTENTS_FIELD", []);            
			    $("#fun_writeform").submit();
			    
			    });
			});
			</script>
		</div>

<!--    	 	이미지 파일 선택 및 미리보기
    	<input type="file" id="fileName"> -->

        <button type="button" type="submit" class="btn-primary" id="writeBtn" name="writeBtn" style="width: 20%; font-weight: bold">작성 완료</button>
        <button type="reset" class="btn-secondary">취소</button>
    </form>
</div>
<script type="text/javascript" src="/Hangeulum/smartEditor/js/HuskyEZCreator.js" charset="utf-8"></script>
<script type="text/javascript" src="/Hangeulum/js/jquery.serialize-object.min.js"></script> <!-- Form 데이터 -> Json 데이터로 변경 -->
<script type="text/javascript" src="/Hangeulum/js/fun_startEnd.js"></script> <!-- 펀딩 종료여부 -->
<script type="text/javascript">
$(document).ready(function() {
	  // + 버튼 클릭 이벤트 처리
	  $('#add-reward-btn').on('click', function() {
	    // 추가적인 상품 입력란을 생성하여 추가
	    var numRewards = $('#additional-rewards .form-group').length + 1;
	    var newRewardHtml = '<div class="form-group">' +
	                          '<label for="reward' + numRewards + '">추가 상품 ' + numRewards + '</label>' +
	                          '<input type="text" class="form-control" id="boardFRewardSelect" name="boardFRewardSelect" placeholder="상품을 입력하세요." required>' +
	                          '<input type="number" class="form-control" id="boardFRewardPrice" name="boardFRewardPrice" placeholder="금액을 입력하세요." required>' +
	                        '</div>';
	    $('#additional-rewards').append(newRewardHtml);
	  });

	  // 폼 제출 이벤트 처리 (이전 코드와 동일)
	  $('#fun_writeform').on('submit', function(event) {
	    event.preventDefault(); // 기존 submit 이벤트 제거
	    if (confirm("정말로 제출하시겠습니까?")) {
	      // AJAX를 사용하여 서버로 데이터 전송
	      $.ajax({
	        url: "/Hangeulum/funding/fun_write",
	        type: "POST",
	        data: new FormData(this),
	        processData: false,
	        contentType: false,
	        success: function(response) {
	          alert("펀딩 게시글 작성 완료");
	          // 이동할 페이지 주소
	          location.href = "/Hangeulum/funding/fun_main";
	        },
	        error: function(xhr, status, error) {
	          console.error(error);
	        }
	      });
	    }
	  });
	});
</script>
</body>
</html>