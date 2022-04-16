//휴대폰 인증
let phoneok1 = false;
let phoneok2 = false;
var resnum = "";
$(function() {
	$("#reqnum").click(function() {
		if ($("#phone").val() == '' || $("#phone").val().length < 11 || $("#phone").val().length > 11) {
			phoneok1 = false;
			Swal.fire({
				icon: 'error',
				title: '입력 오류',
				text: '휴대폰 번호를 정확하게 입력하세요',
				confirmButtonText: "확인"
			})
		} $.ajax({
			type: "post",
			dataType: "text",
			data: { phone: $("#phone").val() },
			url: "/sendsms",
			success: function(data, textStatus) {
				phoneok1 = true;
				Swal.fire({
					icon: 'success',
					title: '인증번호 발송 성공',
					text: '휴대폰을 확인하세요',
					confirmButtonText: "확인"
				})
				console.log(data);
				resnum = data;
			}
		});
	});


	$("#connum").click(function() {
		if ($("#phone").val() == '') {
			phoneok2 = false;
			Swal.fire({
				icon: 'warning',
				title: '입력 오류',
				text: '휴대폰 번호를 입력하세요.',
				confirmButtonText: "확인"
			})
		} else if ($("#inputnum").val() == '') {
			phoneok2 = false;
			Swal.fire({
				icon: 'warning',
				title: '입력 오류',
				text: '인증번호를 입력해 주세요.',
				confirmButtonText: "확인"
			})
		} else if ($("#inputnum").val() === resnum) {
			phoneok2 = true;
			Swal.fire({
				icon: 'success',
				title: '인증 성공',
				text: '인증이 완료되었습니다.',
				confirmButtonText: "확인"
			})
			$("#confirm").css("display", "none");
		} else {
			phoneok2 = false;
			Swal.fire({
				icon: 'warning',
				title: '인증번호가 일치하지 않습니다.',
				text: '인증번호를 재요청 하시겠습니까?',
				showCancelButton: true, // cancel버튼 보이기. 기본은 원래 없음
				confirmButtonColor: '#3085d6', // confrim 버튼 색깔 지정
				cancelButtonColor: '#d33', // cancel 버튼 색깔 지정
				confirmButtonText: '확인', // confirm 버튼 텍스트 지정
				cancelButtonText: '취소', // cancel 버튼 텍스트 지정
				reverseButtons: true // 버튼 순서 거꾸로
			}).then(result => {
				if (result.isConfirmed) {
					$("#reqnum").click();
					Swal.fire('인증번호 재발송 성공', '휴대폰을 확인하세요', 'success')
				}

			})
		}
		resnum = "";
	});
});




//주소 입력 api 팝업창 호출함수
function goPopup() {
	var pop = window.open("juso", "pop", "width=500,height=400, top=100, left=700, scrollbars=yes, resizable=yes");
}
function jusoCallBack(roadFullAddr, roadAddrPart1, addrDetail, roadAddrPart2, engAddr, jibunAddr, zipNo, admCd, rnMgtSn, bdMgtSn, detBdNmList, bdNm, bdKdcd, siNm, sggNm, emdNm, liNm, rn, udrtYn, buldMnnm, buldSlno, mtYn, lnbrMnnm, lnbrSlno, emdNo) {
	// 팝업페이지에서 주소입력한 정보를 받아서, 현 페이지에 정보를 등록합니다.

	document.form.doro_juso.value = roadAddrPart1;
	document.form.sangse_juso1.value = roadAddrPart2;
	document.form.sangse_juso2.value = addrDetail;
	document.form.zipcode.value = zipNo;
}

//이름 한글 입력 체크
let nameok = false;
function namecheck() {
	var name = $('#name').val();
	var eng = /[a-zA-Z]/;
	if (eng.test(name)) {
		$('#namec').val("한글만 입력하세요");
		$('#namec').css("color", "orangered");
		nameok = false;
	} else {
		nameok = true;
		$('#namec').val("");
	}

}
//닉네임 db중복 체크
let nickok = false;
function nickcheck() {
	var nickname = $('#nickname').val(); //id값이 "nickname"인 입력란의 값을 저장
	var spe = nickname.search(/[`~!@@#$%^&*|₩₩₩'₩";:₩/?]/gi);
	if (nickname == '') {
		nickok = false;
		Swal.fire({
			icon: 'warning',
			title: '입력 오류',
			text: '사용할 닉네임을 입력해주세요',
			confirmButtonText: "확인"
		})
	} else if (nickname.length < 2 || nickname.length > 10) {
		nickok = false;
		Swal.fire({
			icon: 'warning',
			title: '입력 오류',
			text: '닉네임은 2자이상 10자 미만으로 입력하세요',
			confirmButtonText: "확인"
		})
	} else if (spe > 0) {
		nickok = false;
		Swal.fire({
			icon: 'warning',
			title: '입력 오류',
			text: '닉네임은 영문/숫자/한글만 사용 가능합니다',
			confirmButtonText: "확인"
		})
	} else {
		$.ajax({
			url: "/nicknameCheck", //Controller에서 인식할 주소
			type: 'post', //POST 방식으로 전달
			data: { nickname: nickname },
			success: function(data) { //컨트롤러에서 넘어온 data값을 받는다 
				if (data == "true") { //true인 경우 사용불가
					nickok = false;
					Swal.fire({
						icon: 'warning',
						title: '닉네임 중복',
						text: '다른 닉네임을 입력해주세요.',
						confirmButtonText: "확인"
					})
				} else { // 사용가능
					nickok = true;
					Swal.fire({
						icon: 'success',
						title: '사용 가능',
						text: '사용 가능한 닉네임 입니다.',
						confirmButtonText: "확인"
					})
				}
			}
		});
	}

}

//회원가입 버튼 클릭시
function join() {

	 if (nameok == false) {
		$("#name").focus();
		Swal.fire({
			icon: 'warning',
			title: '입력 오류',
			text: '이름을 확인하세요.',
			confirmButtonText: "확인"
		})
	} else if ($("#birth").val() == '') {
		Swal.fire({
			icon: 'warning',
			title: '입력 오류',
			text: '생년월일을 입력하세요.',
			confirmButtonText: "확인"
		})
	} else if (nickok == false) {
		$("#nickname").focus();
		Swal.fire({
			icon: 'warning',
			title: '입력 오류',
			text: '닉네임을 확인하세요.',
			confirmButtonText: "확인"
		})
	} else if (phoneok1 == false || phoneok2 == false) {
		$("#phone").focus();
		Swal.fire({
			icon: 'warning',
			title: '입력 오류',
			text: '휴대폰번호를 확인하세요.',
			confirmButtonText: "확인"
		})
	} else if ($("#zipcode").val() == '') {
		Swal.fire({
			icon: 'warning',
			title: '입력 오류',
			text: '주소를 입력하세요.',
			confirmButtonText: "확인"
		})
	} else {
		Swal.fire({
			icon: 'success',
			title: '회원가입 완료',
			text: '확인을 누르면 메인페이지로 이동합니다.',
			confirmButtonText: "확인"
		}).then(result => {
				if (result.isConfirmed) {
					$("form[name=form]").submit();
				}

			})
	}
}