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

<!-- Favicon -->
<link href="${pageContext.request.contextPath}/resources/asset/needsfull.ico" rel="icon">

<!-- Google Web Fonts -->
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Stylish&display=swap" rel="stylesheet">
<link href="https://fonts.googleapis.com/css2?family=Heebo:wght@400;500;600&family=Nunito:wght@600;700;800&display=swap" rel="stylesheet">

<!-- Icon Font Stylesheet -->
<link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/css/all.min.css" rel="stylesheet">
<link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.4.1/font/bootstrap-icons.css" rel="stylesheet">

<!-- Libraries Stylesheet -->
<link href="${pageContext.request.contextPath}/resources/freelance/lib/animate/animate.min.css" rel="stylesheet">
<link href="${pageContext.request.contextPath}/resources/freelance/lib/owlcarousel/assets/owl.carousel.min.css" rel="stylesheet">

<!-- Customized Bootstrap Stylesheet -->
<link href="${pageContext.request.contextPath}/resources/freelance/css/bootstrap.min.css" rel="stylesheet">

<!-- Template Stylesheet -->
<link href="${pageContext.request.contextPath}/resources/freelance/css/style.css" rel="stylesheet">

<!-- VideoJS -->
<link href="https://vjs.zencdn.net/7.10.2/video-js.css" rel="stylesheet" />
<script src="https://vjs.zencdn.net/7.10.2/video.min.js"></script>
<link href="https://unpkg.com/@silvermine/videojs-quality-selector/dist/css/quality-selector.css" rel="stylesheet">
<script src="https://unpkg.com/@silvermine/videojs-quality-selector/dist/js/silvermine-videojs-quality-selector.min.js"></script>

<link href="${pageContext.request.contextPath}/resources/freelance/css/myStyle.css" rel="stylesheet">
</head>

