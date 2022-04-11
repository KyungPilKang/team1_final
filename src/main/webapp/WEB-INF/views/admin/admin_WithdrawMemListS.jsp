<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <title>NEEDSFULL - 탈퇴회원관리 폼(학생)</title>
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
                <a href="courses.html" class="nav-item nav-link">학생</a>
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
                <h4 class="display-3 text-white mb-3 animated slideInDown">탈퇴회원 리스트</h4>

                <nav aria-label="breadcrumb">
                    <ol class="breadcrumb text-uppercase">
                        <li class="breadcrumb-item"><a href="/withdrawmemlistT">강사</a></li>
                        <li class="breadcrumb-item"><a href="/withdrawmemlistS">학생</a></li>
                    </ol>
                </nav>

            </div>
        </div>
        <!-- Header End -->





        <!-- 강사 Start -->
        <div class="container-xxl py-5" id="freelancer">
            <div class="container">
                <h1 class="text-center mb-4 wow fadeInUp" data-wow-delay="0.1s">학생 탈퇴회원 리스트</h1>
                <div class="tab-class text-center wow fadeInUp" data-wow-delay="0.3s">


                    <div class="container-fluid bg-dark">
                        <div class="row">
                        	<div class="col-lg-1">
                        		<h6 class="text-white my-4">순번</h6>
                        	</div>
                            <div class="col-lg-5">
                                <h6 class="text-white my-4">내용</h6>
                            </div>

                            <div class="col-lg-4">
                                <h6 style="text-align:left;" class="text-white my-4">탈퇴사유</h6>
                            </div>
        					
                            <div class="col-lg-2">
                                <h6 class="text-white my-4">탈퇴일자</h6>
                            </div>
                        </div>
                    </div>
                    

                    <div class="tab-content">
                        <div id="tab-1" class="tab-pane fade show p-0 active">
							
							<c:forEach items="${memList}" var="mem" varStatus="status">
                            	<c:set var="i" value="${i+1 }"/>
                            <div class="row">
                            		<div class="col-lg-1 mt-3">
                            			<h6>${i }</h6>
                            		</div>
                                     <div class="col-lg-5 mt-3">
                                        <div class="text-start ps-4">
                                            <h6 class="mb-3">${mem.withdraw_contents}</h6>
                                        </div>
                                    </div>
                                    <div class="col-lg-4 mt-3">
                                        
                                            <h6 style="text-align:left;" class="mb-3">${mem.withdraw_type}</h6>
                                       
                                    </div>
                                    <div class="col-lg-2 mt-3">
                                         <h6>${mem.withdraw_date}</h6>
                                    </div>
                               
                            </div>
                            <hr>
                            </c:forEach>



                            
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- 학생 End -->

        



      





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
</body>

</html>