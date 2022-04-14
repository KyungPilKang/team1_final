<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>NEEDSFULL - 초중등 교육 매칭 플랫폼</title>
<meta content="width=device-width, initial-scale=1.0" name="viewport">
<meta content="" name="keywords">
<meta content="" name="description">
<!--timepicker-->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/timepicker/1.3.5/jquery.timepicker.min.css">
<script src="https://cdnjs.cloudflare.com/ajax/libs/timepicker/1.3.5/jquery.timepicker.min.js"></script>

<!-- datepicker-->
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.min.js" integrity="sha512-894YE6QWD5I59HgZOGReFYm4dnWc1Qt5NtvYSaNcOP+u1T9qYdvdihz0PPSiiqn/+/3e7Jo4EaG7TubfWGUrMQ==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jqueryui/1.12.1/jquery-ui.min.js" integrity="sha512-uto9mlQzrs59VwILcLiRYeLKPPbS/bT71da/OEBYEwcdNUk8jYIy+D176RYoop1Da+f9mvkYrmj5MCLZWEtQuA==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/jqueryui/1.12.1/jquery-ui.min.css" integrity="sha512-aOG0c6nPNzGk+5zjwyJaoRUgCdOrfSDhmMID2u4+OIslr0GjpLKo7Xm0Ao3xmpM4T8AmIouRkqwj1nrdVsLKEQ==" crossorigin="anonymous" referrerpolicy="no-referrer" />

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
<link href="${pageContext.request.contextPath}/resources/freelance/lib/animate/animate.min.css" rel="stylesheet">
<link href="${pageContext.request.contextPath}/resources/freelance/lib/owlcarousel/assets/owl.carousel.min.css" rel="stylesheet">

<!-- Customized Bootstrap Stylesheet -->
<link href="${pageContext.request.contextPath}/resources/freelance/css/bootstrap.min.css" rel="stylesheet">

<!-- Template Stylesheet -->
<link href="${pageContext.request.contextPath}/resources/freelance/css/style.css" rel="stylesheet">

<style>
.parent {
	width: 70%;
	margin: 10px auto;
	display: flex;
}

.first {
	flex: 1;
	margin: 0px 5%;
	width: 20%;
	box-sizing: border-box;
}

.second {
	flex: 1;
	margin: 0px 5%;
	width: 20%;
	box-sizing: border-box;
}

.third {
	flex: 1;
	margin: 0px 5%;
	width: 20%;
	box-sizing: border-box;
}

.fourth {
	flex: 1;
	margin: 0px 5%;
	width: 20%;
	box-sizing: border-box;
}

