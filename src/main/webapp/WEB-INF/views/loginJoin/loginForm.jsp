<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="utf-8">
<title>eLEARNING - eLearning HTML Template</title>
<meta content="width=device-width, initial-scale=1.0" name="viewport">
<meta content="" name="keywords">
<meta content="" name="description">

<!-- Favicon -->
<link href="${pageContext.request.contextPath}/resources/asset/needsfull.ico" rel="icon">

<!-- Google Web Fonts -->
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Stylish&display=swap" rel="stylesheet">
<link href="https://fonts.googleapis.com/css2?family=Heebo:wght@400;500;600&family=Nunito:wght@600;700;800&display=swap" rel="stylesheet">

<!-- Icon Font Stylesheet -->
<link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.10.0/css/all.min.css" rel="stylesheet">
<link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.4.1/font/bootstrap-icons.css" rel="stylesheet">

<!-- Libraries Stylesheet -->
<link href="${pageContext.request.contextPath}/resources/login/lib/animate/animate.min.css" rel="stylesheet">
<link href="${pageContext.request.contextPath}/resources/login/lib/owlcarousel/assets/owl.carousel.min.css" rel="stylesheet">

<!-- Customized Bootstrap Stylesheet -->
<link href="${pageContext.request.contextPath}/resources/login/css/bootstrap.min.css" rel="stylesheet">

<!-- Template Stylesheet -->
<link href="${pageContext.request.contextPath}/resources/login/css/style.css" rel="stylesheet">
<link href="${pageContext.request.contextPath}/resources/login/css/loginForm.css" rel="stylesheet">

</head>

<body>
	<!-- Spinner Start -->
	<div id="spinner" class="show bg-white position-fixed translate-middle w-100 vh-100 top-50 start-50 d-flex align-items-center justify-content-center">
		<div class="spinner-border text-primary" style="width: 3rem; height: 3rem;" role="status">
			<span class="sr-only">Loading...</span>
		</div>
	</div>
	<!-- Spinner End -->


	<!-- Navbar Start -->
	<nav class="navbar navbar-expand-lg bg-white navbar-light shadow sticky-top p-0">
		<a href="/home" class="navbar-brand d-flex align-items-center px-4 px-lg-5">
			<h1 class="m-0 text-primary">
				<i class="fa fa-book me-3"></i>NEESFULL
			</h1>
		</a>
		<button type="button" class="navbar-toggler me-4" data-bs-toggle="collapse" data-bs-target="#navbarCollapse">
			<span class="navbar-toggler-icon"></span>
		</button>
	</nav>
	<!-- Navbar End -->

	<!-- Header Start -->
		
	<div class="container-fluid bg-primary py-5 mb-5 page-header">
		<div class="container py-5">
			<div class="row justify-content-center">
				<div class="col-lg-10 text-center">
					<h1 class="display-3 text-white animated slideInDown">로그인 페이지</h1>
				</div>
			</div>
		</div>
	</div>
	<!-- Header End -->

	<!-- Contact Start -->
	<div class="container-xxl py-10 mt-5">
		<div class="container">
			<div class="text-center wow fadeInUp" data-wow-delay="0.1s">
				<h6 class="section-title bg-white text-center text-primary px-3">LOG IN</h6>
				<div class="row text-center col-lg-4 col-md-12 wow fadeInUp" data-wow-delay="0.5s" style="width: 30%; float: none; margin: 0 auto">
				<!-- 	<form method="post" action="/login"> -->
						<div class="row g-3">
							<div class="col-12">
								<div class="form-floating">
									<input type="text" class="form-control" name="username" id="username" placeholder="id">
									<label for="id">ID</label>
								</div>
							</div>
							<div class="col-12">
								<div class="form-floating">
									<input type="password" class="form-control" name="username" id="password" placeholder="password">
									<label for="password">PASSWORD</label>
								</div>
							</div>
							<!--비밀번호 3회 이상 오입력시 캡챠 활성화 -->
							<div class="captcha" id=capchacon style="display: none;">
								<img src="/captcha" id="cap_img">
								<div class="mt-2 mb-2">
									<input class="form-control" type="text" id="userin" name="userin">
								</div>
								<input class="btn btn-success" type="button" onclick="caprefesh()" value="새로고침">
								<input class="btn btn-success" type="button" id="captchavalid" value="확인하기">
							</div>
							
							
								<div class="col-12">
									<a href="https://kauth.kakao.com/oauth/authorize?response_type=code&client_id=94fc26e459f927ce79257dc6c17527a7&redirect_uri=http://101.101.218.164:8090/auth/kakao/callback"
										onclick="window.open(this.href, '_blank', 'width=800,height=600, top=100, left=700, scrollbars=yes, resizable=yes'); return false;">
										<img src="${pageContext.request.contextPath}/resources/login/kakao.png" style="width:100%; height:58px;">
									</a>
								</div>
							
							
								<div class="col-12" style="max-height:58px;">
									<a id="naverlogin" href="https://nid.naver.com/oauth2.0/authorize?client_id=24OF3VzEePL0jwU_gwRz&response_type=code&redirect_uri=http://101.101.218.164:8090/auth/naver/callback&state=oauth_state"
									onclick="window.open(this.href, '_blank', 'width=800,height=600, top=100, left=700, scrollbars=yes, resizable=yes'); return false;">
									<img src="${pageContext.request.contextPath}/resources/login/naver.png" style="width:100%; height:58px;">
									</a>
								</div>
							
							<div class="d-flex justify-content-center">
							<div class="col-5">
								<button style="border-radius:5px;" class="d-grid gap-2 btn col-12 btn-primary btn-lg"  onclick="login()" type="button">로그인</button>
							</div>
							<div class="col-1"></div>
							<div class="col-5">
								<a href="termsagree" style="border-radius:5px;"  class="d-grid gap-2 btn col-12 btn-primary btn-lg">회원가입</a>
							</div>
							</div>
						</div>
					<!-- </form> -->
				</div>
			</div>
		</div>
	</div>
	
