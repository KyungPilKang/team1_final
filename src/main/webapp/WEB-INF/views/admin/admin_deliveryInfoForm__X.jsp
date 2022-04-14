<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <title>NEEDSFULL - 배송관리 폼(상품준비중)</title>
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
	<nav class="navbar navbar-expand-lg bg-white navbar-light shadow sticky-top p-0">
		<a href="/freereg1" class="navbar-brand d-flex align-items-center px-4 px-lg-5">
			<h1 class="m-0 text-primary">
				<i class="fa fa-book me-3"></i>NEESFULL
			</h1>
		</a>
		<button type="button" class="navbar-toggler me-4" data-bs-toggle="collapse" data-bs-target="#navbarCollapse">
			<span class="navbar-toggler-icon"></span>
		</button>
		<div class="collapse navbar-collapse" id="navbarCollapse">
			<div class="navbar-nav ms-auto p-4 p-lg-0">
				<div class="nav-item dropdown me-3">
					<a href="http://localhost:8090/studymain" class="nav-link" data-bs-toggle="dropdown">스터디</a>
					<div class="dropdown-menu fade-down m-0">
						<a href="http://localhost:8090/studymain" style="font-size: 1.3em;" class="dropdown-item">메인페이지</a>
						<a href="http://localhost:8090/studyReg" style="font-size: 1.3em;" class="dropdown-item">등록하기</a>
						<a href="http://localhost:8090/studyfind" style="font-size: 1.3em;" class="dropdown-item">매칭하기</a>
						<a href="http://localhost:8090/studyclass" style="font-size: 1.3em;" class="dropdown-item">참여현황</a>
					</div>
				</div>
				<div class="me-3">
					<a href="about.html" class="nav-item nav-link">마이페이지</a>
				</div>
				<div class="me-3">
					<a href="courses.html" class="nav-item nav-link">고객센터</a>
				</div>
				<div class="nav-item dropdown me-3">
					<a href="http://localhost:8090/studymain" class="nav-link" data-bs-toggle="dropdown">관리자</a>
					<div class="dropdown-menu fade-down m-0">
						<a href="http://localhost:8090/orderlist" style="font-size: 1.3em;" class="dropdown-item">배송관리</a>
						<a href="http://localhost:8090/withdrawmemlistS" style="font-size: 1.3em;" class="dropdown-item">탈퇴회원 관리</a>
					</div>
				</div>
				<div class="me-3">
					<a href=# class="nav-item nav-link">로그아웃</a>
				</div>
			</div>
		</div>
	</nav>
	<!-- Navbar End -->

	<!-- Header Start -->
	<div class="container-fluid bg-primary py-5 mb-5 page-header">
		<div class="container py-5">
			<div class="row justify-content-center">
				<div class="col-lg-10 text-center">
					<h1 class="display-3 text-white animated slideInDown">상품배송현황 관리</h1>
				</div>
			</div>
		</div>
	</div>
	<!-- Header End -->

    

    <!-- Courses Start -->
    <div class="container-xxl py-5">
        <div class="container">

            <div class="text-center wow fadeInUp" data-wow-delay="0.1s">
                <h6 class="section-title bg-white text-center text-primary px-3">상품 주문내역 업데이트</h6>
            </div>
            
            <div class="col-lg-7 col-md-7 text-center wow fadeInUp" data-wow-delay="0.1s">
                <h6 class="pt-5 pb-0">${orderInfo.username} 상품 배송현황</h6>
            </div>

            <div class="row g-1 justify-content-center">
                <span class="col-lg-2 col-md-2 wow fadeInUp" data-wow-delay="0.1s">
                    <div class="course-item bg-light">
                        <div class="d-flex border-top border-bottom">
                            <small class="flex-fill text-center py-2">운송장번호</small>
                        </div>
                    </div>
                </span>
                <span class="col-lg-5 col-md-5 wow fadeInUp" data-wow-delay="0.1s">
                        <div class="d-flex border-top border-bottom">
                            <small class="flex-fill text-left py-2 px-2">-</small>
                        </div>
                </span>
            </div>




            <div class="row justify-content-center py-5">
                <span class="col-lg-2 col-md-3 text-center py-3"><i class="fa fa-2x fa-user text-secondary me-2"></i>결제완료 ▶</span>
 
                <span class="col-lg-2 col-md-3 text-center text-primary py-3"><i class="fa fa-2x fa-clock text-primary me-2 text-primary"></i>상품준비중 ▶</span>

                <span class="col-lg-2 col-md-3 text-center py-3"><i class="fa fa-2x fa-map-marker-alt text-secondary me-2"></i>배송중 ▶</span>

                <span class="col-lg-2 col-md-3 text-center py-3"><i class="fa fa-2x fa-home text-secondary mb-2"></i>배송완료</span>
            </div>


            



                   <!-- 라인 -->
            <div class="row justify-content-center">
                <div class="col-lg-7 col-md-7 d-flex border-bottom">
                </div>
            </div>

            <div class="col-lg-7 col-md-7 text-center wow fadeInUp" data-wow-delay="0.1s">
                <h6 class="pt-5 pb-0">상품 주문 정보</h6>
            </div>
            
            <div class="row g-1 justify-content-center">
                <span class="col-lg-2 col-md-2 wow fadeInUp" data-wow-delay="0.1s">
                    <div class="course-item bg-light">
                        <div class="d-flex border-top">
                            <small class="flex-fill text-center py-2">주문일</small>
                        </div>
                    </div>
                </span>
                <span class="col-lg-5 col-md-5 wow fadeInUp" data-wow-delay="0.1s">
                        <div class="d-flex border-top">
                            <small class="flex-fill text-left py-2 px-2">${orderInfo.order_date}</small>
                        </div>
                </span>
            </div>
            <div class="row g-1 justify-content-center">
                <span class="col-lg-2 col-md-2 wow fadeInUp" data-wow-delay="0.1s">
                    <div class="course-item bg-light">
                        <div class="d-flex border-top">
                            <small class="flex-fill text-center py-2">결제 수단</small>
                        </div>
                    </div>
                </span>
                <span class="col-lg-5 col-md-5 wow fadeInUp" data-wow-delay="0.1s">
                        <div class="d-flex border-top">
                            <small class="flex-fill text-left py-2 px-2">${orderInfo.order_method}</small>
                        </div>
                </span>
            </div>
            <div class="row g-1 justify-content-center">
                <span class="col-lg-2 col-md-2 wow fadeInUp" data-wow-delay="0.1s">
                    <div class="course-item bg-light">
                        <div class="d-flex border-top">
                            <small class="flex-fill text-center py-2">상품명</small>
                        </div>
                    </div>
                </span>
                <span class="col-lg-5 col-md-5 wow fadeInUp" data-wow-delay="0.1s">
                        <div class="d-flex border-top">
                            <small class="flex-fill text-left py-2 px-2">${orderInfo.subjectList}</small>
                        </div>
                </span>
            </div>
            <div class="row g-1 justify-content-center">
                <span class="col-lg-2 col-md-2 wow fadeInUp" data-wow-delay="0.1s">
                    <div class="course-item bg-light">
                        <div class="d-flex border-top">
                            <small class="flex-fill text-center py-2">수량</small>
                        </div>
                    </div>
                </span>
                <span class="col-lg-5 col-md-5 wow fadeInUp" data-wow-delay="0.1s">
                        <div class="d-flex border-top">
                            <small class="flex-fill text-left py-2 px-2">${orderInfo.total_count} 권</small>
                        </div>
                </span>
            </div>
            <div class="row g-1 justify-content-center">
                <span class="col-lg-2 col-md-2 wow fadeInUp" data-wow-delay="0.1s">
                    <div class="course-item bg-light">
                        <div class="d-flex border-top border-bottom">
                            <small class="flex-fill text-center py-2">총 가격</small>
                        </div>
                    </div>
                </span>
                <span class="col-lg-5 col-md-5 wow fadeInUp" data-wow-delay="0.1s">
                        <div class="d-flex border-top border-bottom">
                            <small class="flex-fill text-left py-2 px-2">${orderInfo.total_price} 원</small>
                        </div>
                </span>
            </div>

            <div class="row g-1 justify-content-center py-5">
                <span class="col-lg-1 col-md-3">
                    <a class="btn btn-primary w-100 py-1" type="submit" href="http://localhost:8090/deliveryinfo1/${orderInfo.order_num}">이전</a>
                </span>
                <span class="col-lg-1 col-md-3">
                    <a class="btn btn-primary w-100 py-1" type="submit" href="http://localhost:8090/deliveryedite/${orderInfo.order_num}">다음</a>
                </span>
                <span class="col-lg-1 col-md-3">
                    <a class="btn btn-primary w-100 py-1" type="submit" href="http://localhost:8090/orderlist">목록으로</a>
                </span>
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


    <!-- JavaScript Libraries -->
    <script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/js/bootstrap.bundle.min.js"></script>
    <script src="${pageContext.request.contextPath}/resources/administrator/lib/wow/wow.min.js"></script>
    <script src="${pageContext.request.contextPath}/resources/administrator/lib/easing/easing.min.js"></script>
    <script src="${pageContext.request.contextPath}/resources/administrator/lib/waypoints/waypoints.min.js"></script>
    <script src="${pageContext.request.contextPath}/resources/administrator/lib/owlcarousel/owl.carousel.min.js"></script>

    <!-- Template Javascript -->
    <script src="${pageContext.request.contextPath}/resources/administrator/js/main.js"></script>
</body>

</html>