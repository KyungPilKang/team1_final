
/* 주소 */
function goPopup() {
    window.open("juso", "pop", "width=570,height=420, scrollbars=yes, resizable=yes");
}

function jusoCallBack(roadFullAddr, roadAddrPart1, addrDetail, roadAddrPart2, engAddr, jibunAddr, zipNo, admCd, rnMgtSn, bdMgtSn, detBdNmList, bdNm, bdKdcd, siNm, sggNm, emdNm, liNm, rn, udrtYn, buldMnnm, buldSlno, mtYn, lnbrMnnm, lnbrSlno, emdNo) {
    document.form.dorojuso.value = roadAddrPart1;
    document.form.sangsejuso1.value = roadAddrPart2;
    document.form.sangsejuso2.value = addrDetail;
    document.form.zipcode.value = zipNo;
}



/* 다음단계 누르면 1->2 이동 */
$('#next').click(function(){
    $('.payment_container_step1').css("display", "none");
    $('.payment_container_step2').css("display", "block");
});

/* 이전단계 누르면 2->1 이동 */
$('#previous').click(function(){
    $('.payment_container_step2').css("display", "none");
    $('.payment_container_step1').css("display", "block");
});


/* 결제 방법 선택 */
const payMethod = function (event){
    let pay_method = event.target.value;
    if(pay_method === 'card'){
        document.getElementById('btn_payment').setAttribute("onclick","payment('card')")
    } else if(pay_method === 'vbank'){
        document.getElementById('btn_payment').setAttribute("onclick","payment('vbank')")
    }else if(pay_method === 'trans'){
        document.getElementById('btn_payment').setAttribute("onclick","payment('trans')")
    }else if(pay_method === 'phone'){
        document.getElementById('btn_payment').setAttribute("onclick","payment('phone')")
    }else if(pay_method === 'tosspay'){
        document.getElementById('btn_payment').setAttribute("onclick","payment('tosspay')")
    }else if(pay_method === 'samsung'){
        document.getElementById('btn_payment').setAttribute("onclick","payment('samsung')")
    }
}

/* 결제 성공시 배송정보를 db에 넣어주는 함수를 호출하도록 구현 */
/* 결제 성공시 해당 username에 해당하는 order 테이블에 cart 테이블의 정보를 넘기도록 */
/* 결제 성공시 해당 username에 해당하는 장바구니 db를 전부 제거하도록 구현 */

/* 결제 */
function payment(payMethod) {
    IMP.init('imp59784293'); //가맹점 식별코드(프로젝트 공용아이디로 설정되어있음)
    IMP.request_pay({
        pg : "inicis", //PG사
        pay_method : payMethod, // card, vbank로 radio 선택에 따라 ${data}
        merchant_uid : 'FL_' + new Date().getTime(), //주문 번호
        name : '결제테스트', //상품명
        amount : 200, //결제 가격
        buyer_email : 'iamport@siot.do', //구매자 이메일
        buyer_name : '구매자', //구매자 이름
        buyer_tel : '010-1234-5678', //구매자 전화번호
        buyer_addr : '서울특별시 강남구 삼성동', //구매자 주소
        buyer_postcode : '123-456' //구매자 우편번호
    }, function(rsp) { //콜백 구현부
        if (rsp.success) {
            console.log("성공");
            console.log(rsp.imp_uid); //승인 번호 콜백
            console.log(rsp.merchant_uid); //주문 번호 콜백
            document.location.href = 'payment/finished';
        } else {
            console.log("실패");
        }
    });
}