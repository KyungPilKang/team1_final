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
<link href="${pageContext.request.contextPath}/resources/freelance/img/favicon.ico" rel="icon">

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
<style>
.parent{
    width: 70%;
    margin: 10px auto;
    display: flex;
}

.first {
    border: 1px solid red;
    flex:1;
    width:30%;
    box-sizing: border-box;
}

.second{
    border: 1px solid green;
    flex:1;
    margin: 0px 5%;
    width:30%;
    box-sizing: border-box;
}

.third{
    border: 1px solid blue;
    flex:1;
    width:30%;
    box-sizing: border-box;
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
			<h2 class="m-0 text-primary">
				<i class="fa fa-book me-3"></i>NEESFULL
			</h2>
		</a>
		<button type="button" class="navbar-toggler me-4" data-bs-toggle="collapse" data-bs-target="#navbarCollapse">
			<span class="navbar-toggler-icon"></span>
		</button>
		<div class="collapse navbar-collapse" id="navbarCollapse">
			<div class="navbar-nav ms-auto p-4 p-lg-0">
				<a href="index.html" class="nav-item nav-link">Home</a>
				<a href="about.html" class="nav-item nav-link">About</a>
				<a href="courses.html" class="nav-item nav-link">Courses</a>
				<div class="nav-item dropdown">
					<a href="#" class="nav-link dropdown-toggle" data-bs-toggle="dropdown">Pages</a>
					<div class="dropdown-menu fade-down m-0">
						<a href=# class="dropdown-item">Our Team</a>
						<a href=# class="dropdown-item">Testimonial</a>
						<a href=# class="dropdown-item">404 Page</a>
					</div>
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
					<h1 class="display-3 text-white animated slideInDown">스터디 매칭</h1>
				</div>
			</div>
		</div>
	</div>
	<!-- Header End -->
	
	
	<!-- Content Start -->
	
	
	
	
		<div class="container">
		<p>검색결과페이지</p>
		<div class="row g-4">
	<%-- <c:forEach var="study" items="${studylist}"> --%>
			<div class="col-lg-4 col-md-6 wow fadeInUp">
        		$[study.name0]
        	</div>
        	
        	<div class="col-lg-4 col-md-6 wow fadeInUp">
        		$[study.name1]
        	</div>
        	
        	<div class="col-lg-4 col-md-6 wow fadeInUp">
        		$[study.name2]
        	</div>
    <%-- </c:forEach> --%>
    	</div>
    	
    	<div class="row g-4">
	<%-- <c:forEach var="study" items="${studylist}"> --%>
        	<div class="col-lg-4 col-md-6 wow fadeInUp">
        		$[study.name3]
        	</div>
        	
        	<div class="col-lg-4 col-md-6 wow fadeInUp">
        		$[study.name4]
        	</div>
        	
        	<div class="col-lg-4 col-md-6 wow fadeInUp">
        		$[study.name5]
        	</div>
    <%-- </c:forEach> --%>
    	</div>
    	
    	<div class="row g-4">
	<%-- <c:forEach var="study" items="${studylist}"> --%>
        	<div class="col-lg-4 col-md-6 wow fadeInUp">
        		$[study.name6]
        	</div>
        	
        	<div class="col-lg-4 col-md-6 wow fadeInUp">
        		$[study.name7]
        	</div>
        	
        	<div class="col-lg-4 col-md-6 wow fadeInUp">
        		$[study.name8]
        	</div>
    <%-- </c:forEach> --%>
    	</div>
    	</div>
 
    
        
	
	
	
	
	
	<!-- Content End -->
	
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
						<br>
						<br> Distributed By
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
	<script src="${pageContext.request.contextPath}/resources/study/js/mystudy1.js"></script>
	

</body>
</html>