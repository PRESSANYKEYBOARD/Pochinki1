<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="./css/fun_go_modal.css">
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<form class="popup">
	<div class="header">
		<h2><strong>펀딩 참여 전 확인하세요!</strong></h2>
	</div> <!-- header -->
	
	<div class="container">
		<p class="notice">
			펀딩은 예약 결제 신청 후, 
			<br>
			<span>100% 달성 시</span> 지정 결제일에 결제됩니다.
		</p>
		<p class="point">
			<strong><span>4월 27일</span>이 가장 빠른 결제일입니다.</strong>
		</p>
		<p class="guide">
			결제가 진행된 이후에는 단순 변심으로 인한 취소나 환불이 어려울 수 있습니다. 결제 진행전, 한걸음 > 활동내역 > 펀딩내역에서 예약 결제를 취소할 수 있습니다.
		</p>
	</div> <!-- container -->
	
	<div class="agree">
		<div class="agree_all">
			<input type="checkbox" name="chkAll" id="chk" class="chkAll">
			<strong><span>약관 및 개인정보 관련 사항(선택 동의 포함)에 모두 동의합니다.</span></strong>
		</div> <!-- agree_all -->
		
		<div class="agree_need">
			<input type="checkbox" name="chk">
			<span>(필수) '한걸음 펀딩 약관'에 동의합니다.</span>
			<a href="" class="agreeguide_link">자세히 보기</a>
		</div> <!-- agree_need -->
		
		<div class="agreeguide_preview">
			<textarea name="" id="" readonly>
				약관 리스트가 들어갈 자리입니다. 자리 좀 자리 좀 자리 좀 끼에에에에에에에에ㅔ에엥에에ㅔㅔ에에엨!!!!!!!!!!!!!
			</textarea>
		</div> <!-- agreeguide_preview -->
		
		<div class="agree_choice">
			<input type="checkbox" name="chk">
			<span>(선택) 해피빈 마케팅 알림 수신에 동의합니다.</span>
		</div> <!-- agree_choice -->
		
		<div class="agree_choice_text">
			한걸음에서 제공하는 이벤트/혜택 등 다양한 정보를 휴대전화, 이메일로 받아보실 수 있습니다.
		</div> <!-- agree_choice_text -->
	</div> <!-- agree -->
	
    <div class="agree_button">
  		<button class="button_disagree">비동의</button>
    	<button class="button_agree">동의</button>
   </div>
   
  <button type="button" class="btn-close" aria-label="Close"></button>
	
</form> <!-- form -->
<script type="text/javascript" src="http://code.jquery.com/jquery-3.6.4.min.js"></script>
<script type="text/javascript">
$(document).ready(function() {
	  // 참여하기 버튼 클릭 시 모달 창 띄우기
	  $(".funding_go_button").click(function() {
	    $("#myModal").css("display", "block");
	  });

	  // 모달 창 닫기 버튼 클릭 시 모달 창 닫기
	  $(".btn-close").click(function() {
	    $("#myModal").css("display", "none");
	  });
	});
</script>
</body>
</html>