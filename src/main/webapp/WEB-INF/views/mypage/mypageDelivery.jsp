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

    <link href="https://vjs.zencdn.net/7.10.2/video-js.css" rel="stylesheet"/>
    <script src="https://vjs.zencdn.net/7.10.2/video.min.js"></script>
    <link href="https://unpkg.com/@silvermine/videojs-quality-selector/dist/css/quality-selector.css" rel="stylesheet">
    <script src="https://unpkg.com/@silvermine/videojs-quality-selector/dist/js/silvermine-videojs-quality-selector.min.js"></script>

</head>

<body>
<%
    int no = (Integer)session.getAttribute("no");
    String username = (String)session.getAttribute("username");
    String name = (String)session.getAttribute("name");
    String nickname = (String)session.getAttribute("nickname");
    String email = (String)session.getAttribute("email");
    String phone = (String)session.getAttribute("phone");
    String zipcode = (String)session.getAttribute("zipcode");
    String doro_juso = (String)session.getAttribute("doro_juso");
    String sangse_juso1 = (String)session.getAttribute("sangse_juso1");
    String sangse_juso2 = (String)session.getAttribute("sangse_juso2");
%>
<!-- Spinner Start -->
<div id="spinner"
     class="show bg-white position-fixed translate-middle w-100 vh-100 top-50 start-50 d-flex align-items-center justify-content-center">
    <div class="spinner-border text-primary" style="width: 3rem; height: 3rem;" role="status">
        <span class="sr-only">Loading...</span>
    </div>
</div>
<!-- Spinner End -->

<jsp:include page="/WEB-INF/views/bookstore/header.jsp"/>
<!-- Navbar Start -->
<%--<nav class="navbar navbar-expand-lg bg-white navbar-light shadow sticky-top p-0">
    <a href="/home" class="navbar-brand d-flex align-items-center px-4 px-lg-5">
        <h2 class="m-0 text-primary"><i class="fa fa-book me-3"></i>NEESFULL</h2>
    </a>
    <button type="button" class="navbar-toggler me-4" data-bs-toggle="collapse" data-bs-target="#navbarCollapse">
        <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarCollapse">
        <div class="navbar-nav ms-auto p-4 p-lg-0">
            <a href="/mypage" class="nav-item nav-link">마이페이지</a>
            <a href="/request" class="nav-item nav-link">고객센터</a>
            <a href="/log_out" class="nav-item nav-link">로그아웃</a>
        </div>
    </div>
</nav>--%>
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
                <h1 class="section-title bg-white text-center text-primary px-3">= 배송조회 =</h1>
            </div>
        </div>

        <div class="default">
            <div class="subnavbar">
                <div class="navbar-main">
                    <div class="navbar-name">-배송조회-</div>
                </div>
                <div class="navbar-bt">
                    <div>
                        <button type="button" onclick="location.href='/mypage'">홈</button>
                    </div>
                    <div>
                        <button type="button" onclick="location.href='/mypagedelivery'">배송조회</button>
                    </div>
                    <div>
                        <button type="button" onclick="location.href='/studyclass'">스터디현황</button>
                    </div>
                </div>
            </div>

            <div class="container-xxl py-10 mt-5">
                <div class="container user-info" style="overflow-y: scroll;">
                    <div class="delivery-container" style="width: 99% !important;">
                        <div class="container-fluid bg-dark delivery-status">
                            <div class="row">
                                <div class="col-sm-12 col-md-7 align-items-center">
                                    <h6 class="text-white my-4 delivery-status-text1">상품내용</h6>
                                </div>

                                <div class="col-sm-12 col-md-1 align-items-center">
                                    <h6 class="text-white my-4 delivery-status-text2">주문내용</h6>
                                </div>

                                <div class="col-sm-12 col-md-3 d-flex flex-row-reverse align-items-center">
                                    <h6 class="text-white my-4 delivery-status-text3">상태</h6>
                                </div>
                            </div>
                        </div>

                        <c:forEach var="order" items="${orderList}">
                            <div style="display: flex; justify-content: space-around; margin-top: 20px;">
                        <img src="/book-store/book-img/${order.book_img}" style="width: 100px;height: 140px;">
                                <div class="book-status">
                            주문상태:${order.order_state}&nbsp;&nbsp;|&nbsp;&nbsp;
                            총권수:${order.total_count}&nbsp;&nbsp;|&nbsp;&nbsp;
                            총금액:${order.total_price}
                                </div>
                                <div class="delivery-bt">
                                <c:choose>
                                    <c:when test="${order.order_state == '결제완료'}">
                        <a class="btn btn-primary py-3 px-5">결제 완료</a>
                                    </c:when>
                                    <c:when test="${order.order_state == '배송중'}">
                        <a class="btn btn-primary py-3 px-5" href="#" onclick="deliPopup(${order.order_deli_num})">배송 조회</a>
                                    </c:when>
                                    <c:otherwise>
                        <a class="btn btn-primary py-3 px-5" href="#" onclick="deliPopup(${order.order_deli_num})">배송 완료</a>
                                    </c:otherwise>
                                </c:choose>
                                </div>
                            </div>
                            <br>
                        </c:forEach>
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
<script src="${pageContext.request.contextPath}/resources/mypage/js/myFage.js"></script>
<script>
    function deliPopup(deliNum) {
        window.open("https://tracker.delivery/#/kr.cjlogistics/"+deliNum, "pop", "width=769,height=800, scrollbars=yes, resizable=yes");
    }
</script>


</body>
</html>