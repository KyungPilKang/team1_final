    //캡챠 리프레시
    function caprefesh(){
	    var imgsrc = document.getElementById("cap_img");
	     imgsrc.src = "/captcha?ver=" + Math.random();
	}
    //captcha 입력 유효성 체크
$('#captchavalid').click(function () {
	if($('#userin').val()==""){
		Swal.fire({
	        icon: 'error',
	        title: '입력 오류',
	        text: '문자 또는 숫자를 다시 확인하세요',
	        confirmButtonText: "확인"
	    })
		return false;
	} 
	$.ajax({
		type:"post",
		dataType:"text",
		async:false,
		url:"http://localhost:8090/captchacheck",
		data:{userin:$('#userin').val()},
		success: function(data, textStatus){
			if(data=="false"){
				Swal.fire({
	    	        icon: 'error',
	    	        title: '입력 오류',
	    	        text: '문자 또는 숫자를 다시 확인하세요',
	    	        confirmButtonText: "확인"
	    	    })
				$('.captcha').css("display","");
				captcha_ok=false;
			} else {
				Swal.fire({
	    	        icon: 'success',
	    	        title: '입력 성공',
	    	        text: '자동 생성 방지가 완료되었습니다',
	    	        confirmButtonText: "확인"
	    	    })
				$('.captcha').css("display","none");
				captcha_ok=true;
				console.log(captcha_ok);
				if(captcha_ok==true&&email_ok==true&&nickname_ok==true){
			    	$('#form_submit').attr('disabled', false);
			    }
			}
		}
	});
});