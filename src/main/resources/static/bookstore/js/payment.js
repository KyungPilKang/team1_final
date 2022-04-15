

$(function() {
	$("#modifyname").click(function(){
		var newdeli_name = $("#newdeli_name").val();	 
	$("#deli_name").val(newdeli_name);
	alert($("#deli_name").val());
	})
	});

	//이메일 셀렉트박스 제어 함수
	function selectEmail(ele) {
		var $ele = $(ele);
		var $email2 = $('input[name=email2]');
		// '1'인 경우 직접입력 
		if ($ele.val() == "1") {
			$email2.attr('readonly', false);
			$email2.val('');
		} else {
			$email2.attr('readonly', true);
			$email2.val($ele.val());
		}
	}


	$(function() {
	$("#modifyemail").click(function(){
	var email1 = $("#email1").val();
	var email2 = $("#email2").val();
	var email = email1+"@"+email2;
	$("#email").val(email);
	})
	});

	$(function() {
	$("#modifyphone").click(function() {
	$("#oldphone").val($("#newphone").val());	
	})
	});
	
/* 주소 */
function goPopup() {
    window.open("juso", "pop", "width=570,height=420, scrollbars=yes, resizable=yes");
}

function jusoCallBack(roadFullAddr, roadAddrPart1, addrDetail, roadAddrPart2, engAddr, jibunAddr, zipNo, admCd, rnMgtSn, bdMgtSn, detBdNmList, bdNm, bdKdcd, siNm, sggNm, emdNm, liNm, rn, udrtYn, buldMnnm, buldSlno, mtYn, lnbrMnnm, lnbrSlno, emdNo) {
    document.form.doro_juso.value = roadAddrPart1;
    document.form.sangse_juso1.value = roadAddrPart2;
    document.form.sangse_juso2.value = addrDetail;
    document.form.zipcode.value = zipNo;
  
}


/* 다음단계 누르면 1->2 이동 및 유효성검사 */
$('#next').click(function () {
    let deli_address = $('#deli_address').val();
    let deli_name = $('#deli_name').val();
    let juso = $('#doro_juso').val();
    let phone = $('#phone').val();
    let email = $('#email').val();
    let chkEmail = /^[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*@[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*.[a-zA-Z]{2,3}$/i;
    //배송지명 입력?
    if (deli_address === "") {
        swal({
            title: "입력 오류",
            text: "배송지명을 입력해주세요.",
            icon: "error",
            button: "확인"
        });
        $('#deli_address').focus()
        return false;
    }
    if (deli_name === "") {
        swal({
            title: "입력 오류",
            text: "수령인을 입력해주세요.",
            icon: "error",
            button: "확인"
        });
        $('#deli_name').focus()
        return false;
    }
    if (juso == "") {
        swal({
            title: "입력 오류",
            text: "주소를 입력해주세요.",
            icon: "error",
            button: "확인"
        });
        return false;
    }
    if (phone == "") {
        swal({
            title: "입력 오류",
            text: "연락처를 입력해주세요.",
            icon: "error",
            button: "확인"
        });
        $('#phone').focus()
        return false;
    }
    if (email == "") {
        swal({
            title: "입력 오류",
            text: "이메일을 입력해주세요.",
            icon: "error",
            button: "확인"
        });
        $('#email').focus()
        return false;
    }
    if (email.match(chkEmail) == null) {
        swal({
            title: "입력 오류",
            text: "이메일 형식이 올바르지 않습니다.",
            icon: "error",
            button: "확인"
        });
        $('#email').focus()
        return false;
    }
    $('.payment_container_step1').css("display", "none");
    $('.payment_container_step2').css("display", "block");
});

/* 이전단계 누르면 2->1 이동 */
$('#previous').click(function () {
    $('.payment_container_step2').css("display", "none");
    $('.payment_container_step1').css("display", "block");
});


const email = document.getElementById("email").value;

/* 결제 */
function payment(payMethod, totalPrice, email) {
    // document.getElementById('form_step1').submit();

    function uuid() {
        return 'xxxxxxxx-xxxx-4xxx-yxxx-xxxxxxxxxxxx'.replace(/[xy]/g, function(c) {
            var r = Math.random() * 16 | 0, v = c == 'x' ? r : (r & 0x3 | 0x8);
            return v.toString(16);
        });
    }

    console.log("이메일 확인:" + email)
    IMP.init('imp59784293'); //가맹점 식별코드(프로젝트 공용아이디로 설정되어있음)
    IMP.request_pay({
        pg: "inicis", //PG사
        pay_method: payMethod,
        merchant_uid: uuid(), //주문 번호
        name: '니즈풀 교재 결제', //상품명
        amount: totalPrice, //결제 가격
        buyer_email: email, //구매자 이메일
        buyer_name: '구매자', //구매자 이름
        buyer_tel: '010-1234-5678', //구매자 전화번호
        buyer_addr: '서울특별시 강남구 삼성동', //구매자 주소
        buyer_postcode: '123-456' //구매자 우편번호
    }, function (rsp) { //콜백 구현부
        if (rsp.success) {
            document.getElementById('order_method').setAttribute("value", payMethod)
            document.getElementById('order_num').setAttribute("value", rsp.merchant_uid)
            document.getElementById('total_price').setAttribute("value", totalPrice)
            document.getElementById('form_step1').submit();
            console.log("성공");
            console.log("승인번호:" + rsp.imp_uid); //승인 번호 콜백
            console.log("주문번호:" + rsp.merchant_uid); //주문 번호 콜백
            console.log(rsp.buyer_email);
        } else {
            console.log("실패");
        }
    });
}