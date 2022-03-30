
/* 주소 */
function goPopup() {
    var pop = window.open("juso", "pop", "width=570,height=420, scrollbars=yes, resizable=yes");
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