* {
	font-family: 'Stylish', sans-serif;
}
</style>
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
	<jsp:include page="/WEB-INF/views/bookstore/header.jsp"/>
	<!-- Navbar End -->

	<!-- Header Start -->
	<div class="container-fluid bg-primary py-5 mb-5 page-header">
		<div class="container py-5">
			<div class="row justify-content-center">
				<div class="col-lg-10 text-center">
					<h1 class="display-3 text-white animated slideInDown">Welcome To NEEDSFULL</h1>
				</div>
			</div>
		</div>
	</div>
	<!-- Header End -->



	<!-- Content Start -->
	<div class="container-xxl py-5">
		<div class="container">
			<div class="row g-4">
				<div class="col-lg-3 col-sm-6 wow fadeInUp" data-wow-delay="0.1s">
					<div class="service-item text-center pt-3">
						<div class="p-4">
							<i class="fa fa-3x fa-graduation-cap text-primary mb-4"></i>
							<h5 class="mb-3">학생 맞춤형 스터디</h5>
							<p>학생이 원하는 조건에 만족하는 최적의 스터디를 검색하고 가입해보세요</p>
						</div>
					</div>
				</div>
				<div class="col-lg-3 col-sm-6 wow fadeInUp" data-wow-delay="0.3s">
					<div class="service-item text-center pt-3">
						<div class="p-4">
							<i class="fa fa-3x fa-globe text-primary mb-4"></i>
							<h5 class="mb-3">온라인 매칭 시스템</h5>
							<p>온라인 환경에서 원클릭으로 스터디 매칭이 무료로 진행됩니다</p>
						</div>
					</div>
				</div>
				<div class="col-lg-3 col-sm-6 wow fadeInUp" data-wow-delay="0.5s">
					<div class="service-item text-center pt-3">
						<div class="p-4">
							<i class="fa fa-3x fa-home text-primary mb-4"></i>
							<h5 class="mb-3">자기주도적 학습</h5>
							<p>학생이 직접 스터디를 관리하고 주도적 참여형 스터디를 제공합니다</p>
						</div>
					</div>
				</div>
				<div class="col-lg-3 col-sm-6 wow fadeInUp" data-wow-delay="0.7s">
					<div class="service-item text-center pt-3">
						<div class="p-4">
							<i class="fa fa-3x fa-book-open text-primary mb-4"></i>
							<h5 class="mb-3">합리적 교재 구매</h5>
							<p>할인된 가격에 내신 교재부터 학년별 필독서까지 구매해보세요</p>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- Service End -->

	<!-- Categories Start -->
	<div class="container-xxl py-5 category">
		<div class="container">
			<div class="text-center wow fadeInUp" data-wow-delay="0.1s">
				<h4 class="section-title bg-white text-center text-primary px-3">스터디 매칭</h4>
				<h1 class="mb-5">지금 가입하시고 온라인으로 스터디를 참여해보세요</h1>
			</div>
			<div class="row g-3">
				<div class="col-lg-7 col-md-6">
					<div class="row g-3">
						<div class="col-lg-12 col-md-12 wow zoomIn" data-wow-delay="0.1s">
							<a id="go_study1" class="position-relative d-block overflow-hidden" href="/studymain">
								<img class="img-fluid" src="${pageContext.request.contextPath}/resources/freelance/img/cat-1.jpg" alt="">
								<div class="bg-white text-center position-absolute bottom-0 end-0 py-2 px-3" style="margin: 1px;">
									<h5 class="m-0">내신 준비</h5>
									<small class="text-primary">${ns}개 개설중</small>
								</div>
							</a>
						</div>
						<div class="col-lg-6 col-md-12 wow zoomIn" data-wow-delay="0.3s">
							<a id="go_study2" class="position-relative d-block overflow-hidden" href="/studymain">
								<img class="img-fluid" src="${pageContext.request.contextPath}/resources/freelance/img/cat-2.jpg" alt="">
								<div class="bg-white text-center position-absolute bottom-0 end-0 py-2 px-3" style="margin: 1px;">
									<h5 class="m-0">시험 준비</h5>
									<small class="text-primary">${sh}개 개설중</small>
								</div>
							</a>
						</div>
						<div class="col-lg-6 col-md-12 wow zoomIn" data-wow-delay="0.5s">
							<a id="go_study3" class="position-relative d-block overflow-hidden" href="/studymain">
								<img class="img-fluid" src="${pageContext.request.contextPath}/resources/freelance/img/cat-3.jpg" alt="">
								<div class="bg-white text-center position-absolute bottom-0 end-0 py-2 px-3" style="margin: 1px;">
									<h5 class="m-0">경시대회 준비</h5>
									<small class="text-primary">${gs}개 개설중</small>
								</div>
							</a>
						</div>
					</div>
				</div>
				<div class="col-lg-5 col-md-6 wow zoomIn" data-wow-delay="0.7s" style="min-height: 350px;">
					<a id="go_study4" class="position-relative d-block h-100 overflow-hidden" href="/studymain">
						<img class="img-fluid position-absolute w-100 h-100" src="${pageContext.request.contextPath}/resources/freelance/img/cat-4.jpg" alt="" style="object-fit: cover;">
						<div class="bg-white text-center position-absolute bottom-0 end-0 py-2 px-3" style="margin: 1px;">
							<h5 class="m-0">온라인 북클럽</h5>
							<small class="text-primary">${bk}개 개설중</small>
						</div>
					</a>
				</div>
			</div>
		</div>
	</div>

	<!-- About Start -->
	<div class="container-xxl py-5">
		<div class="container">
			<div class="row g-5">
				<div class="col-lg-6 wow fadeInUp" data-wow-delay="0.1s" style="min-height: 400px;">
					<div class="position-relative h-100">
						<img class="img-fluid position-absolute w-100 h-100" src="${pageContext.request.contextPath}/resources/freelance/img/about.jpg" alt="" style="object-fit: cover;">
					</div>
				</div>
				<div class="col-lg-6 wow fadeInUp" data-wow-delay="0.3s">
					<h4 class="section-title bg-white text-start text-primary pe-3">교재 장터</h4>
					<h1 class="mb-5">합리적인 가격과 품질</h1>
					<p class="mb-4" style="font-weight:bold;">초/중등 교육에 필요한 교재를 합리적인 가격에 구매하세요</p>
					<p class="mb-5" style="font-weight:bold;">회원가입 후 이용하실 수 있습니다</p>
					<div class="row gy-2 gx-4 mb-4" style="font-weight:bold;">
						<div class="col-sm-6">
							<p class="mb-0">
								<i class="fa fa-arrow-right text-primary me-2"></i>초/중등 내신 참고서
							</p>
						</div>
						<div class="col-sm-6">
							<p class="mb-0">
								<i class="fa fa-arrow-right text-primary me-2"></i>자격증 시험 교재
							</p>
						</div>
						<div class="col-sm-6">
							<p class="mb-0">
								<i class="fa fa-arrow-right text-primary me-2"></i>경시대회 문제집
							</p>
						</div>
						<div class="col-sm-6">
							<p class="mb-0">
								<i class="fa fa-arrow-right text-primary me-2"></i>온라인 강의 교재
							</p>
						</div>
						<div class="col-sm-6">
							<p class="mb-0">
								<i class="fa fa-arrow-right text-primary me-2"></i>초/중등 필독서
							</p>
						</div>
					</div>
					<a id="go_store" class="btn btn-primary py-3 px-5 mt-2" href="/book-store">교재장터로 이동</a>
				</div>
			</div>
		</div>
	</div>
	<!-- About End -->

	<!-- Content End -->


	<!-- Footer Start -->
	<div class="container-fluid bg-dark text-light footer pt-5 mt-5 wow fadeIn" data-wow-delay="0.1s">
		<div class="container">
			<div class="copyright">
				<div class="row">
					<div class="col-md-6 text-center text-md-start mb-3 mb-md-0">
						&copy;
						<a class="border-bottom" href="#">NEEDSFULL</a>
						, All Right Reserved.

						<!--/*** This template is free as long as you keep the footer author’s credit link/attribution link/backlink. If you'd like to use the template without the footer author’s credit link/attribution link/backlink, you can purchase the Credit Removal License from "https://htmlcodex.com/credit-removal". Thank you for your support. ***/-->
						Designed By
						<a class="border-bottom" href="https://htmlcodex.com">HTML Codex</a>
						<br> <br> Distributed By
						<a class="border-bottom" href="https://themewagon.com">ThemeWagon</a>
					</div>
					<!-- <div class="col-md-6 text-center text-md-end">
                        <div class="footer-menu">
                            <a href="">Home</a>
                            <a href="">Cookies</a>
                            <a href="">Help</a>
                            <a href="">FQAs</a>
                        </div>
                    </div> -->
				</div>
			</div>
		</div>
	</div>
	<!-- Footer End -->

	<!-- Back to Top -->
	<a href="#" class="btn btn-lg btn-primary btn-lg-square back-to-top">
		<i class="bi bi-arrow-up"></i>
	</a>


	<!-- JavaScript Libraries -->
	<script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/js/bootstrap.bundle.min.js"></script>
	<script src="${pageContext.request.contextPath}/resources/freelance/lib/wow/wow.min.js"></script>
	<script src="${pageContext.request.contextPath}/resources/freelance/lib/easing/easing.min.js"></script>
	<script src="${pageContext.request.contextPath}/resources/freelance/lib/waypoints/waypoints.min.js"></script>
	<script src="${pageContext.request.contextPath}/resources/freelance/lib/owlcarousel/owl.carousel.min.js"></script>

	<!-- Template Javascript -->
	<script src="${pageContext.request.contextPath}/resources/freelance/js/main.js"></script>

	<!-- DIY -->
	<script src="https://cdn.jsdelivr.net/npm/sweetalert2@10"></script>
	<script>
		let no="<c:out value='${no}'/>";
		console.log(no);
		$('#go_study1').click(function(e){
			if(no==null||no==undefined||no==""){
				Swal.fire({
					title: "세션 오류",
					text: "로그인 후 이용가능합니다",
					icon: "warning",
					confirmButtonText: "확인",
					allowOutsideClick: false,
					customClass: {
						content: "swal_text",
						confirmButton: "swal_confirm",
						cancelButton: "swal_cancle"
					}
				})
				e.preventDefault();
			}
		})
		$('#go_study2').click(function(e){
			if(no==null||no==undefined||no==""){
				Swal.fire({
					title: "세션 오류",
					text: "로그인 후 이용가능합니다",
					icon: "warning",
					confirmButtonText: "확인",
					allowOutsideClick: false,
					customClass: {
						content: "swal_text",
						confirmButton: "swal_confirm",
						cancelButton: "swal_cancle"
					}
				})
				e.preventDefault();
			}
		})
		$('#go_study3').click(function(e){
			if(no==null||no==undefined||no==""){
				Swal.fire({
					title: "세션 오류",
					text: "로그인 후 이용가능합니다",
					icon: "warning",
					confirmButtonText: "확인",
					allowOutsideClick: false,
					customClass: {
						content: "swal_text",
						confirmButton: "swal_confirm",
						cancelButton: "swal_cancle"
					}
				})
				e.preventDefault();
			}
		})
		$('#go_study4').click(function(e){
			if(no==null||no==undefined||no==""){
				Swal.fire({
					title: "세션 오류",
					text: "로그인 후 이용가능합니다",
					icon: "warning",
					confirmButtonText: "확인",
					allowOutsideClick: false,
					customClass: {
						content: "swal_text",
						confirmButton: "swal_confirm",
						cancelButton: "swal_cancle"
					}
				})
				e.preventDefault();
			}
		})
		// $('#go_store').click(function(e){
		// 	if(no==null||no==undefined||no==""){
		// 		Swal.fire({
		// 			title: "세션 오류",
		// 			text: "로그인 후 이용가능합니다",
		// 			icon: "warning",
		// 			confirmButtonText: "확인",
		// 			allowOutsideClick: false,
		// 			customClass: {
		// 				content: "swal_text",
		// 				confirmButton: "swal_confirm",
		// 				cancelButton: "swal_cancle"
		// 			}
		// 		})
		// 		e.preventDefault();
		// 	}
		// })
	</script>
</body>
</html>