<form id="form1"name="form1" method="POST" action="/joinFormKakao">
	<input type="hidden" name="provider_id" id="provider_id1">
	<input type="hidden" name="email" id="email1">
</form>
<form id="form2" name="form2" method="POST" action="/joinFormNaver">
	<input type="hidden" name="provider_id" id="provider_id2">
	<input type="hidden" name="email" id="email2">
</form>
	
	<!-- Contact End -->

	<!-- JavaScript Libraries -->
	<script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/js/bootstrap.bundle.min.js"></script>
	<script src="${pageContext.request.contextPath}/resources/login/lib/wow/wow.min.js"></script>
	<script src="${pageContext.request.contextPath}/resources/login/lib/easing/easing.min.js"></script>
	<script src="${pageContext.request.contextPath}/resources/login/lib/waypoints/waypoints.min.js"></script>
	<script src="${pageContext.request.contextPath}/resources/login/lib/owlcarousel/owl.carousel.min.js"></script>
	<script src="https://cdn.jsdelivr.net/npm/sweetalert2@10"></script>
	<!-- Template Javascript -->
	<script src="${pageContext.request.contextPath}/resources/login/js/main.js"></script>
	<script src="${pageContext.request.contextPath}/resources/login/js/loginForm.js"></script>

</body>
<script>
function join(provider_id, email, provider) {
	
	let from = provider;
	
	if(provider=="KAKAO"){
		$("#provider_id1").val(provider_id);
		$("#email1").val(email);
		$("form[name=form1]").submit();
	}else if(provider=="NAVER"){
		$("#provider_id2").val(provider_id);
		$("#email2").val(email);
		$("form[name=form2]").submit();
	}
}
</script>
</html>