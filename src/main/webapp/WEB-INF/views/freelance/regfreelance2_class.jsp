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
<link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.10.0/css/all.min.css" rel="stylesheet">
<link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.4.1/font/bootstrap-icons.css" rel="stylesheet">

<!-- Libraries Stylesheet -->
<link href="${pageContext.request.contextPath}/resources/freelance/lib/animate/animate.min.css" rel="stylesheet">
<link href="${pageContext.request.contextPath}/resources/freelance/lib/owlcarousel/assets/owl.carousel.min.css" rel="stylesheet">

<!-- Customized Bootstrap Stylesheet -->
<link href="${pageContext.request.contextPath}/resources/freelance/css/bootstrap.min.css" rel="stylesheet">

<!-- Template Stylesheet -->
<link href="${pageContext.request.contextPath}/resources/freelance/css/style.css" rel="stylesheet">
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
		<a href="/freereg2" class="navbar-brand d-flex align-items-center px-4 px-lg-5">
			<h1 class="m-0 text-primary">
				<i class="fa fa-book me-3"></i>NEEDSFULL
			</h1>
		</a>
		<button type="button" class="navbar-toggler me-4" data-bs-toggle="collapse" data-bs-target="#navbarCollapse">
			<span class="navbar-toggler-icon"></span>
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
	<div class="container-fluid bg-primary py-5 mb-5 page-header" id="containerform">
		<div class="container py-5">
			<div class="row justify-content-center">
				<div class="col-lg-10 text-center">
					<h1 class="display-3 text-white animated slideInDown">프리랜서 등록</h1>
				</div>
			</div>
		</div>
	</div>
	<!-- Header End -->


	<!-- Contact Start -->
	<div class="container-xxl py-5">
		<form action="regfree" method="post">
			<div class="container">
				<div class="text-center wow fadeInUp" data-wow-delay="0.1s">
					<h5 class="section-title bg-white text-center text-primary px-3">등록 정보</h5>
					<h1 class="mb-5 mt-2">입력하신 정보를 다시 확인해주세요</h1>
				</div>
				<div class="row g-4">
					<div class="row text-center col-lg-4 col-md-12 wow fadeInUp" data-wow-delay="0.5s" style="width: 30%; float: none; margin: 0 auto;">
						<div class="row g-3">
							<div class="col-12">
								<div class="form-floating">
									<h3>프리랜서 종류</h3>
									<input style="background: rgba(6, 187, 204, 0.3); font-size: 2.0em" type="text" class="form-control text-center" value="강의 제작" readOnly>
								</div>
								<br> <br>
								<div class="form-floating">
									<h3>계약 형태</h3>
									<c:choose>
										<c:when test="${regfree.labor_type eq '1' }">
											<input style="background: rgba(6, 187, 204, 0.3); font-size: 2.0em" type="text" class="form-control text-center" value="월 단위 계약" readOnly>
										</c:when>
										<c:when test="${regfree.labor_type eq '2' }">
											<input style="background: rgba(6, 187, 204, 0.3); font-size: 2.0em" type="text" class="form-control text-center" value="주 단위 계약" readOnly>
										</c:when>
										<c:otherwise>
											<input style="background: rgba(6, 187, 204, 0.3); font-size: 2.0em" type="text" class="form-control text-center" value="건 당(강의 당) 계약" readOnly>
										</c:otherwise>
									</c:choose>
								</div>
								<br> <br>
								<div class="form-floating">
									<h3>일일 작업 가능 시간</h3>
									<c:choose>
										<c:when test="${regfree.labor_time eq '10' }">
											<input style="background: rgba(6, 187, 204, 0.3); font-size: 2.0em" type="text" class="form-control text-center" value="9시간 이상/일" readOnly>
										</c:when>
										<c:otherwise>
											<input style="background: rgba(6, 187, 204, 0.3); font-size: 2.0em" type="text" class="form-control text-center" value="${regfree.labor_time } 시간/일" readOnly>
										</c:otherwise>
									</c:choose>
								</div>
								<br> <br>
								<div class="form-floating">
									<h3>경력</h3>
									<c:choose>
										<c:when test="${regfree.career eq '1' }">
											<input style="background: rgba(6, 187, 204, 0.3); font-size: 2.0em" type="text" class="form-control text-center" value="1년 미만" readOnly>
										</c:when>
										<c:when test="${regfree.career eq '2' }">
											<input style="background: rgba(6, 187, 204, 0.3); font-size: 2.0em" type="text" class="form-control text-center" value="1년 이상 ~ 3년 미만" readOnly>
										</c:when>
										<c:when test="${regfree.career eq '3' }">
											<input style="background: rgba(6, 187, 204, 0.3); font-size: 2.0em" type="text" class="form-control text-center" value="3년 이상 ~ 5년 미만" readOnly>
										</c:when>
										<c:otherwise>
											<input style="background: rgba(6, 187, 204, 0.3); font-size: 2.0em" type="text" class="form-control text-center" value="5년 이상" readOnly>
										</c:otherwise>
									</c:choose>
								</div>
								<br> <br>
							</div>
						</div>
					</div>
					<div class="row text-center col-lg-4 col-md-12 wow fadeInUp" data-wow-delay="0.5s" style="width: 30%; float: none; margin: 0 auto;">
						<div class="row g-3">
							<div class="col-12">
								<div class="form-floating">
									<h3>대상 학년</h3>
									<c:choose>
										<c:when test="${regfree.grade eq '1' }">
											<input style="background: rgba(6, 187, 204, 0.3); font-size: 2.0em" type="text" class="form-control text-center" value="초등" readOnly>
										</c:when>
										<c:otherwise>
											<input style="background: rgba(6, 187, 204, 0.3); font-size: 2.0em" type="text" class="form-control text-center" value="중등" readOnly>
										</c:otherwise>
									</c:choose>
								</div>
								<br> <br>
								<div class="form-floating">
									<h3>대상 과목</h3>
									<c:choose>
										<c:when test="${regfree.class_type eq '1' }">
											<input style="background: rgba(6, 187, 204, 0.3); font-size: 2.0em" type="text" class="form-control text-center" value="국어" readOnly>
										</c:when>
										<c:when test="${regfree.class_type eq '2' }">
											<input style="background: rgba(6, 187, 204, 0.3); font-size: 2.0em" type="text" class="form-control text-center" value="수학" readOnly>
										</c:when>
										<c:when test="${regfree.class_type eq '3' }">
											<input style="background: rgba(6, 187, 204, 0.3); font-size: 2.0em" type="text" class="form-control text-center" value="영어" readOnly>
										</c:when>
										<c:when test="${regfree.class_type eq '4' }">
											<input style="background: rgba(6, 187, 204, 0.3); font-size: 2.0em" type="text" class="form-control text-center" value="사회" readOnly>
										</c:when>
										<c:when test="${regfree.class_type eq '5' }">
											<input style="background: rgba(6, 187, 204, 0.3); font-size: 2.0em" type="text" class="form-control text-center" value="과학" readOnly>
										</c:when>
										<c:when test="${regfree.class_type eq '6' }">
											<input style="background: rgba(6, 187, 204, 0.3); font-size: 2.0em" type="text" class="form-control text-center" value="비교과" readOnly>
										</c:when>
										<c:otherwise>
											<input style="background: rgba(6, 187, 204, 0.3); font-size: 2.0em" type="text" class="form-control text-center" value="기타/${regfree_class_type_etc }" readOnly>
										</c:otherwise>
									</c:choose>
								</div>
								<br> <br>
								<div class="form-floating">
									<h3>학력</h3>
									<c:choose>
										<c:when test="${regfree.education eq '1' }">
											<input style="background: rgba(6, 187, 204, 0.3); font-size: 2.0em" type="text" class="form-control text-center" value="${regfree.univ }(전문학사)-${regfree.major }" readOnly>
										</c:when>
										<c:when test="${regfree.education eq '2' }">
											<input style="background: rgba(6, 187, 204, 0.3); font-size: 2.0em" type="text" class="form-control text-center" value="${regfree.univ }(학사)-${regfree.major }" readOnly>
										</c:when>
										<c:when test="${regfree.education eq '3' }">
											<input style="background: rgba(6, 187, 204, 0.3); font-size: 2.0em" type="text" class="form-control text-center" value="${regfree.univ }(석사)-${regfree.major }" readOnly>
										</c:when>
										<c:otherwise>
											<input style="background: rgba(6, 187, 204, 0.3); font-size: 2.0em" type="text" class="form-control text-center" value="${regfree.univ }(박사)-${regfree.major }" readOnly>
										</c:otherwise>
									</c:choose>
								</div>
								<br> <br>
								<div class="form-floating">
									<h3>계약금액</h3>
									<c:choose>
										<c:when test="${not empty regfree.month_pay }">
											<input style="background: rgba(6, 187, 204, 0.3); font-size: 2.0em" type="text" class="form-control text-center" value="${regfree.month_pay }/월" readOnly>
										</c:when>
										<c:when test="${not empty regfree.week_pay }">
											<input style="background: rgba(6, 187, 204, 0.3); font-size: 2.0em" type="text" class="form-control text-center" value="${regfree.week_pay }/주" readOnly>
										</c:when>
										<c:otherwise>
											<input style="background: rgba(6, 187, 204, 0.3); font-size: 2.0em" type="text" class="form-control text-center" value="${regfree.case_pay }/건당" readOnly>
										</c:otherwise>
									</c:choose>
								</div>
								<br> <br>
							</div>
						</div>
					</div>
					<div class="row text-center col-lg-4 col-md-12 wow fadeInUp" data-wow-delay="0.5s" style="width: 30%; float: none; margin: 0 auto;">
						<div class="row g-3">
							<div class="col-12">
								<div class="form-floating">
									<h3>등록 제목(검색 시 노출)</h3>
									<input style="background: rgba(6, 187, 204, 0.3); font-size: 2.0em" type="text" class="form-control text-center" value="${regfree.introduce_title }" readOnly>
								</div>
								<br> <br>
								<div class="form-floating">
									<h3>서비스 소개</h3>
									<textarea style="background: rgba(6, 187, 204, 0.3); height: 354px; font-size: 1.5em" class="form-control text-center" readOnly>${regfree.introduce_contents }</textarea>
								</div>
								<br> <br>
							</div>
						</div>
					</div>
				</div>
				<div class="row g-4">
					<div class="row text-center col-lg-4 col-md-12 wow fadeInUp" data-wow-delay="0.5s" style="width: 30%; float: none; margin: 0 auto;">
						<div class="row g-3">
							<div class="col-12">
								<div class="col-12 mt-5">
									<button id="canclebtn" class="text-dark bg-white btn btn-primary w-100 py-3">취소 하기</button>
								</div>
							</div>
						</div>
					</div>
					<div class="row text-center col-lg-4 col-md-12 wow fadeInUp" data-wow-delay="0.5s" style="width: 30%; float: none; margin: 0 auto;">
						<div class="row g-3">
							<div class="col-12">
								<div class="col-12 mt-5">
									<button type="submit" class="btn btn-primary w-100 py-3">등록 하기</button>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</form>
	</div>
	<!-- Contact End -->


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
	<script src="${pageContext.request.contextPath}/resources/freelance/js/myFreelance2.js"></script>
</body>
</html>