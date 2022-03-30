//이메일 셀렉트박스 제어 함수
 function selectEmail(ele){ 
        var $ele = $(ele); 
        var $email2 = $('input[name=email2]'); 
        // '1'인 경우 직접입력 
        if($ele.val() == "1"){
             $email2.attr('readonly', false);
             $email2.val(''); 
    } else { 
        $email2.attr('readonly', true); 
        $email2.val($ele.val()); 
    } 
}


//주소 입력 api 팝업창 호출함수
    function goPopup(){
    	var pop = window.open("juso","pop","width=570,height=420, scrollbars=yes, resizable=yes");
    }
    function jusoCallBack(roadFullAddr,roadAddrPart1,addrDetail,roadAddrPart2,engAddr, jibunAddr, zipNo, admCd, rnMgtSn, bdMgtSn,detBdNmList,bdNm,bdKdcd,siNm,sggNm,emdNm,liNm,rn,udrtYn,buldMnnm,buldSlno,mtYn,lnbrMnnm,lnbrSlno,emdNo){
		// 팝업페이지에서 주소입력한 정보를 받아서, 현 페이지에 정보를 등록합니다.
		
		document.form.dorojuso.value = roadAddrPart1;
		document.form.sangsejuso1.value=roadAddrPart2;
		document.form.sangsejuso2.value = addrDetail;
		document.form.zipcode.value = zipNo;
}
//휴대폰 인증
	var resnum = "";
	$(function() {
		$("#reqnum").click(function() {
			$.ajax({
				type:"post",
				dataType:"text",
				data:{phone:$("#phone").val()},
				url:"${pageContext.request.contextPath}/sendsms",
				success: function(data, textStatus) {
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
			if($("#inputnum").val()===resnum) {
				Swal.fire({
	    	        icon: 'success',
	    	        title: '인증 성공',
	    	        text: '인증이 완료되었습니다.',
	    	        confirmButtonText: "확인"
	    	    })
	    	    $("#confirm").css("display","none");
			} else {
				Swal.fire({
			        icon: 'error',
			        title: '입력 오류',
			        text: '정확한 숫자를 입력하세요',
			        confirmButtonText: "확인"
			    })
			}
			resnum="";
		});
	});