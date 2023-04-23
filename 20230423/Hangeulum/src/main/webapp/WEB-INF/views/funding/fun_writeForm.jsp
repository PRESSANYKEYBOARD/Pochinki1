<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1>폼 테스트</h1>
<form id="fundingform" name = "fundingform">

글 번호 : <input type="text" id="boardFseq" name="boardFseq" />
아이디 : <input type="text" id ="userId" name = "userId"/>
첨부파일 : <input type="text" id="fileName" name="fileName" />

만료일자 : <input type="text" id ="boardFExpireDate"name = "boardFExpireDate"/>
만료여부 : <input type="text" id ="boardFIsExpired" name = "boardFIsExpired"/>
제목 : <input type="text" id ="boardFSubject"name = "boardFSubject" />
달성률 : <input type="text" id ="boardFGoalPercet" name = "boardFGoalPercet"/>
목표금액 : <input type="text" id ="boardFGoalAmount"  name = "boardFGoalAmount"/>
펀딩 누적액 : <input type="text" id="boardFRealAmount" name="boardFRealAmount" />
내용 : <textarea id="boardFContent" name="boardFContent"></textarea>

발송 예상일 : <input type="text" id="boardFSendDate" name="boardFSendDate" />
준비된 상품 수량 : <input type="text" id="boardFTotRewardCnt" name="boardFTotRewardCnt"/>
남은 카운트 수 : <input type="text" id="boardFSoldRewardCount" name="boardFSoldRewardCount"/>

<button type="button" id="writeBtn" name ="writeBtn">전송하기</button>
</form>

<script type="text/javascript" src="http://code.jquery.com/jquery-3.6.4.min.js"></script>
<script type="text/javascript" src="../js/fun_write.js"></script>

</body>
</html>