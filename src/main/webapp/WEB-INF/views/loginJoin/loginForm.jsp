<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <title>eLEARNING - eLearning HTML Template</title>
    <meta content="width=device-width, initial-scale=1.0" name="viewport">
    <meta content="" name="keywords">
    <meta content="" name="description">

    <!-- Favicon -->
    <link href="#${pageContext.request.contextPath}/resources/login/img/favicon.ico" rel="icon">

    <!-- Google Web Fonts -->
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Heebo:wght@400;500;600&family=Nunito:wght@600;700;800&display=swap" rel="stylesheet">

    <!-- Icon Font Stylesheet -->
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.10.0/css/all.min.css" rel="stylesheet">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.4.1/font/bootstrap-icons.css" rel="stylesheet">

    <!-- Libraries Stylesheet -->
    <link href="${pageContext.request.contextPath}/resources/login/lib/animate/animate.min.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/resources/login/lib/owlcarousel/assets/owl.carousel.min.css" rel="stylesheet">

    <!-- Customized Bootstrap Stylesheet -->
    <link href="${pageContext.request.contextPath}/resources/login/css/bootstrap.min.css" rel="stylesheet">

    <!-- Template Stylesheet -->
    <link href="${pageContext.request.contextPath}/resources/login/css/style.css" rel="stylesheet">
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
        <a href="home" class="navbar-brand d-flex align-items-center px-4 px-lg-5">
            <h2 class="m-0 text-primary"><i class="fa fa-book me-3"></i>eLEARNING</h2>
        </a>
        <button type="button" class="navbar-toggler me-4" data-bs-toggle="collapse" data-bs-target="#navbarCollapse">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarCollapse">
            <div class="navbar-nav ms-auto p-4 p-lg-0">
            </div>
            <a href="home" class="btn btn-primary py-4 px-lg-5 d-none d-lg-block">Home<i class="fa fa-arrow-right ms-3"></i></a>
        </div>
    </nav>
    <!-- Navbar End -->

    <!-- Header Start -->
    <!-- Header End -->

    <!-- Contact Start -->
    <div class="container-xxl py-10 mt-5">
        <div class="container">
            <div class="text-center wow fadeInUp" data-wow-delay="0.1s">
                <h6 class="section-title bg-white text-center text-primary px-3">LOG IN</h6>
                <h1 class="mt-5 mb-5">회원/소셜 로그인</h1>
                <div class="row text-center col-lg-4 col-md-12 wow fadeInUp" data-wow-delay="0.5s" style="width: 30%; float:none; margin:0 auto">
                    <form>
                        <div class="row g-3" >                           
                            <div class="col-12">
                                <div class="form-floating">
                                    <input type="text" class="form-control" id="id" placeholder="id">
                                    <label for="id">ID</label>
                                </div>
                            </div>
                            <div class="col-12">
                                <div class="form-floating">
                                    <input type="text" class="form-control" id="password" placeholder="password">
                                    <label for="password">PASSWORD</label>
                                </div>
                            </div>
                         <!--비밀번호 3회 이상 오입력시 캡챠 활성화 -->
                            <div class="captcha" id=capchacon style="display:none;">
                                <img src="/captcha" id="cap_img">
                              <div class="mt-2 mb-2">
                                  <input class="form-control" type="text" id="userin" name="userin">
                              </div>
                                  <input class="btn btn-success" type="button" onclick="caprefesh()" value="새로고침">
                                  <input class="btn btn-success" type="button" id="captchavalid" value="확인하기">	
                              </div>
                            
                            <div class="col-12" >
                                <a   href="https://kauth.kakao.com/oauth/authorize?response_type=code&client_id=94fc26e459f927ce79257dc6c17527a7&redirect_uri=http://localhost:8090/auth/kakao/callback" >
                                 <img src="${pageContext.request.contextPath}/resources/login/kakao2.png" style="height:58px;" class="w-100">
                                </a>
                            </div>
                            <div class="col-12" >
                                <a  href="https://nid.naver.com/oauth2.0/authorize?client_id=24OF3VzEePL0jwU_gwRz&response_type=code&redirect_uri=http://localhost:8090/auth/naver/callback&state=oauth_state" >
                                    <img src="${pageContext.request.contextPath}/resources/login/naver2.png" style="height:58px;" class="w-100">
                                </a>
                            </div>
                        
                            <div class="col-12">
                                <button class="btn btn-primary w-100 py-3" type="submit">로그인 하기</button>
                            </div>
                            <div class="col-12">
                                <button class="btn btn-primary w-100 py-3" >회원가입하기</button>
                            </div>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
    <!-- Contact End -->

    <!-- JavaScript Libraries -->
    <script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/js/bootstrap.bundle.min.js"></script>
    <script src="${pageContext.request.contextPath}/resources/login/lib/wow/wow.min.js"></script>
    <script src="${pageContext.request.contextPath}/resources/login/lib/easing/easing.min.js"></script>
    <script src="${pageContext.request.contextPath}/resources/login/lib/waypoints/waypoints.min.js"></script>
    <script src="${pageContext.request.contextPath}/resources/login/lib/owlcarousel/owl.carousel.min.js"></script>
	<script src="https://cdn.jsdelivr.net/npm/sweetalert2@10"></script>
    <!-- Template Javascript -->
    <script src="${pageContext.request.contextPath}/resources/login/js/main.js"></script>
    <script src="${pageContext.request.contextPath}/resources/login/js/loginForm.js"></script>
    
</body>

</html>