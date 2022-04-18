<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<script src="https://cdn.jsdelivr.net/npm/sweetalert2@10"></script>
<script src="https://code.jquery.com/jquery-3.4.1.js"></script>
<script>
$(document).ready(function(){
Swal.fire({
	icon: 'success',
	title: '카카오로그인 성공',
	text: '확인을 누르면 메인화면으로 이동합니다.',
	confirmButtonText: "확인"
}).then(result => {
	
	
	opener.location.href="/home";
	window.close()
	});
})
</script>
<body>

</body>
</html>