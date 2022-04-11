
//체크박스 두개중 한개만 선택되도록 컨트롤
$(function() {
	$('input[type="checkbox"]').click(function() {
		if($(this).prop('checked')){
			$('input[type="checkbox"]').prop('checked',false);
			$(this).prop('checked',true);
			}	
		})
		
		//회원탈퇴 관련 알럿
		$("#withdrawal").click(function(){
				Swal.fire({
    			        icon: 'warning',
    			        title: '회원 탈퇴',
    			        text: '정말로 탈퇴하시겠습니까?',
    			        showCancelButton: true, // cancel버튼 보이기. 기본은 원래 없음
    					confirmButtonColor: '#3085d6', // confrim 버튼 색깔 지정
   						cancelButtonColor: '#d33', // cancel 버튼 색깔 지정
    					confirmButtonText: '확인', // confirm 버튼 텍스트 지정
   						cancelButtonText: '취소', // cancel 버튼 텍스트 지정
    					reverseButtons: true // 버튼 순서 거꾸로
    			    }).then(result =>{
						if (result.isConfirmed){
						Swal.fire('탈퇴 완료','이용해주셔서 감사합니다.','success')
						$("form[name=form]").submit();
						} 
				
						})
    					
		})
})
	
	