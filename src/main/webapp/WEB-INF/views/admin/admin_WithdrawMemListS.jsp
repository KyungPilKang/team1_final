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

    <jsp:include page="/WEB-INF/views/bookstore/header.jsp"/>
	<!-- Navbar Start -->

	<!-- Navbar End -->

        <!-- 학생 Start -->
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
                            <div class="row">
                            		<div class="col-lg-1 mt-3">
                            			<h6>${mem.no}</h6>
                            		</div>
                                     <div class="col-lg-5 mt-3">
                                        <div class="text-start ps-4">
                                            <h6 class="mb-3" style="text-align: center">${mem.withdraw_contents}</h6>
                                        </div>
                                    </div>
                                    <div class="col-lg-4 mt-3" >
                                        
                                            <h6 style="text-align:left;" class="mb-3" >${mem.withdraw_type}</h6>
                                       
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