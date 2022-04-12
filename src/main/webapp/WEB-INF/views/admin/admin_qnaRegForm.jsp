<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <title>NEEDSFULL - 1:1문의작성 폼</title>
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
						<a href="http://localhost:8090/qnalist" style="font-size: 1.3em;" class="dropdown-item">1:1문의관리</a>
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
					<h1 class="display-3 text-white animated slideInDown">1:1문의 작성</h1>
				</div>
			</div>
		</div>
	</div>
	<!-- Header End -->


    

    <!-- 답변등록 폼 시작 -->
    <div class="container-xxl py-5">
        <div class="container">


            <div class="text-center wow fadeInUp" data-wow-delay="0.1s">
                <h6 class="section-title bg-white text-center text-primary px-3">${reqReg.role} 1:1문의 작성 </h6>
            </div>
 
 
 
	            <div class="col-lg-7 col-md-7 text-center wow fadeInUp" data-wow-delay="0.1s">
	                <h6 class="pt-5 pb-0">${reqReg.username} 문의내역</h6>
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
	                            <small class="flex-fill text-left py-2 px-2">${reqReg.request_date}</small>
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
	                            <small class="flex-fill text-left py-2 px-2">${reqReg.request_type}</small>
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
	                            <small class="flex-fill text-left py-2 px-2">${reqReg.request_subject}</small>
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
	                            <small class="flex-fill text-left py-2 px-2">${reqReg.request_content}</small>
	                        </div>
	                </span>
	            </div>



			
			<form id='form' action="qnareg" method="get">
	            <div class="col-lg-7 col-md-7 text-center wow fadeInUp" data-wow-delay="0.1s">
	                <h6 class="pt-5 pb-0">답변작성</h6>
	            </div>
	            <!-- 라인 -->
	            <div class="row justify-content-center">
	                <div class="col-lg-7 col-md-7 d-flex border-bottom">
	                </div>
	            </div>
	
	            <!-- 답글창 -->
	            <div class="row justify-content-center py-2">
	                <div class="col-lg-6 col-md-6 text-center">
	                    <div class="form-floating">
	                        <input type="text" class="form-control" placeholder="Leave a message here" style="height: 150px" id="answer_content" name="answer_content">
	                    </div>
	                </div>
	            </div>
	
	            <!-- 라인 -->
	            <div class="row justify-content-center">
	                <div class="col-lg-7 col-md-7 d-flex border-bottom">
	                </div>
	            </div>
	
	
	            <div class="row g-1 justify-content-center py-5">
	                <span class="col-lg-1 col-md-3">
	                    <input class="btn btn-primary w-100 py-1" type="submit" value='취소'>
	                </span>
	                <span class="col-lg-1 col-md-3">
	                    <input class="btn btn-primary w-100 py-1" type="submit" id="submit" value='답변등록'>
	                </span>
	            </div>
			</form>
			
        </div>
    </div>
    
    <script src="http://code.jquery.com/jquery-latest.min.js"></script>
    <script>
    $('#form').submit(function() {
        let answer_content = $('#answer_content').val();
        if(answer_content=='') {
        	alert("내용을 입력하세요.");
        	$('#answer_content').focus();
        	return false;
        }
    });
    </script>
    <!-- 답변등록 폼 끝 -->





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