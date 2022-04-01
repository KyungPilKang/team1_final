//휴대폰 인증
    var resnum = "";
    	$(function() {
    		$("#reqnum").click(function() {
			if($("#phone").val()==''||$("#phone").val().length<11 || $("#phone").val().length>11){
				Swal.fire({
    			        icon: 'error',
    			        title: '입력 오류',
    			        text: '휴대폰 번호를 정확하게 입력하세요',
    			        confirmButtonText: "확인"
    			    })
			} 		$.ajax({
    				type:"post",
    				dataType:"text",
    				data:{phone:$("#phone").val()},
    				url:"http://localhost:8090/sendsms",
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
			if($("#phone").val()==''){
				Swal.fire({
					icon: 'warning',
    			    title: '입력 오류',
    			    text: '휴대폰 번호를 입력하세요.',
    			    confirmButtonText: "확인"
    			    })
			}else if($("#inputnum").val()==''){
					Swal.fire({
					icon: 'warning',
    			    title: '입력 오류',
    			    text: '인증번호를 입력해 주세요.',
    			    confirmButtonText: "확인"
    			    })
				}else if($("#inputnum").val()===resnum) {
    				Swal.fire({
    	    	        icon: 'success',
    	    	        title: '인증 성공',
    	    	        text: '인증이 완료되었습니다.',
    	    	        confirmButtonText: "확인"
    	    	    })
    	    	    $("#confirm").css("display","none");
    			}else{
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
    			    }).then(result =>{
						if (result.isConfirmed){
						$("#reqnum").click();
						Swal.fire('인증번호 재발송 성공', '휴대폰을 확인하세요', 'success')
						}
	
						})
    				}	
    			resnum="";
    		});
    	});
   
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
    	var pop = window.open("juso","pop","width=500,height=400, top=100, left=700, scrollbars=yes, resizable=yes");
    }
    function jusoCallBack(roadFullAddr,roadAddrPart1,addrDetail,roadAddrPart2,engAddr, jibunAddr, zipNo, admCd, rnMgtSn, bdMgtSn,detBdNmList,bdNm,bdKdcd,siNm,sggNm,emdNm,liNm,rn,udrtYn,buldMnnm,buldSlno,mtYn,lnbrMnnm,lnbrSlno,emdNo){
		// 팝업페이지에서 주소입력한 정보를 받아서, 현 페이지에 정보를 등록합니다.
		
		document.form.dorojuso.value = roadAddrPart1;
		document.form.sangsejuso1.value=roadAddrPart2;
		document.form.sangsejuso2.value = addrDetail;
		document.form.zipcode.value = zipNo;
}

	