$(document).ready(function() {
	var now = new Date();
	
	$.ajax({
	url: "/Hangeulum/funding/fun_getBoardList",
	dataType: "json",
	success: function(response) {
	    var fundingList = "";
	    	for (var i = 0; i < response.length; i++) {
	    		var funding = response[i];
	    		
	            // boardFExpireDate를 Date 형식으로 변환합니다.
	            var expireDate = new Date(funding.boardFExpireDate);
	          
	            // 현재 날짜와 boardFExpireDate 사이의 차이를 계산합니다.
	            var diffInDays = Math.round((expireDate - now) / (1000 * 60 * 60 * 24));
					fundingList +=
						"<div class='col-md-4 col-sm-6'>" +
						"<div class='card' style='width: 18rem;'>" +
						"<img src='/Hangeulum/storage/" +
						funding.boardFThumbnail +
						"' class='card-img-top' alt='끼에엨'>" +
						"<div class='card-body'>" +
						"<h5 class='card-title'>" +
						funding.boardFSubject +
						"</h5>" +
						"<p class='card-text'>" +
						funding.comName +
						"</p>" +
						"<a href='/Hangeulum/funding/fun_view/" + funding.boardFSeq + "' class='btn btn-primary'>펀딩 참여하기</a>" +
						"</div>" +
						"<ul class='list-group list-group-flush'>" +
						"<li class='list-group-item'>" +
						"<div class='progress'>" +
						"<div class='progress-bar bg-success progress-bar-striped progress-bar-animated' role='progressbar'" +
						"style='width: " +
						funding.progress +
						"%;' aria-valuenow='" +
						funding.progress +
						"' aria-valuemin='0' aria-valuemax='100'>" +
						funding.progress +
						"%</div>" +
						"</div>" +
						"</li>" +
						"<li class='list-group-item'><span>" +
						funding.boardFGoalAmount +
						"</span>원</li>" +
						"</ul>" +
						"<div class='card-footer'><span>" +
						diffInDays +
						"</span>일 남음</div>" +
						"</div>" +
						"</div>";
					}
			$("#funding-list").html(fundingList);
		},
		error: function(error) {
			console.log(error);
		}
	});
});