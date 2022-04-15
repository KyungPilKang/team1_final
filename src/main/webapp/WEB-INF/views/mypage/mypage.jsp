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
                <h1 class="section-title bg-white text-center text-primary px-3">= 회원정보 =</h1>
            </div>
        </div>

        <div class="default">
            <div class="subnavbar">
                <div class="navbar-main">
                    <div class="navbar-name">- 홈 -</div>
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
                <div class="container user-info">
                    <div class="text-center wow fadeInUp" data-wow-delay="0.1s">

                        <div class="row text-center col-lg-5 col-md-12 wow fadeInUp" data-wow-delay="0.5s" style="width: 55%; float: none; margin: 0 auto">
                            <form name="form" id="form" action="updateMember" method="post" novalidate>
                                <input type="hidden" value="<%=no %>" name="no">
                                <div class="row g-3">
                                    <table id="table1" class="table">
                                        <colgroup>
                                            <col width="27%">
                                        </colgroup>
                                        <tbody>
                                        <tr class="trborder">
                                            <th>아이디 <span class="star">*</span>
                                            </th>
                                            <td>
                                                <div class="row">
                                                    <div class="col-lg-3">
                                                        <h5><%=username %></h5>
                                                    </div>
                                                </div>
                                            </td>

                                        </tr>
                                        <tr>
                                            <th>비밀번호 <span class="star">*</span>
                                            </th>
                                            <td>
                                            </td>
                                        </tr>
                                        <tr>
                                            <th>이름 <span class="star">*</span>
                                            </th>
                                            <td>
                                                <div class="row">
                                                    <div class="col-lg-3">
                                                        <h5><%=name %></h5>
                                                    </div>
                                                </div>
                                            </td>
                                        </tr>
                                        <tr>
                                            <th>닉네임 <span class="star">*</span>
                                            </th>
                                            <td>
                                                <div class="row">
                                                    <div class="col-lg-3">
                                                        <input type="text" id="nickname1" name="nickname1" value="<%=nickname %>" style="background-color:transparent; border:none;" class="form-control" readonly>
                                                    </div>
                                                </div>
                                            </td>
                                        </tr>
                                        <tr>
                                            <th>이메일 <span class="star">*</span>
                                            </th>
                                            <td>
                                                <div class="row">
                                                    <div class="col-lg-6">
                                                        <input type="text" id="email" name="email" value="<%=email %>" style="background-color:transparent; border:none;" class="form-control" readonly>
                                                    </div>
                                                </div>
                                            </td>
                                        </tr>
                                        <tr>
                                            <th>휴대전화 <span class="star">*</span>
                                            </th>
                                            <td>
                                                <div class="row">
                                                    <div class="col-lg-4">
                                                        <input type="text" id="phone" name="phone" maxlength="11" size="11" value="<%=phone %>" style="background-color:transparent; border:none;" class="form-control old" readonly>
                                                    </div>
                                            </td>
                                        </tr>
                                        <tr>
                                            <th>주소 <span class="star">*</span>
                                            </th>
                                            <td>
                                                <div class="row">
                                                    <div class="col-lg-7">
                                                        <input type="text" id="zipcode" name="zipcode" value="<%=zipcode %>" maxlength="6" readonly="" class="form-control">
                                                    </div>
                                                    <div class="col-lg-10 pt-2">
                                                        <input type="text" id="doro_juso" name="doro_juso" value="<%=doro_juso %>" readonly="" class="form-control">
                                                    </div>
                                                    <div class="col-lg-2"></div>
                                                    <div class="col-lg-6 pt-2">
                                                        <input type="text" id="sangsejuso1" name="sangsejuso1" value="<%=sangse_juso1 %>" readonly="" class="form-control">
                                                    </div>
                                                    <div class="col-lg-6 pt-2">
                                                        <input type="text" id="sangsejuso2" name="sangsejuso2" value="<%=sangse_juso2 %>" class="form-control">
                                                    </div>
                                                    <div id="warning" class="col-lg-10 pt-2">
                                                        <span id="warning" class="input-group-addon text-left">* 주소는 상세주소까지 정확하게 입력해주세요.주소가 정확하지 않을 경우, 배송이 원활하지 않을 수 있습니다.</span>
                                                    </div>
                                                    <input type="hidden" name="sangse_juso" id="sangse_juso">
                                                </div>
                                            </td>
                                        </tr>
                                        </tbody>
                                    </table>
                                </div>
                            </form>
                            <div class="row pt-3 ">
                                <div class="col-1"></div>
                                <div class="col-5">
                                    <button id="modify" onclick="location.href='/modify'" class="btn btn-primary w-100 py-3 user-info-bt" type="button">수정하기</button>
                                </div>
                                <div class="col-5">
                                    <button id="modify" onclick="location.href='/withdrawForm'" class="btn btn-primary w-100 py-3 user-info-bt" type="button">회원탈퇴</button>
                                </div>
                            </div>
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
<script src="${pageContext.request.contextPath}/resources/mypage/js/myFage.js"></script>


</body>
</html>