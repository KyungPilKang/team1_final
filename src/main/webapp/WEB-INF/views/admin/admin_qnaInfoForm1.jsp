<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <title>NEEDSFULL - 1:1문의완료 폼</title>
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
                <a href="courses.html" class="nav-item nav-link active">학생</a>
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


    <!-- Header Start -->
    <div class="container-fluid bg-primary py-5 mb-5 page-header">
        <div class="container py-5">
            <div class="row justify-content-center">
                <div class="col-lg-10 text-center">
                    <h1 class="display-3 text-white animated slideInDown">1:1문의작성 관리</h1>
                </div>
            </div>
        </div>
    </div>
    <!-- Header End -->


    

    <!-- Courses Start -->
    <div class="container-xxl py-5">
        <div class="container">


				<form id='form' action="qnainfo" method="get">
				
				
                <div class="text-center wow fadeInUp" data-wow-delay="0.1s">
                    <h6 class="section-title bg-white text-center text-primary px-3">${reqInfo.role} 1:1문의 작성 </h6>
                </div>



	                <div class="col-lg-7 col-md-7 text-center wow fadeInUp" data-wow-delay="0.1s">
	                    <h6 class="pt-5 pb-0">${reqInfo.username} 문의내역</h6>
	                </div>
	
	                <div class="row g-1 justify-content-center">
	                    <span class="col-lg-2 col-md-2 wow fadeInUp" data-wow-delay="0.1s">
	                        <div class="course-item bg-light">
	                            <div class="d-flex border-top">
	                                <small class="flex-fill text-center py-2">작성일</small>
	                            </div>
	                        </div>
	                    </span>
	                    <span class="col-lg-5 col-md-5 wow fadeInUp" data-wow-delay="0.1s">
	                            <div class="d-flex border-top">
	                                <small class="flex-fill text-left py-2 px-2">${reqInfo.request_date}</small>
	                            </div>
	                    </span>
	                </div>
	                <div class="row g-1 justify-content-center">
	                    <span class="col-lg-2 col-md-2 wow fadeInUp" data-wow-delay="0.1s">
	                        <div class="course-item bg-light">
	                            <div class="d-flex border-top">
	                                <small class="flex-fill text-center py-2">문의 유형</small>
	                            </div>
	                        </div>
	                    </span>
	                    <span class="col-lg-5 col-md-5 wow fadeInUp" data-wow-delay="0.1s">
	                            <div class="d-flex border-top">
	                                <small class="flex-fill text-left py-2 px-2">${reqInfo.request_type}</small>
	                            </div>
	                    </span>
	                </div>
	                <div class="row g-1 justify-content-center">
	                    <span class="col-lg-2 col-md-2 wow fadeInUp" data-wow-delay="0.1s">
	                        <div class="course-item bg-light">
	                            <div class="d-flex border-top">
	                                <small class="flex-fill text-center py-2">문의 제목</small>
	                            </div>
	                        </div>
	                    </span>
	                    <span class="col-lg-5 col-md-5 wow fadeInUp" data-wow-delay="0.1s">
	                            <div class="d-flex border-top">
	                                <small class="flex-fill text-left py-2 px-2">${reqInfo.request_subject}</small>
	                            </div>
	                    </span>
	                </div>
	                <div class="row g-1 justify-content-center">
	                    <span class="col-lg-2 col-md-2 wow fadeInUp" data-wow-delay="0.1s">
	                        <div class="course-item bg-light">
	                            <div class="d-flex border-top border-bottom">
	                                <small class="flex-fill text-center py-2">문의 내용</small>
	                            </div>
	                        </div>
	                    </span>
	                    <span class="col-lg-5 col-md-5 wow fadeInUp" data-wow-delay="0.1s">
	                            <div class="d-flex border-top border-bottom">
	                                <small class="flex-fill text-left py-2 px-2">${reqInfo.request_content}</small>
	                            </div>
	                    </span>
	                </div>
	                
	                
	                
	                <div class="col-lg-7 col-md-7 text-center wow fadeInUp" data-wow-delay="0.1s">
                    <h6 class="pt-5 pb-0">답변작성</h6>
	                </div>
	                <div class="row g-1 justify-content-center">
	                    <span class="col-lg-2 col-md-2 wow fadeInUp" data-wow-delay="0.1s">
	                        <div class="course-item bg-light">
	                            <div class="d-flex border-top">
	                                <small class="flex-fill text-center py-2">답변일</small>
	                            </div>
	                        </div>
	                    </span>
	                    <span class="col-lg-5 col-md-5 wow fadeInUp" data-wow-delay="0.1s">
	                            <div class="d-flex border-top">
	                                <small class="flex-fill text-left py-2 px-2">${ansInfo.answer_date}</small>
	                            </div>
	                    </span>
	                </div>
	                <div class="row g-1 justify-content-center">
	                    <span class="col-lg-2 col-md-2 wow fadeInUp" data-wow-delay="0.1s">
	                        <div class="course-item bg-light">
	                            <div class="d-flex border-top border-bottom">
	                                <small class="flex-fill text-center py-5">답글 내용</small>
	                            </div>
	                        </div>
	                    </span>
	                    <span class="col-lg-5 col-md-10 wow fadeInUp" data-wow-delay="0.1s">
	                            <div class="d-flex border-top border-bottom">
	                                <small class="flex-fill text-left py-5 px-2">${ansInfo.answer_content}</small>
	                            </div>
	                    </span>
	                </div>


			</form>


            <div class="row g-1 justify-content-center py-5">
                <span class="col-lg-1 col-md-3">
                    <button class="btn btn-primary w-100 py-1" type="submit">취소</button>
                </span>
                <span class="col-lg-1 col-md-3">
                    <button class="btn btn-primary w-100 py-1" type="submit">목록으로</button>
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
    <script src="lib/wow/wow.min.js"></script>
    <script src="lib/easing/easing.min.js"></script>
    <script src="lib/waypoints/waypoints.min.js"></script>
    <script src="lib/owlcarousel/owl.carousel.min.js"></script>

    <!-- Template Javascript -->
    <script src="js/main.js"></script>
</body>

</html>