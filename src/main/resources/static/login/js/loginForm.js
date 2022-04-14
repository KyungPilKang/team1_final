	    function login(){
	if($("#capchacon").css("display")=="inline"){
		Swal.fire({
	        icon: 'waring',
	        title: '로그인 에러',
	        text: 'CAPCHA 확인을 먼저 진행하세요',
	        confirmButtonText: "확인"
	    })
	}
	if($("#username").val()==''||$("#password").val()==''){
		Swal.fire({
	        icon: 'error',
	        title: '입력 오류',
	        text: '아이디 또는 비밀번호를 입력하세요',
	        confirmButtonText: "확인"
	    })
	} else { 
		$.ajax({
			url: "/loginCheck", //Controller에서 인식할 주소
			type: 'post', //POST 방식으로 전달
			
			data: {"username":$("#username").val(), "password":$("#password").val()},
			dataType:"text",
			success: function(data) { //컨트롤러에서 넘어온 data값을 받는다
				if(data == "admin"){
					Swal.fire({
					icon: 'success',
					title: '관리자 로그인 성공',
					text: '확인을 누르면 관리자 페이지로 이동합니다.',
					confirmButtonText: "확인"
					}).then(result => {
					location.href="/orderlist"
					})
				}
			
				if (data == "ok") { //true인 경우 로그인 성공
					Swal.fire({
					icon: 'success',
					title: '로그인 성공',
					text: '확인을 누르면 메인페이지로 이동합니다.',
					confirmButtonText: "확인"
					}).then(result => {
					location.href="/home"
					})
				} else if(data =="passfail" || data=="idfail") { // 로그인 실패
					Swal.fire({
						icon: 'error',
						title: '로그인 실패',
						text: '아이디 또는 비밀번호가 일치하지 않습니다.',
						confirmButtonText: "확인"
					})
				} else if(data=="overfail"){

				Swal.fire({
				icon: 'warning',
				title: '로그인 실패',
				text: '3회 이상 로그인 실패시 CAPCHA확인 후 로그인 가능합니다.',
				showCancelButton: true, // cancel버튼 보이기. 기본은 원래 없음
				confirmButtonColor: '#3085d6', // confrim 버튼 색깔 지정
				cancelButtonColor: '#d33', // cancel 버튼 색깔 지정
				confirmButtonText: '확인', // confirm 버튼 텍스트 지정
				cancelButtonText: '취소', // cancel 버튼 텍스트 지정
				reverseButtons: true // 버튼 순서 거꾸로
			}).then(result => {
				if (result.isConfirmed) {
					$("#capchacon").css("display","inline");
				}

			})
					}
				}
			
			});
		}
	}
			
			
			
			
			/* { //컨트롤러에서 넘어온 data값을 받는다 
				if (data == "true") { //로그인 성공
					
					location.href = "/";
					
				} else { // 아이디 없음
					Swal.fire({
						icon: 'warning',
						title: '입력 오류',
						text: '아이디 또는 비밀번호를 확인하세요.',
						confirmButtonText: "확인"
					})
				}
			}
		});
		
	}
}*/
    
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
		url:"/captchacheck",
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
		
				
				
				
			}
		}
	});
});


