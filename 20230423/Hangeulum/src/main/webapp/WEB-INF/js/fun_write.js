$('#writeBtn').click(function(){

	$.ajax({
		type: 'post',
		url: '/Hangeulum/funding/fun_write',
		data: $('#fundingform').serialize(),
		success: function(){
			alert("펀딩 게시글이 작성 완료되었습니다.")
			location.href='/Hangeulum/user/joinForm';
		},
		
		error: function(err){
			console.log(err)
		}
	});
});