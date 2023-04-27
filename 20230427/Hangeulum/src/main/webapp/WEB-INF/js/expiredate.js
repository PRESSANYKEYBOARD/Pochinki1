$(document).ready(function() {
	
	// 현재 날짜와 시간을 구합니다.
	var now = new Date();

	  $.ajax({
	    url: "/Hangeulum/funding/fun_getBoardList",
	    method: "GET",
	    success: function(response) {
	      var fundingList = response;
	      var html = "";
	      for (var i = 0; i < fundingList.length; i++) {
	        var funding = fundingList[i];

	        // boardFExpireDate를 Date 형식으로 변환합니다.
			var expireDate = new Date(funding.boardFExpireDate);
			
			// 현재 날짜와 boardFExpireDate 사이의 차이를 계산합니다.
			var diffInDays = Math.round((expireDate - now) / (1000 * 60 * 60 * 24));

	        html += '<div class="col-md-4 col-sm-6">';
	        html += '<div class="card" style="width: 18rem;">';
	        html += '<img src="/Hangeulum/image/fun_image/fun_card1.png" class="card-img-top" alt="...">';
	        html += '<div class="card-body">';
	        html += '<h5 class="card-title">' + funding.boardFSubject + '</h5>';
	        html += '<p class="card-text">' + funding.boardFSubject + '</p>';
	        html += '<a href="/Hangeulum/funding/fun_view/" class="btn btn-primary">펀딩 참여하기</a>';
	        html += '</div>';
	        html += '<ul class="list-group list-group-flush">';
	        html += '<li class="list-group-item">';
	        html += '<div class="progress">';
	        html += '<div class="progress-bar bg-success progress-bar-striped progress-bar-animated" role="progressbar"';
	        html += 'style="width: ' + funding.progress + '%;" aria-valuenow="' + funding.progress + '" aria-valuemin="0"';
	        html += 'aria-valuemax="100">' + funding.progress + '%</div>';
	        html += '</div>';
	        html += '</li>';
	        html += '<li class="list-group-item"><span>' + funding.boardFGoalAmount + '</span>원</li>';
	        html += '</ul>';
	        html += '<div class="card-footer">';
	        html += '<span>' + diffInDays + '</span>일 남음';
	        html += '</div>';
	        html += '</div>';
	        html += '</div>';
	      }
	      $("#funding-list").html(html);
	    },
	    error: function(error) {
	      console.log(error);
	    }
	  });
	});