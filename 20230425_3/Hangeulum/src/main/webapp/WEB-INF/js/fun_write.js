$('#writeBtn').click(function(){

	$.ajax({
		type: 'post',
		enctype: 'multipart/form-data',
		url: '/Hangeulum/funding/fun_write',
		data: $('#fun_writeform').serialize(),
		processData: false,
		contentType: false, // Content type을 지정하지 않음
		success: function(data){
			console.log(data); 
			alert("펀딩 게시글이 작성 완료되었습니다.")
			location.href='/Hangeulum/funding/fum_main';
		},
		
		error: function(err){
			console.log(err)
		}
	});
});