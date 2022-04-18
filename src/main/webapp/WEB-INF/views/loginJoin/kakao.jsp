<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://cdn.jsdelivr.net/npm/sweetalert2@10"></script>
<script src="https://code.jquery.com/jquery-3.4.1.js"></script>
<script>

 $(document).ready(function(){


let provider_id = "${provider_id}";

let email = "${email}";

  $.ajax({
		type: "post",
		data: {
			 "provider_id":provider_id,
			"email":email, 
			"provider":"KAKAO"
			},
		dataType: "json",
		url: '/joinFormKakaoTemp',
		success: function(data){
			Swal.fire({
				icon: 'success',
				title: '카카오로그인 성공',
				text: '추가 정보를 입력하여 회원가입을 진행합니다.',
				confirmButtonText: "확인"
			}).then(result => {
				
				
				opener.join(data.provider_id,data.email,"KAKAO");
				window.close()
				});
			
 	},
 	error:function(error){
 		alert("error");
 	}
			  
 
		});  
});		  
</script>
</head>
<body>

					
</body>
</html>