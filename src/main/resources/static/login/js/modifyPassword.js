function modify(){
    if(pw1ok==false||pw2ok==false){
		Swal.fire({
	        icon: 'error',
	        title: '입력 오류',
	        text: '비밀번호를 입력하세요',
	        confirmButtonText: "확인"
	    })
    }else {
        $.ajax({
			url: "/passwordCheck", //Controller에서 인식할 주소
			type: 'post', //POST 방식으로 전달
			data: {"no":$("#no").val(), "password":$("#oldpassword").val()},
			dataType:"text",
			success: function(data) { //컨트롤러에서 넘어온 data값을 받는다 true 면 일치  false면 불일치
                    if(data=="false"){
                        Swal.fire({
                            icon: 'warning',
                            title: '비밀번호 오류',
                            text: '비밀번호가 일치하지 않습니다..',
                            confirmButtonText: "확인"
                        })
                    }else{
                        $.ajax({
                            url: "/passChange", //Controller에서 인식할 주소
                            type: 'post', //POST 방식으로 전달
                            data: {"no":$("#no").val(), "password":$("#password1").val()},
                            dataType:"text",
                            success: function(data){
                                if(data=="ok"){
                                    Swal.fire({
                                        icon: 'success',
                                        title: '비밀번호 수정 완료',
                                        text: '메인페이지로 이동합니다.',
                                        confirmButtonText: "확인"
                                    }).then(result => {
                                        if (result.isConfirmed) {
                                            location.href="/home"
                                        }
                        
                                    })
                                }
                            }
                        });
                    }
            }
            });
    }
}

// 비밀번호 유효성 체크
let pw1ok = false;
let pw2ok = false;
function pwcheck() {
	var pw1 = $("#password1").val();
	var num = pw1.search(/[0-9]/g);
	var eng = pw1.search(/[a-z]/ig);
	var spe = pw1.search(/[`~!@@#$%^&*|₩₩₩'₩";:₩/?]/gi);

	if (pw1 == '') {
		pw1ok = false;
		$('#pw_ok').val("비밀번호를 입력하세요");
		$('#pw_ok').css("color", "orangered");
	} else if (pw1.length < 8 || pw1.length > 16) {
		pw1ok = false;
		$('#pw_ok').val("8자리 ~ 16자리 이내로 입력해주세요.");
		$('#pw_ok').css("color", "orangered");
	} else if (pw1.search(/\s/) != -1) {
		pw1ok = false;
		$('#pw_ok').val("비밀번호는 공백 없이 입력해주세요.");
		$('#pw_ok').css("color", "orangered");
	} else if ((num < 0 && eng < 0) || (eng < 0 && spe < 0) || (spe < 0 && num < 0)) {
		pw1ok = false;
		$('#pw_ok').val("영문,숫자, 특수문자 중 2가지 이상을 혼합하여 입력해주세요.");
		$('#pw_ok').css("color", "orangered");
	} else {
		pw1ok = true;
		$('#pw_ok').val("사용 가능합니다");
		$('#pw_ok').css("color", "green");
	}
}

function pwcheck2() {
	var pw1 = $("#password1").val();
	var pw2 = $("#password2").val();
	if (pw1 !== pw2) {
		pw2ok = false;
		$('#pw_ok2').val("비밀번호가 일치하지 않습니다");
		$('#pw_ok2').css("color", "orangered");
	} else {
		pw2ok = true;
		$('#pw_ok2').val("비밀번호가 일치합니다");
		$('#pw_ok2').css("color", "green");
	}
}