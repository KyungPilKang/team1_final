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
        <a href="index.html" class="navbar-brand d-flex align-items-center px-4 px-lg-5">
            <h2 class="m-0 text-primary"><i class="fa fa-book me-3"></i>NEEDSFULL</h2>
        </a>
        <button type="button" class="navbar-toggler me-4" data-bs-toggle="collapse" data-bs-target="#navbarCollapse">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarCollapse">
            <div class="navbar-nav ms-auto p-4 p-lg-0">
                <a href="index.html" class="nav-item nav-link">강사</a>
                <a href="about.html" class="nav-item nav-link">교육업 종사자</a>
                <a href="courses.html" class="nav-item nav-link active">학생/학부모</a>
                <div class="nav-item dropdown">
                    <a href="#" class="nav-link dropdown-toggle" data-bs-toggle="dropdown">Pages</a>
                    <div class="dropdown-menu fade-down m-0">
                        <a href="team.html" class="dropdown-item">1:1문의 관리</a>
                        <a href="testimonial.html" class="dropdown-item">배송 관리</a>
                        <a href="404.html" class="dropdown-item">탈퇴회원 관리</a>
                    </div>
                </div>
                
            </div>
            <a href="" class="btn btn-primary py-4 px-lg-5 d-none d-lg-block">Logout<i class="fa fa-arrow-right ms-3"></i></a>
        </div>
    </nav>
    <!-- Navbar End -->
        

        <!-- Header End -->
        <div class="container-xxl py-2 bg-dark page-header mb-5">
            <div class="container my-1 pt-5 pb-4">
                <h4 class="display-3 text-white mb-3 animated slideInDown">학생 상품 배송처리 리스트</h4>

                <nav aria-label="breadcrumb">
                    <ol class="breadcrumb text-uppercase">
                        <li class="breadcrumb-item"><a href="#payCompl">결제완료</a></li>
                        <li class="breadcrumb-item"><a href="#prodDeli">배송중</a></li>
                        <li class="breadcrumb-item"><a href="#deliCompl">배송완료</a></li>
                    </ol>
                </nav>

            </div>
        </div>
        <!-- Header End -->



        

        <!-- 상품 결제완료 리스트 Start -->
        <div class="container-xxl py-5" id="payCompl">
            <div class="container">
                <h1 class="text-center mb-4 wow fadeInUp" data-wow-delay="0.1s">상품 결제완료 리스트</h1>
                <div class="tab-class text-center wow fadeInUp" data-wow-delay="0.3s">


                    <div class="container-fluid bg-dark">
                        <div class="row">
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
                        <div id="tab-1" class="tab-pane fade show p-0 active">

                            <div class="job-item p-4 mb-4">
                                <div class="row g-4">
                                    <div class="col-sm-12 col-md-6 d-flex align-items-center">
                                        <img class="flex-shrink-0 img-fluid border rounded" src="img/com-logo-1.jpg" alt="" style="width: 80px; height: 80px;">
                                        <div class="text-start ps-4">
                                            <h5 class="mb-3">국어책, 수학책, 과학책 (40,000원 | 3권)</h5>
                                            <span class="text-truncate me-3"><i class="fa fa-user-tie text-primary me-2"></i>사용자 ID</span>
                                            <small class="text-truncate"><i class="far fa-calendar-alt text-primary me-2"></i>주문일 2021.06.03</small>
                                        </div>
                                    </div>
                                    <!-- - d-flex 는 왼쪽부터 쌓인다는 뜻임
                                    - col-sm-12 col-md-2 12개의 컬럼 중 2개의 영역을 차기 div태그로 해서 위에서 부터 아래로 왼쪽에서 오른 쪽으로 쌓인다.
                                    - align-items-center div틀에 가로로 중앙에 배치 -->
                                    <div class="col-sm-12 col-md-2 d-flex flex-row-reverse align-items-center">
                                        <div class="text-start ps-4">
                                            <h6 class="mb-3">A22086560780780264</h6>
                                        </div>
                                    </div>
                                    <div class="col-sm-12 col-md-4 d-flex flex-column align-items-start align-items-md-end justify-content-center">
                                        <div class="d-flex mb-3">
                                            <a class="btn btn-primary" href="">결제 완료</a>
                                        </div>
                                        <small class="text-truncate"><i class="far fa-calendar-alt text-primary me-2"></i>결제완료일 2021.06.03</small>
                                    </div>
                                </div>
                            </div>

                            <div class="job-item p-4 mb-4">
                                <div class="row g-4">
                                    <div class="col-sm-12 col-md-6 d-flex align-items-center">
                                        <img class="flex-shrink-0 img-fluid border rounded" src="img/com-logo-1.jpg" alt="" style="width: 80px; height: 80px;">
                                        <div class="text-start ps-4">
                                            <h5 class="mb-3">국어책, 수학책, 과학책 (40,000원 | 3권)</h5>
                                            <span class="text-truncate me-3"><i class="fa fa-user-tie text-primary me-2"></i>사용자 ID</span>
                                            <small class="text-truncate"><i class="far fa-calendar-alt text-primary me-2"></i>주문일 2021.06.03</small>
                                        </div>
                                    </div>
                                    <div class="col-sm-12 col-md-2 d-flex flex-row-reverse align-items-center">
                                        <div class="text-start ps-4">
                                            <h6 class="mb-3">A22086560780780264</h6>
                                        </div>
                                    </div>
                                    <div class="col-sm-12 col-md-4 d-flex flex-column align-items-start align-items-md-end justify-content-center">
                                        <div class="d-flex mb-3">
                                            <a class="btn btn-primary" href="">결제 완료</a>
                                        </div>
                                        <small class="text-truncate"><i class="far fa-calendar-alt text-primary me-2"></i>결제완료일 2021.06.03</small>
                                    </div>
                                </div>
                            </div>

                            <a class="btn btn-primary py-3 px-5" href="">More List</a>
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
    <script src="lib/wow/wow.min.js"></script>
    <script src="lib/easing/easing.min.js"></script>
    <script src="lib/waypoints/waypoints.min.js"></script>
    <script src="lib/owlcarousel/owl.carousel.min.js"></script>

    <!-- Template Javascript -->
    <script src="js/main.js"></script>
</body>

</html>