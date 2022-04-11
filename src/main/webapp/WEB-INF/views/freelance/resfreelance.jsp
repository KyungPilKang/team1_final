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

	<!-- Courses Start -->
	<div class="container-xxl py-5">
		<div class="container">
			<div class="text-center wow fadeInUp" data-wow-delay="0.1s">
				<h5 class="section-title bg-white text-center text-primary px-3">매칭 완료</h5>
				<h1 class="mb-5 mt-2">다음의 프리랜서들이 매칭되었습니다</h1>
			</div>
			<div class="row g-4 justify-content-center wow fadeInUp">
				<div class="tab-content">
					<div id="tab-1" class="tab-pane fade show p-0 active">
						<div class="job-item p-4 mb-4">
							<div class="row g-4">
								<div class="col-sm-12 col-md-4 d-flex align-items-center" style="width: 45%; float: none; margin-left: 100px;">
									<img class="flex-shrink-0 img-fluid border rounded" src="#" alt="" style="width: 80px; height: 80px;">
									<div class="text-start ps-4">
										<h3 class="mb-3">프리랜서 등록 제목</h3>
										<span class="resfreespan text-truncate me-3">
											<i class="fa fa-map-marker-alt text-primary me-2"></i>지역
										</span>
										<span class="resfreespan text-truncate me-3">
											<i class="far fa-clock text-primary me-2"></i>계약 형태(작업시간)
										</span>
										<span class="resfreespan text-truncate me-3">
											<i class="far fa-money-bill-alt text-primary me-2"></i>계약 금액
										</span>
										<span class="resfreespan text-truncate me-0">
											<i class="fa-solid fa-chalkboard-user text-primary me-2"></i>강의 정보
										</span>
									</div>
								</div>
								<div class="col-sm-12 col-md-4 d-flex flex-column align-items-start align-items-md-end justify-content-center">
									<div class="d-flex mb-3">
										<a class="btn btn-primary" href="/detailfree">상세보기</a>
									</div>
									<span class="text-truncate"><i class="far fa-calendar-alt text-primary me-2"></i>등록 일자</span>
								</div>
							</div>
						</div>
						<div class="job-item p-4 mb-4">
							<div class="row g-4">
								<div class="col-sm-12 col-md-4 d-flex align-items-center" style="width: 45%; float: none; margin-left: 100px;">
									<img class="flex-shrink-0 img-fluid border rounded" src="#" alt="" style="width: 80px; height: 80px;">
									<div class="text-start ps-4">
										<h3 class="mb-3">프리랜서 등록 제목</h3>
										<span class="resfreespan text-truncate me-3">
											<i class="fa fa-map-marker-alt text-primary me-2"></i>지역
										</span>
										<span class="resfreespan text-truncate me-3">
											<i class="far fa-clock text-primary me-2"></i>계약 형태(작업시간)
										</span>
										<span class="resfreespan text-truncate me-3">
											<i class="far fa-money-bill-alt text-primary me-2"></i>계약 금액
										</span>
										<span class="resfreespan text-truncate me-0">
											<i class="fa-solid fa-chalkboard-user text-primary me-2"></i>강의 정보
										</span>
									</div>
								</div>
								<div class="col-sm-12 col-md-4 d-flex flex-column align-items-start align-items-md-end justify-content-center">
									<div class="d-flex mb-3">
										<a class="btn btn-primary" href="">상세보기</a>
									</div>
									<span class="text-truncate"><i class="far fa-calendar-alt text-primary me-2"></i>등록 일자</span>
								</div>
							</div>
						</div>
						<div class="job-item p-4 mb-4">
							<div class="row g-4">
								<div class="col-sm-12 col-md-4 d-flex align-items-center" style="width: 45%; float: none; margin-left: 100px;">
									<img class="flex-shrink-0 img-fluid border rounded" src="#" alt="" style="width: 80px; height: 80px;">
									<div class="text-start ps-4">
										<h3 class="mb-3">프리랜서 등록 제목</h3>
										<span class="resfreespan text-truncate me-3">
											<i class="fa fa-map-marker-alt text-primary me-2"></i>지역
										</span>
										<span class="resfreespan text-truncate me-3">
											<i class="far fa-clock text-primary me-2"></i>계약 형태(작업시간)
										</span>
										<span class="resfreespan text-truncate me-3">
											<i class="far fa-money-bill-alt text-primary me-2"></i>계약 금액
										</span>
										<span class="resfreespan text-truncate me-0">
											<i class="fa-solid fa-chalkboard-user text-primary me-2"></i>강의 정보
										</span>
									</div>
								</div>
								<div class="col-sm-12 col-md-4 d-flex flex-column align-items-start align-items-md-end justify-content-center">
									<div class="d-flex mb-3">
										<a class="btn btn-primary" href="">상세보기</a>
									</div>
									<span class="text-truncate"><i class="far fa-calendar-alt text-primary me-2"></i>등록 일자</span>
								</div>
							</div>
						</div>
						<div class="job-item p-4 mb-4">
							<div class="row g-4">
								<div class="col-sm-12 col-md-4 d-flex align-items-center" style="width: 45%; float: none; margin-left: 100px;">
									<img class="flex-shrink-0 img-fluid border rounded" src="#" alt="" style="width: 80px; height: 80px;">
									<div class="text-start ps-4">
										<h3 class="mb-3">프리랜서 등록 제목</h3>
										<span class="resfreespan text-truncate me-3">
											<i class="fa fa-map-marker-alt text-primary me-2"></i>지역
										</span>
										<span class="resfreespan text-truncate me-3">
											<i class="far fa-clock text-primary me-2"></i>계약 형태(작업시간)
										</span>
										<span class="resfreespan text-truncate me-3">
											<i class="far fa-money-bill-alt text-primary me-2"></i>계약 금액
										</span>
										<span class="resfreespan text-truncate me-0">
											<i class="fa-solid fa-chalkboard-user text-primary me-2"></i>강의 정보
										</span>
									</div>
								</div>
								<div class="col-sm-12 col-md-4 d-flex flex-column align-items-start align-items-md-end justify-content-center">
									<div class="d-flex mb-3">
										<a class="btn btn-primary" href="">상세보기</a>
									</div>
									<span class="text-truncate"><i class="far fa-calendar-alt text-primary me-2"></i>등록 일자</span>
								</div>
							</div>
						</div>
						<div class="job-item p-4 mb-4">
							<div class="row g-4">
								<div class="col-sm-12 col-md-4 d-flex align-items-center" style="width: 45%; float: none; margin-left: 100px;">
									<img class="flex-shrink-0 img-fluid border rounded" src="#" alt="" style="width: 80px; height: 80px;">
									<div class="text-start ps-4">
										<h3 class="mb-3">프리랜서 등록 제목</h3>
										<span class="resfreespan text-truncate me-3">
											<i class="fa fa-map-marker-alt text-primary me-2"></i>지역
										</span>
										<span class="resfreespan text-truncate me-3">
											<i class="far fa-clock text-primary me-2"></i>계약 형태(작업시간)
										</span>
										<span class="resfreespan text-truncate me-3">
											<i class="far fa-money-bill-alt text-primary me-2"></i>계약 금액
										</span>
										<span class="resfreespan text-truncate me-0">
											<i class="fa-solid fa-chalkboard-user text-primary me-2"></i>강의 정보
										</span>
									</div>
								</div>
								<div class="col-sm-12 col-md-4 d-flex flex-column align-items-start align-items-md-end justify-content-center">
									<div class="d-flex mb-3">
										<a class="btn btn-primary" href="">상세보기</a>
									</div>
									<span class="text-truncate"><i class="far fa-calendar-alt text-primary me-2"></i>등록 일자</span>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="row g-4">
				<div class="row text-center col-lg-4 col-md-12 wow fadeInUp" data-wow-delay="0.3s" style="width: 30%; float: none; margin-left: 100px;">
					<div class="row g-3">
						<div class="col-12">
							<div class="col-12 mt-4">
								<button id="canclebtn" class="btn btn-outline-primary w-50 py-3">이전 목록</button>
							</div>
						</div>
					</div>
				</div>
				<div class="row text-center col-lg-4 col-md-12 wow fadeInUp" data-wow-delay="0.3s" style="width: 25%; float: none;">
					<div class="row g-3">
						<div class="col-12">
							<div class="col-12 mt-4">
								<button type="submit" class="btn btn-primary w-100 py-3 dropdown-toggle" data-bs-toggle="dropdown">페이지 이동하기</button>
								<ul class="dropdown-menu dropdown-menu-end">
									<li style="font-weight:bold; font-family: 'Stylish', sans-serif; text-align: center;">1 페이지(현재)</li>
									<li><hr class="dropdown-divider"></li>
									<li><a class="dropdown-item" href="#">Link 1</a></li>
									<li><a class="dropdown-item" href="#">Link 2</a></li>
									<li><a class="dropdown-item" href="#">Link 3</a></li>
									<li><a class="dropdown-item" href="#">Link 4</a></li>
									<li><a class="dropdown-item" href="#">Link 5</a></li>
									<li><a class="dropdown-item" href="#">Link 6</a></li>
									<li><a class="dropdown-item" href="#">Link 7</a></li>
								</ul>
							</div>
						</div>
					</div>
				</div>
				<div class="row text-center col-lg-4 col-md-12 wow fadeInUp" data-wow-delay="0.3s" style="width: 30%; float: none;">
					<div class="row g-3">
						<div class="col-12">
							<div class="col-12 mt-4">
								<button type="submit" class="btn btn-outline-primary w-50 py-3">다음 목록</button>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- Courses End -->

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
</body>

</html>