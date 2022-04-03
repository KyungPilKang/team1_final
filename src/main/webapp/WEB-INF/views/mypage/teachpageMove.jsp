<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>eLEARNING - eLearning HTML Template</title>
    <meta content="width=device-width, initial-scale=1.0" name="viewport">
    <meta content="" name="keywords">
    <meta content="" name="description">

    <!-- Favicon -->
    <link href="${pageContext.request.contextPath}/resources/asset/needsfull.ico" rel="icon">
    <link href="${pageContext.request.contextPath}/resources/css/mypage/mypage.css" rel="stylesheet">

    <!-- Google Web Fonts -->
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Stylish&display=swap" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css2?family=Heebo:wght@400;500;600&family=Nunito:wght@600;700;800&display=swap"
          rel="stylesheet">

    <!-- Icon Font Stylesheet -->
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.10.0/css/all.min.css" rel="stylesheet">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.4.1/font/bootstrap-icons.css" rel="stylesheet">

    <!-- Libraries Stylesheet -->
    <link href="${pageContext.request.contextPath}/resources/mypage/lib/animate/animate.min.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/resources/mypage/lib/owlcarousel/assets/owl.carousel.min.css"
          rel="stylesheet">

    <!-- Customized Bootstrap Stylesheet -->
    <link href="${pageContext.request.contextPath}/resources/mypage/css/bootstrap.min.css" rel="stylesheet">

    <!-- Template Stylesheet -->
    <link href="${pageContext.request.contextPath}/resources/mypage/css/style.css" rel="stylesheet">
</head>

<body>
<!-- Spinner Start -->
<div id="spinner"
     class="show bg-white position-fixed translate-middle w-100 vh-100 top-50 start-50 d-flex align-items-center justify-content-center">
    <div class="spinner-border text-primary" style="width: 3rem; height: 3rem;" role="status">
        <span class="sr-only">Loading...</span>
    </div>
</div>
<!-- Spinner End -->


<!-- Navbar Start -->
<nav class="navbar navbar-expand-lg bg-white navbar-light shadow sticky-top p-0">
    <a href="/mypage" class="navbar-brand d-flex align-items-center px-4 px-lg-5">
        <h2 class="m-0 text-primary"><i class="fa fa-book me-3"></i>NEESFULL</h2>
    </a>
    <button type="button" class="navbar-toggler me-4" data-bs-toggle="collapse" data-bs-target="#navbarCollapse">
        <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarCollapse">
        <div class="navbar-nav ms-auto p-4 p-lg-0">
            <div class="nav-item dropdown">
                <a href="#" class="nav-link" data-bs-toggle="dropdown">마이페이지</a>
                <div class="dropdown-menu fade-down m-0">
                    <a href=# class="dropdown-item">마이페이지</a>
                    <a href=# class="dropdown-item">마이페이지</a>
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
                <h1 class="display-3 text-white animated slideInDown">마이페이지</h1>
            </div>
        </div>
    </div>
</div>
<!-- Header End -->


<!-- Contact Start -->
<div class="box">
    <div class="main">
        <div class="my-subject">
            <div class="subject">
                <h1 class="section-title bg-white text-center text-primary px-3">= 강사 =</h1>
            </div>
        </div>

        <div class="default">
            <div class="subnavbar">
                <div class="navbar-main">
                    <div class="navbar-name">- 강의 목록 -</div>
                </div>
                <div class="navbar-bt">
                    <div><a href="/teachpagedefult">홈</a></div>
                    <div><a href="/teachpagemove">강의 목록</a></div>
                    <div><a href="/teachpagerequest">요청 목록</a></div>
                </div>
            </div>
            <div class="default-intro">
                <div class="intro move-list">
                    <h1 class="move-list_subject">- 강의 목록 -</h1>
                    <div class="make-movelist">
                        <div class="move">
                            <img src="#" class="move-name"><br>
                            <span class="move-subject">JAVA의 정석 /</span>
                            <span class="move-producer">&nbsp김길동</span>
                            <div class="star-point">★★★★★</div>
                            <span class="freelane-type">프리랜서 종류 /</span>
                            <span class="freelane-inpo">종류별 주요 정보</span>
                            <form>
                                <span>리뷰 /</span>
                                <span>&nbsp근무형태 /</span>
                                <span>&nbsp계약횟수</span>
                            </form>
                        </div>
                        <div class="move">
                            <img src="#" class="move-name"><br>
                            <span class="move-subject">JAVA의 정석 /</span>
                            <span class="move-producer">&nbsp김길동</span>
                            <div class="star-point">★★★★★</div>
                            <span class="freelane-type">프리랜서 종류 /</span>
                            <span class="freelane-inpo">종류별 주요 정보</span>
                            <form>
                                <span>리뷰 /</span>
                                <span>&nbsp근무형태 /</span>
                                <span>&nbsp계약횟수</span>
                            </form>
                        </div>
                        <div class="move">
                            <img src="#" class="move-name"><br>
                            <span class="move-subject">JAVA의 정석 /</span>
                            <span class="move-producer">&nbsp김길동</span>
                            <div class="star-point">★★★★★</div>
                            <span class="freelane-type">프리랜서 종류 /</span>
                            <span class="freelane-inpo">종류별 주요 정보</span>
                            <form>
                                <span>리뷰 /</span>
                                <span>&nbsp근무형태 /</span>
                                <span>&nbsp계약횟수</span>
                            </form>
                        </div>
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
                    &copy; <a class="border-bottom" href="#">NEEDSFULL</a>, All Right Reserved.

                    <!--/*** This template is free as long as you keep the footer author’s credit link/attribution link/backlink. If you'd like to use the template without the footer author’s credit link/attribution link/backlink, you can purchase the Credit Removal License from "https://htmlcodex.com/credit-removal". Thank you for your support. ***/-->
                    Designed By <a class="border-bottom" href="https://htmlcodex.com">HTML Codex</a><br><br>
                    Distributed By <a class="border-bottom" href="https://themewagon.com">ThemeWagon</a>
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
<a href="#" class="btn btn-lg btn-primary btn-lg-square back-to-top"><i class="bi bi-arrow-up"></i></a>


<!-- JavaScript Libraries -->
<script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/js/bootstrap.bundle.min.js"></script>
<script src="${pageContext.request.contextPath}/resources/mypage/lib/wow/wow.min.js"></script>
<script src="${pageContext.request.contextPath}/resources/mypage/lib/easing/easing.min.js"></script>
<script src="${pageContext.request.contextPath}/resources/mypage/lib/waypoints/waypoints.min.js"></script>
<script src="${pageContext.request.contextPath}/resources/mypage/lib/owlcarousel/owl.carousel.min.js"></script>

<!-- Template Javascript -->
<script src="${pageContext.request.contextPath}/resources/mypage/js/main.js"></script>

<!-- DIY -->
<script src="https://cdn.jsdelivr.net/npm/sweetalert2@10"></script>
<script src="${pageContext.request.contextPath}/resources/mypage/js/mypage.js"></script>
</body>
</html>