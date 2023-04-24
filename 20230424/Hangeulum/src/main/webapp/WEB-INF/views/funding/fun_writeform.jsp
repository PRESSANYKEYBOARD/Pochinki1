<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %><%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <link rel="reset" href="../css/reset.css" />
  <link rel="stylesheet" href="../css/donation_writeform44.css" />
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
  <title>Document</title>
  <script type="text/javascript" src="http://code.jquery.com/jquery-3.6.4.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>

</head>
<body>

    <!-- 헤더시작 -->
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
                     <img src="../image/funmain_image/enlargement.png" alt="enlargement.png">
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
        <input type="text" class="form-control" id="userId" name="userId" required>
      </div>
    
      <div class="form-group">
        <label for="title" style="width: 50%;">제목</label>
        <input type="text" class="form-control" id="boardFSubject" name="boardFSubject" required>
      </div>

      <div class="form-group">
        <label for="goal_amount">목표금액을 설정하세요.</label>
        <input type="text" class="form-control" id="boardFGoalAmount" name="boardFGoalAmount" required>
      </div>
      
      <div class="form-group">
        <label for="post_period_start">펀딩 개시 시작일 선택하세요.</label>
        <input type="date" class="form-control" id="post_period_start" name="post_period_start" required>
      </div>
        
      <div class="form-group">
	      <label for="post_period_end">펀딩 개시 종료일 선택하세요</label>
	      <input type="date" class="form-control" id="boardFExpireDate" name="boardFExpireDate" required>
      </div>
        
      <div class="form-group">
      	  <label for="post_period_end">개시 종료여부</label>
          <input type="text" class="form-control" id="boardFIsExpired" name="boardFIsExpired" readonly>
      </div>
      
      <div class="form-group">
	      <label for="post_period_end">예상 발송일을 설정하세요.</label>
	      <input type="date" class="form-control" id="boardFSendDate" name="boardFSendDate" required>
      </div>
      
      <div class="form-group">
      	  <label for="post_period_end">준비된 상품 수량 설정</label>
          <input type="text" class="form-control" id="boardTotRewardCnt" name="boardTotRewardCnt" required>
      </div>
        
        <div class="form-group">
	        <label for="editor">내용</label>
	        <textarea id="editor" name="boardFContent"></textarea>
	        <!-- CKEditor 4 -->
	        <script src="https://cdn.ckeditor.com/4.16.2/full-all/ckeditor.js"></script>
	        <script>
		        CKEDITOR.replace('editor', {
		            language: 'ko'
		        });
	        </script> 
        </div>

   	 	<!-- 이미지 파일 선택 및 미리보기 -->
    	<input type="file" id="fileName" multiple>

        <button type="button" class="btn-primary" id="writeBtn" name="writeBtn" style="width: 20%; font-weight: bold">작성 완료</button>
        <button type="reset" class="btn-secondary">취소</button>
        </form>
        </div>
<script type="text/javascript" src="../js/fun_write.js"></script> <!-- 펀딩 게시글 작성 -->
<script type="text/javascript" src="/framework/smartEditor/js/HuskyEZCreator.js" charset="utf-8">script>
<script type="text/javascript">
$(function() {
	  // 펀딩 개시 시작일과 종료일을 변수에 저장
	  var startDate = new Date($("#post_period_start").val());
	  var endDate = new Date($("#boardFExpireDate").val());

	  // 종료일이 지났으면 "Y" 입력, 아니면 "N" 입력
	  if (endDate < new Date()) {
	    $("#boardFIsExpired").val("Y");
	  } else {
	    $("#boardFIsExpired").val("N");
	  }

	  // 종료일이 변경될 때마다 종료여부를 업데이트
	  $("#boardFExpireDate").change(function() {
	    endDate = new Date($(this).val());
	    if (endDate <= new Date()) {
	      $("#boardFIsExpired").val("Y");
	    } else {
	      $("#boardFIsExpired").val("N");
	    }
	  });
});
	
/* 그러나, 오류 메시지를 보면 jdbcType=null로 설정되어 있습니다. 이것은 매개 변수의 데이터 타입을 설정하는 jdbcType이 설정되어 있지 않은 것입니다. 
이 경우 jdbcType을 VARCHAR 또는 CHAR로 설정하여 데이터 타입을 명시적으로 지정해야 합니다. */
	
</script>
</body>
</html>