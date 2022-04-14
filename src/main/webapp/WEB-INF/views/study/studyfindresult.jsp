<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>eLEARNING - eLearning HTML Template</title>
<meta content="width=device-width, initial-scale=1.0" name="viewport">
<meta content="" name="keywords">
<meta content="" name="description">

<!-- Favicon -->
<link href="img/favicon.ico" rel="icon">

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
	<jsp:include page="/WEB-INF/views/bookstore/header.jsp"/>
	<!-- Navbar End -->


	<!-- Header Start -->
	<div class="container-fluid bg-primary py-5 mb-5 page-header" id="containerform">
		<div class="container py-5">
			<div class="row justify-content-center">
				<div class="col-lg-10 text-center">
					<h1 class="display-3 text-white animated slideInDown">스터디 매칭</h1>
				</div>
			</div>
		</div>
	</div>
	<!-- Header End -->

	<!-- 내용 Start -->
	<div class="container-xxl py-5">
		<div class="container">
			<div class="text-center wow fadeInUp" data-wow-delay="0.1s">
				<h5 class="section-title bg-white text-center text-primary px-3">매칭 완료</h5>
				<h1 class="mb-5 mt-2">다음의 스터디들이 매칭되었습니다</h1>
			</div>
			<div class="row g-4 justify-content-center wow fadeInUp">
				<div class="tab-content">
					<div id="tab-1" class="tab-pane fade show p-0 active">
						<c:forEach items="${serchedStudy }" var="study">
							<div class="job-item p-4 mb-4">
								<div class="row g-4">
									<div class="col-sm-12 col-md-4 d-flex align-items-center" style="width: 45%; float: none; margin-left: 100px;">
										<img class="flex-shrink-0 img-fluid border rounded" src="${pageContext.request.contextPath}/resources/freelance/img/about.jpg" alt="" style="width: 80px; height: 80px;">
										<div class="text-start ps-4">
											<h3 class="mb-3"><i class="fa-solid fa-people-group text-primary me-2"></i>${study.study_title }</h3>
											<span class="resfreespan text-truncate me-3"> <i class="fa-solid fa-school text-primary me-2"></i>${study.study_sname}
											</span> <span class="resfreespan text-truncate me-3"> <i class="fa-solid fa-graduation-cap text-primary me-2"></i>${study.study_grade}
											</span> <span class="resfreespan text-truncate me-3"> <i class="bi bi-calendar2-date text-primary me-2"></i>시작 날짜&nbsp;${study.study_fdate}
											</span>
										</div>
									</div>
									<div class="col-sm-12 col-md-4 d-flex flex-column align-items-start align-items-md-end justify-content-center">
										<div class="d-flex mb-3">
											<a class="btn btn-primary" href="/studydetail/${study.study_no}">상세보기</a>
										</div>
										<!-- <span class="text-truncate"><i class="bi bi-cart-plus text-primary me-2"></i>참여여부</span> -->
									</div>
								</div>
							</div>
						</c:forEach>
						<!--					<div class="job-item p-4 mb-4">
							<div class="row g-4">
								<div class="col-sm-12 col-md-4 d-flex align-items-center" style="width: 45%; float: none; margin-left: 100px;">
									<img class="flex-shrink-0 img-fluid border rounded" src="${pageContext.request.contextPath}/resources/freelance/img/about.jpg" alt="" style="width: 80px; height: 80px;">
									<div class="text-start ps-4">
										<h3 class="mb-3">스터디 등록 제목</h3>
										<span class="resfreespan text-truncate me-3">
											<i class="bi bi-brightness-high-fill text-primary me-2"></i>초등/중등${study.study_sname}
										</span>
										<span class="resfreespan text-truncate me-3">
											<i class="bi bi-eyeglasses text-primary me-2"></i>학년 ${study.study_grade}
										</span>
										<span class="resfreespan text-truncate me-3">
											<i class="bi bi-calendar2-date text-primary me-2"></i>시작 날짜  ${study.study_fdate}
										</span>
									</div>
								</div>
								<div class="col-sm-12 col-md-4 d-flex flex-column align-items-start align-items-md-end justify-content-center">
									<div class="d-flex mb-3">
										<a class="btn btn-primary" href="">상세보기</a>
									</div>
									<span class="text-truncate"><i class="bi bi-cart-plus text-primary me-2"></i>참여여부</span>
								</div>
							</div>
						</div>
						<div class="job-item p-4 mb-4">
							<div class="row g-4">
								<div class="col-sm-12 col-md-4 d-flex align-items-center" style="width: 45%; float: none; margin-left: 100px;">
									<img class="flex-shrink-0 img-fluid border rounded" src="${pageContext.request.contextPath}/resources/freelance/img/about.jpg" alt="" style="width: 80px; height: 80px;">
									<div class="text-start ps-4">
										<h3 class="mb-3">스터디 등록 제목</h3>
										<span class="resfreespan text-truncate me-3">
											<i class="bi bi-brightness-high-fill text-primary me-2"></i>초등/중등 ${study.study_sname}
										</span>
										<span class="resfreespan text-truncate me-3">
											<i class="bi bi-eyeglasses text-primary me-2"></i>학년 ${study.study_grade}
										</span>
										<span class="resfreespan text-truncate me-3">
											<i class="bi bi-calendar2-date text-primary me-2"></i>시작 날짜 
										</span>
									</div>
								</div>
								<div class="col-sm-12 col-md-4 d-flex flex-column align-items-start align-items-md-end justify-content-center">
									<div class="d-flex mb-3">
										<a class="btn btn-primary" href="">상세보기</a>
									</div>
									<span class="text-truncate"><i class="bi bi-cart-plus text-primary me-2"></i>참여여부</span>
								</div>
							</div>
						</div>
												<div class="job-item p-4 mb-4">
							<div class="row g-4">
								<div class="col-sm-12 col-md-4 d-flex align-items-center" style="width: 45%; float: none; margin-left: 100px;">
									<img class="flex-shrink-0 img-fluid border rounded" src="${pageContext.request.contextPath}/resources/freelance/img/about.jpg" alt="" style="width: 80px; height: 80px;">
									<div class="text-start ps-4">
										<h3 class="mb-3">스터디 등록 제목</h3>
										<span class="resfreespan text-truncate me-3">
											<i class="bi bi-brightness-high-fill text-primary me-2"></i>초등/중등
										</span>
										<span class="resfreespan text-truncate me-3">
											<i class="bi bi-eyeglasses text-primary me-2"></i>학년
										</span>
										<span class="resfreespan text-truncate me-3">
											<i class="bi bi-calendar2-date text-primary me-2"></i>시작 날짜 
										</span>
									</div>
								</div>
								<div class="col-sm-12 col-md-4 d-flex flex-column align-items-start align-items-md-end justify-content-center">
									<div class="d-flex mb-3">
										<a class="btn btn-primary" href="">상세보기</a>
									</div>
									<span class="text-truncate"><i class="bi bi-cart-plus text-primary me-2"></i>참여여부</span>
								</div>
							</div>
						</div>
						<div class="job-item p-4 mb-4">
							<div class="row g-4">
								<div class="col-sm-12 col-md-4 d-flex align-items-center" style="width: 45%; float: none; margin-left: 100px;">
									<img class="flex-shrink-0 img-fluid border rounded" src="${pageContext.request.contextPath}/resources/freelance/img/about.jpg" alt="" style="width: 80px; height: 80px;">
									<div class="text-start ps-4">
										<h3 class="mb-3">스터디 등록 제목</h3>
										<span class="resfreespan text-truncate me-3">
											<i class="bi bi-brightness-high-fill text-primary me-2"></i>초등/중등
										</span>
										<span class="resfreespan text-truncate me-3">
											<i class="bi bi-eyeglasses text-primary me-2"></i>학년
										</span>
										<span class="resfreespan text-truncate me-3">
											<i class="bi bi-calendar2-date text-primary me-2"></i>시작 날짜 
										</span>
									</div>
								</div>
								<div class="col-sm-12 col-md-4 d-flex flex-column align-items-start align-items-md-end justify-content-center">
									<div class="d-flex mb-3">
										<a class="btn btn-primary" href="">상세보기</a>
									</div>
									<span class="text-truncate"><i class="bi bi-cart-plus text-primary me-2"></i>참여여부</span>
								</div>
							</div>
						</div> -->


					</div>
				</div>
			</div>
			<div class="row g-4">
				<div class="row text-center col-lg-4 col-md-12 wow fadeInUp" data-wow-delay="0.3s" style="width: 30%; float: none; margin-left: 100px;">
					<div class="row g-3">
						<div class="col-12">
							<div class="col-12 mt-4">
								<c:choose>
									<c:when test="${pageInfo.page<=1}">
										<button id="beforebtn1" class="btn btn-outline-primary w-50 py-3" disabled>첫 페이지</button>
									</c:when>
									<c:otherwise>
										<button id="beforebtn2" class="btn btn-outline-primary w-50 py-3">이전 목록</button>
									</c:otherwise>
								</c:choose>
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
									<li style="font-weight: bold; font-family: 'Stylish', sans-serif; text-align: center;">${pageInfo.page }&nbsp;페이지(현재)</li>
									<li><hr class="dropdown-divider"></li>
									<c:forEach var="i" begin="${pageInfo.startPage }" end="${pageInfo.endPage }">
									<li><a class="dropdown-item" href="/studyfindcnf?page=${i}">Page&nbsp;${i }</a></li>
									</c:forEach>
									<!-- <li><a class="dropdown-item" href="#">Page 1</a></li>
									<li><a class="dropdown-item" href="#">Page 2</a></li>
									<li><a class="dropdown-item" href="#">Page 3</a></li>
									<li><a class="dropdown-item" href="#">Page 4</a></li>
									<li><a class="dropdown-item" href="#">Page 5</a></li>
									<li><a class="dropdown-item" href="#">Page 6</a></li>
									<li><a class="dropdown-item" href="#">Page 7</a></li> -->
								</ul>
							</div>
						</div>
					</div>
				</div>
				<div class="row text-center col-lg-4 col-md-12 wow fadeInUp" data-wow-delay="0.3s" style="width: 30%; float: none;">
					<div class="row g-3">
						<div class="col-12">
							<div class="col-12 mt-4">
								<c:choose>
									<c:when test="${pageInfo.page>=pageInfo.maxPage }">
										<button id="afterbtn1" class="btn btn-outline-primary w-50 py-3" disabled>마지막 페이지</button>
	       							</c:when>
									<c:otherwise>
										<button id="afterbtn2" class="btn btn-outline-primary w-50 py-3">다음 목록</button>
									</c:otherwise>
								</c:choose>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>

	<!-- 내용 End -->


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
		let test = "<c:out value='${serchedStudy}'/>";
		console.log(test);
		if (performance.navigation.type == 1) {
			window.location = "/studyfindcnf";
		};
		$('#beforebtn2').click(function() {
			window.location = "/studyfindcnf?page=${pageInfo.page-1}";
		});
		$('#afterbtn2').click(function() {
			window.location = "/studyfindcnf?page=${pageInfo.page+1}";
		});
	</script>

</body>
</html>