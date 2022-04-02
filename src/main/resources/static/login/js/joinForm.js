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
		document.form.sangsejuso.value=roadAddrPart2+addrDetail;
}
//username db중복 체크
function usernameChk(){
var username = $('#username').val(); //id값이 "username"인 입력란의 값을 저장
	       
	        if(username==''){
	            	Swal.fire({
					icon: 'warning',
    			    title: '입력 오류',
    			    text: '아이디를 입력해주세요.',
    			    confirmButtonText: "확인"
    			    })
	    		}else{
	    			$.ajax({
		            url:"http://localhost:8090/usernameCheck", //Controller에서 인식할 주소
		            type:'post', //POST 방식으로 전달
		            
		            data:{username:username},
		            success:function(data){ //컨트롤러에서 넘어온 data값을 받는다 
		                if(data == "true"){ //true인 경우 사용불가
		                	Swal.fire({
							icon: 'warning',
    			  			title: '아이디 중복',
    			    		text: '다른 아이디를 입력해주세요.',
    			    		confirmButtonText: "확인"
    			    		})
		                } else { // 사용가능
		                	Swal.fire({
							icon: 'success',
    			  			title: '사용 가능',
    			    		text: '사용 가능한 아이디 입니다.',
    			    		confirmButtonText: "확인"
    			    		})
							}
		                    }
		        });
	    	}
	    }

 //이메일 db중복 체크
	    function emailChk(){
	       	var email1 = $("#email1").val();
			var email2 = $("#email2").val();
	        var Remail = email1+"@"+email2;
			$("#email").val(Remail);
	        var email = $('#email').val(); //id값이 "email"인 입력란의 값을 저장
	       
	        if(email1==''){
	            	Swal.fire({
					icon: 'warning',
    			    title: '입력 오류',
    			    text: '이메일 주소를 입력해주세요.',
    			    confirmButtonText: "확인"
    			    })
	    		}else{
	    			$.ajax({
		            url:"http://localhost:8090/emailCheck", //Controller에서 인식할 주소
		            type:'post', //POST 방식으로 전달
		            
		            data:{email:email},
		            success:function(data){ //컨트롤러에서 넘어온 data값을 받는다 
		                if(data == "true"){ //true인 경우 사용불가
		                	Swal.fire({
							icon: 'warning',
    			  			title: '이메일 중복',
    			    		text: '다른 이메일 주소를 입력해주세요.',
    			    		confirmButtonText: "확인"
    			    		})
		                } else { // 사용가능
		                	Swal.fire({
							icon: 'success',
    			  			title: '사용 가능',
    			    		text: '사용 가능한 이메일 주소 입니다.',
    			    		confirmButtonText: "확인"
    			    		})
							}
		                    }
		        });
	    	}
	    }
        

//닉네임 db중복 체크

    function nickcheck(){
        var nickname = $('#nickname').val(); //id값이 "nickname"인 입력란의 값을 저장
        var spe = nickname.search(/[`~!@@#$%^&*|₩₩₩'₩";:₩/?]/gi);
        if(nickname==''){
     		Swal.fire({
					icon: 'warning',
    			    title: '입력 오류',
    			    text: '사용할 닉네임을 입력해주세요',
    			    confirmButtonText: "확인"
    			    })
     	}else if(nickname.length < 2 || nickname.length > 10){
     		Swal.fire({
					icon: 'warning',
    			    title: '입력 오류',
    			    text: '닉네임은 2자이상 10자 미만으로 입력하세요',
    			    confirmButtonText: "확인"
    			    })
     	}else if(spe > 0){
     		Swal.fire({
					icon: 'warning',
    			    title: '입력 오류',
    			    text: '닉네임은 영문/숫자/한글만 사용 가능합니다',
    			    confirmButtonText: "확인"
    			    })
     	}else{
     		 $.ajax({
                 url:"http://localhost:8090/nicknameCheck", //Controller에서 인식할 주소
                 type:'post', //POST 방식으로 전달
                 data:{nickname:nickname},
                 success:function(data){ //컨트롤러에서 넘어온 data값을 받는다 
                     if(data == "true"){ //true인 경우 사용불가
                     		Swal.fire({
							icon: 'warning',
    			  			title: '닉네임 중복',
    			    		text: '다른 닉네임을 입력해주세요.',
    			    		confirmButtonText: "확인"
    			    		})
                     } else { // 사용가능
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
    
   
   // 비밀번호 유효성 체크
    function pwcheck(){
    	 var pw1 = $("#password1").val();
    	 var num = pw1.search(/[0-9]/g);
    	 var eng = pw1.search(/[a-z]/ig);
    	 var spe = pw1.search(/[`~!@@#$%^&*|₩₩₩'₩";:₩/?]/gi);
		
    	 if(pw1=='') {
    		$('#pw_ok').val("비밀번호를 입력하세요");
          	$('#pw_ok').css("color", "orangered");
    	 }else if(pw1.length < 8 || pw1.length > 16){
    		$('#pw_ok').val("8자리 ~ 16자리 이내로 입력해주세요.");
         	$('#pw_ok').css("color", "orangered");
    	 }else if(pw1.search(/\s/) != -1){
    		$('#pw_ok').val("비밀번호는 공백 없이 입력해주세요.");       
          	$('#pw_ok').css("color", "orangered");
    	 }else if( (num < 0 && eng < 0) || (eng < 0 && spe < 0) || (spe < 0 && num < 0) ){
    		$('#pw_ok').val("영문,숫자, 특수문자 중 2가지 이상을 혼합하여 입력해주세요.");
           	$('#pw_ok').css("color", "orangered");
    	 }else {
    		$('#pw_ok').val("사용 가능합니다");  	
         	$('#pw_ok').css("color", "green");	 
    	 }
    }
    
      function pwcheck2(){
	var pw1 = $("#password1").val();
	var pw2 = $("#password2").val();
		if(pw1!==pw2){
			$('#pw_ok2').val("비밀번호가 일치하지 않습니다");
          	
          	$('#pw_ok2').css("color", "orangered");
		}else{
			$('#pw_ok2').val("비밀번호가 일치합니다");
        
         	$('#pw_ok2').css("color", "green");	 
		}
	}

	