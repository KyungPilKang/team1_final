<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html lang="en">

<head>
	<meta charset="utf-8">
	<title>NEEDSFULL - 배송리스트 폼(결제완료)</title>
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
	<link href="${pageContext.request.contextPath}/resources/administrator/lib/animate/animate.min.css" rel="stylesheet">
	<link href="${pageContext.request.contextPath}/resources/administrator/lib/owlcarousel/assets/owl.carousel.min.css" rel="stylesheet">

	<!-- Customized Bootstrap Stylesheet -->
	<link href="${pageContext.request.contextPath}/resources/administrator/css/bootstrap.min.css" rel="stylesheet">

	<!-- Template Stylesheet -->
	<link href="${pageContext.request.contextPath}/resources/administrator/css/style.css" rel="stylesheet">
	<style>
		*{
			font-family: 'Stylish', sans-serif;
		}

		.page-header {
			background: linear-gradient(rgba(24, 29, 56, .7), rgba(24, 29, 56, .7));
			background-position: center center;
			background-repeat: no-repeat;
			background-size: cover;
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
				<h1 class="display-3 text-white animated slideInDown">배송관리 리스트</h1>



			</div>
		</div>
	</div>
</div>
<!-- Header End -->



<!-- 상품 결제완료 리스트 Start -->
<div class="container-xxl py-5" id="payComplete">
	<div class="container">
		<h1 class="text-center mb-4 wow fadeInUp" data-wow-delay="0.1s">상품 ${state} 리스트</h1>
		<nav aria-label="breadcrumb">
			<ol class="breadcrumb text-uppercase">
				<li class="breadcrumb-item"><a href="/orderlist?state=0">결제완료</a></li>
				<li class="breadcrumb-item"><a href="/orderlist?state=1">배송중</a></li>
				<li class="breadcrumb-item"><a href="/orderlist?state=2">배송완료</a></li>
			</ol>
		</nav>
		<div class="tab-class text-center wow fadeInUp" data-wow-delay="0.3s">


			<div class="container-fluid bg-dark">
				<div class="row ">
					<div class="col-sm-12 col-md-7 align-items-center">
						<h6 class="text-white my-4">상품내용</h6>
					</div>

					<div class="col-sm-12 col-md-1 align-items-center">
						<h6 class="text-white my-4">주문번호</h6>
					</div>

					<div class="col-sm-12 col-md-3 d-flex flex-row-reverse align-items-center">
						<h6 class="text-white my-4">상태</h6>
					</div>
				</div>
			</div>


			<div class="tab-content">
				<div id="payCompl" class="tab-pane fade show p-0 active">

					<c:forEach items="${orderList}" var="order">
						<div class="job-item p-4 mb-4">
							<div class="row g-4">
								<div class="col-sm-12 col-md-6 d-flex align-items-center">
									<img class="flex-shrink-0 img-fluid border rounded" src="/book-store/book-img/${order.book_img}" alt="" style="width: 80px; height: 80px;">
									<div class="text-start ps-4">
										<h5 class="mb-3">${order.subjectList} (${order.total_price} 원 | ${order.total_count} 권)</h5>
										<span class="text-truncate me-3"><i class="fa fa-user-tie text-primary me-2"></i>${order.username}</span>
										<small class="text-truncate"><i class="far fa-calendar-alt text-primary me-2"></i>주문일 ${order.order_date}</small>
									</div>
								</div>

								<div class="col-sm-12 col-md-2 d-flex flex-row-reverse align-items-center">
									<div class="text-start ps-4">
										<h6 class="mb-3">${order.order_deli_num}</h6>
									</div>
								</div>
								<div class="col-sm-12 col-md-4 d-flex flex-column align-items-start align-items-md-end justify-content-center">
									<div class="d-flex mb-3">
										<a class="btn btn-primary" href="/deliveryinfo/${order.order_num}">${order.order_state}</a>
									</div>
								</div>
							</div>
						</div>
					</c:forEach>


					<!-- <a class="btn btn-primary py-3 px-5" href="">More List</a> -->
				</div>
			</div>
		</div>
	</div>
</div>
<!-- 상품 결제완료 리스트 End -->





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
<a href="#" class="btn btn-lg btn-primary btn-lg-square back-to-top"><i class="bi bi-arrow-up"></i></a>
</div>

<!-- JavaScript Libraries -->
<script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/js/bootstrap.bundle.min.js"></script>
<script src="${pageContext.request.contextPath}/resources/administrator/lib/wow/wow.min.js"></script>
<script src="${pageContext.request.contextPath}/resources/administrator/lib/easing/easing.min.js"></script>
<script src="${pageContext.request.contextPath}/resources/administrator/lib/waypoints/waypoints.min.js"></script>
<script src="${pageContext.request.contextPath}/resources/administrator/lib/owlcarousel/owl.carousel.min.js"></script>

<!-- Template Javascript -->
<script src="${pageContext.request.contextPath}/resources/administrator/js/main.js"></script>


<script>
	function deliPopup() {
		window.open("https://tracker.delivery/#/kr.cjlogistics/561378343061", "pop", "width=769,height=800, scrollbars=yes, resizable=yes");
	}
</script>



</body>

</html>