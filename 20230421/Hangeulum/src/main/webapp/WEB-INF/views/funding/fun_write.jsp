<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1>폼 테스트</h1>
<form id="boardFform" name = "boardFform">
아이디 : <input type="text" id ="userId" name = "userId"/>
만료일자 : <input type="text" id ="boardFExpireDate"name = "boardFExpireDate"/>
만료여부 : <input type="text" id ="boardFIsExpired" name = "boardFIsExpired"/>
제목 : <input type="text" id ="boardFSubject"name = "boardFSubject "/>
달성률 : <input type="text" id ="boardFGoalPercet" name = "boardFGoalPercet"/>
목표금액 : <input type="text" id ="boardFGoalAmount"  name = "boardFGoalAmount"/>

<button type="button" id="writeBtn" name ="writeBtn"></button>
</form>

<script type="text/javascript" src="http://code.jquery.com/jquery-3.6.4.min.js"></script>
<script type="text/javascript" src="../js/write.js"></script>

</body>

</html>