<body>
	<!-- Spinner Start -->
	<div id="spinner" class="show bg-white position-fixed translate-middle w-100 vh-100 top-50 start-50 d-flex align-items-center justify-content-center">
		<div class="spinner-border text-primary" style="width: 3rem; height: 3rem;" role="status">
			<span class="resfreespan sr-only">Loading...</span>
		</div>
	</div>
	<!-- Spinner End -->


	<!-- Navbar Start -->
	<nav class="navbar navbar-expand-lg bg-white navbar-light shadow sticky-top p-0">
		<a href="/resfreeform" class="navbar-brand d-flex align-items-center px-4 px-lg-5">
			<h1 class="m-0 text-primary">
				<i class="fa fa-book me-3"></i>NEEDSFULL
			</h1>
		</a>
		<button type="button" class="navbar-toggler me-4" data-bs-toggle="collapse" data-bs-target="#navbarCollapse">
			<span class="resfreespan navbar-toggler-icon"></span>
		</button>
		<div class="collapse navbar-collapse" id="navbarCollapse">
			<div class="navbar-nav ms-auto p-4 p-lg-0">
				<div class="nav-item dropdown">
					<a href="#" class="nav-link" data-bs-toggle="dropdown">프리랜서</a>
					<div class="dropdown-menu fade-down m-0">
						<a href=# class="dropdown-item">프리랜서 등록</a>
						<a href=# class="dropdown-item">프리랜서 조회</a>
					</div>
				</div>
				<div class="nav-item dropdown">
					<a href="#" class="nav-link" data-bs-toggle="dropdown">강의</a>
					<div class="dropdown-menu fade-down m-0">
						<a href=# class="dropdown-item">강의 등록</a>
						<a href=# class="dropdown-item">강의 조회</a>
					</div>
				</div>
				<a href="about.html" class="nav-item nav-link">마이페이지</a>
				<a href="courses.html" class="nav-item nav-link">고객센터</a>
				<a href=# class="nav-item nav-link">로그아웃</a>
			</div>
		</div>
	</nav>
	<!-- Navbar End -->


	<!-- Header Start -->
	<div class="container-fluid bg-primary py-5 mb-5 page-header">
		<div class="container py-5">
			<div class="row justify-content-center">
				<div class="col-lg-10 text-center">
					<h1 class="display-3 text-white animated slideInDown">프리랜서 매칭</h1>
				</div>
			</div>
		</div>
	</div>
	<!-- Header End -->

	<!-- Contact Start -->
	<div class="container-xxl py-5 wow fadeInUp" data-wow-delay="0.1s">
		<div class="container">
			<div class="row gy-5 gx-4">
				<div class="col-lg-8">
					<div class="d-flex align-items-center mb-5">
						<img class="flex-shrink-0 img-fluid border rounded" src="#" alt="" style="width: 80px; height: 80px;">
						<div class="text-start ps-4">
							<h2 class="mb-3">프리랜서 등록 제목</h2>
							<span class="resfreespan text-truncate me-3"><i class="fa fa-map-marker-alt text-primary me-2"></i>지역</span> <span class="resfreespan text-truncate me-3"><i class="far fa-clock text-primary me-2"></i>계약 형태(작업시간)</span> <span class="resfreespan text-truncate me-3"><i class="far fa-money-bill-alt text-primary me-2"></i>계약 금액</span> <span class="resfreespan text-truncate"><i class="far fa-calendar-alt text-primary me-2"></i>등록 일자</span>
						</div>
					</div>

					<div class="mb-5">
						<h3 class="mb-3">홍보 영상</h3>
						<br>
						<video id="myVideo" class="video-js bg-light rounded">
						</video>
						<br> <br>
						<h3 class="mb-3">프리랜서 소개</h3>
						<p>Lorem ipsum dolor sit, amet consectetur adipisicing elit. Atque, velit necessitatibus quis numquam illo eligendi itaque accusantium perspiciatis perferendis, cumque inventore omnis labore? Hic laboriosam totam consequatur et ad aliquid.</p>
					</div>
				</div>

				<div class="col-lg-4">
					<div class="bg-light rounded p-5 mb-4 wow slideInUp" data-wow-delay="0.1s">
						<h3 class="mb-4">
							<i class="fa-solid fa-user text-primary me-2"></i>기본 정보
						</h3>
						<p>
							<i class="fa fa-angle-right text-primary me-2"></i>나이 : 30세
						</p>
						<p>
							<i class="fa fa-angle-right text-primary me-2"></i>성별 : 여성
						</p>
						<p class="m-0">
							<i class="fa fa-angle-right text-primary me-2"></i>경력 : 1년 이상 3년 미만
						</p>
					</div>
					<div class="bg-light rounded p-5 mb-4 wow slideInUp" data-wow-delay="0.1s">
						<h3 class="mb-4">
							<i class="fa-solid fa-chalkboard-user text-primary me-2"></i>상세 정보
						</h3>
						<p>
							<i class="fa fa-angle-right text-primary me-2"></i>학력 : 세종대학교(석사)
						</p>
						<p>
							<i class="fa fa-angle-right text-primary me-2"></i>전공 : 경제학과
						</p>
						<p>
							<i class="fa fa-angle-right text-primary me-2"></i>대상 학년 : 중학생
						</p>
						<p class="m-0">
							<i class="fa fa-angle-right text-primary me-2"></i>대상 과목 : 사회
						</p>
					</div>
					<div class="bg-light rounded p-5 wow slideInUp" data-wow-delay="0.1s">
						<h3 class="mb-4"><i class="fa-solid fa-file-circle-check text-primary me-2"></i>첨부파일 확인</h3>
						<button class="btn btn-primary w-100">학력증명서 확인</button>
						<br> <br>
						<button class="btn btn-primary w-100">포트폴리오 확인</button>
					</div>
				</div>
			</div>
		</div>
		<div class="row g-4">
			<div class="row text-center col-lg-4 col-md-12 wow fadeInUp" data-wow-delay="0.3s" style="width: 30%; float: none; margin-left: 100px;">
				<div class="row g-3">
					<div class="col-12">
						<div class="col-12 mt-4">
							<button id="canclebtn" class="btn btn-outline-primary w-50 py-3" onclick="window.location='/resfreeform'">목록 으로</button>
						</div>
					</div>
				</div>
			</div>
			<div class="row text-center col-lg-4 col-md-12 wow fadeInUp" data-wow-delay="0.3s" style="width: 30%; float: none;">
				<div class="row g-3">
					<div class="col-12">
						<div class="col-12 mt-4">
							<button id="contractbtn" class="btn btn-outline-primary w-50 py-3">계약 하기</button>
						</div>
					</div>
				</div>
			</div>
			<div class="row text-center col-lg-4 col-md-12 wow fadeInUp" data-wow-delay="0.3s" style="width: 30%; float: none;">
				<div class="row g-3">
					<div class="col-12">
						<div class="col-12 mt-4">
							<button id="qnabtn" class="btn btn-outline-primary w-50 py-3">문의 하기</button>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- Contact End -->


	<!-- Footer Start -->
	<div class="container-fluid bg-dark text-light footer pt-5 mt-5 wow fadeIn" data-wow-delay="0.1s">
		<div class="container">
			<div class="copyright">
				<div class="row">
					<div class="col-md-6 text-center text-md-start mb-3 mb-md-0">
						&copy;
						<a class="border-bottom" href="#">Your Site Name</a>
						, All Right Reserved.

						<!--/*** This template is free as long as you keep the footer author’s credit link/attribution link/backlink. If you'd like to use the template without the footer author’s credit link/attribution link/backlink, you can purchase the Credit Removal License from "https://htmlcodex.com/credit-removal". Thank you for your support. ***/-->
						Designed By
						<a class="border-bottom" href="https://htmlcodex.com">HTML Codex</a>
						<br> <br> Distributed By
						<a class="border-bottom" href="https://themewagon.com">ThemeWagon</a>
					</div>
					<div class="col-md-6 text-center text-md-end">
						<div class="footer-menu">
							<a href="">Home</a>
							<a href="">Cookies</a>
							<a href="">Help</a>
							<a href="">FQAs</a>
						</div>
					</div>
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
		$(document).ready(function() {
			let options = {
				sources : [ {
					src : "${pageContext.request.contextPath}/resources/test.mp4",
					type : "video/mp4"
				} ],
				playbackRates : [ .5, .75, 1, 1.25, 1.5 ],
				/* poster: , */
				controls : true,
				preload : "auto",
				width : 720,
				height : 380,
				controlBar : {
					playToggle : true,
					pictureInPictureToggle : true,
					remainingTimeDisplay : true,
					progressControl : true,
					qualitySelector : true,
				}
			};

			var player = videojs('myVideo', options);
			player.src([ {
				src : "${pageContext.request.contextPath}/resources/test.mp4",
				type : 'video/mp4',
				label : '1080P',
				selected : true,
			}]);
		})
	</script>
</body>

</html>