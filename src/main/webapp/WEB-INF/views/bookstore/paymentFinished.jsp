<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <meta charset="utf-8">
    <title>NEEDSFULL</title>
    <meta content="width=device-width, initial-scale=1.0" name="viewport">
    <meta content="" name="keywords">
    <meta content="" name="description">

    <!-- Favicon -->
    <link href="${pageContext.request.contextPath}/resources/asset/needsfull.ico" rel="icon">

    <!-- Google Web Fonts -->
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Stylish&display=swap" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css2?family=Heebo:wght@400;500;600&family=Nunito:wght@600;700;800&display=swap"
          rel="stylesheet">

    <!-- Icon Font Stylesheet -->
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.14.0/css/all.css"
          integrity="sha384-HzLeBuhoNPvSl5KYnjx0BT+WB0QEEqLprO+NBkkk5gbc67FTaL7XIGa2w1L0Xbgc" crossorigin="anonymous">
    <link href="https://fonts.googleapis.com/icon?family=Material+Icons+Outlined" rel="stylesheet">
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.10.0/css/all.min.css" rel="stylesheet">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.4.1/font/bootstrap-icons.css" rel="stylesheet">

    <!-- Libraries Stylesheet -->
    <%--    <link href="${pageContext.request.contextPath}/resources/bookstore/lib/animate/animate.min.css" rel="stylesheet">--%>
    <%--    <link href="${pageContext.request.contextPath}/resources/bookstore/lib/owlcarousel/assets/owl.carousel.min.css" rel="stylesheet">--%>

    <!-- Customized Bootstrap Stylesheet -->
    <link href="${pageContext.request.contextPath}/resources/bookstore/css/bootstrap.min.css" rel="stylesheet">

    <!-- Template Stylesheet -->
    <link href="${pageContext.request.contextPath}/resources/bookstore/css/style.css" rel="stylesheet">
    <title>Title</title>
    <style>

        .bg-primary{
            background: none !important;
        }

        .ok{
            display: flex;
            justify-content: center;
        }

        .payment_container{
            margin-top : -210px;
            width: 60vw;
            height: 840px;
            background: rgb(243, 243, 243);
            border-color: var(--primary);
            margin-bottom: -20px;
        }

        .payment_probar{
            width: 100%;
            height: 100px;
            background: rgb(6, 187, 204);
            display: flex;
            justify-content: center;
            align-items: center;
        }


        .now_process{
            color:white !important;
        }

        .payment_probar > span {
            color: rgba(255, 255, 255, 0.38);
            font-size: 34px;
            margin-left: 40px;
        }

        .info_table > tbody > tr > th {
            width: 5vw;
        }

        #email_local::placeholder {
            color: rgba(171, 171, 171, 0.42);
        }

        .search_address {
            height: 39px;
            width: 100px;
            font-size: 20px;
            margin-left: -20px;
        }

        .star {
            color: red;
        }

        .item_box {
            height: 200px;
        }

        .button_box {
            display: flex;
            justify-content: center;
        }
    </style>
</head>


<body>

<jsp:include page="/WEB-INF/views/bookstore/header.jsp"/>

<!-- Header Start -->
<div class="container-fluid bg-primary py-5 mb-5 page-header">
    <div class="container py-5">
        <div class="row justify-content-center">
            <div class="col-lg-10 text-center">
            </div>
        </div>
    </div>
</div>
<!-- Header End -->

<!-- Contact Start -->
<div class="container-xxl py-10 mt-5 ok">
    <div class="payment_container">
        <div class="payment_probar">
            <span >배송지 정보 입력</span>
            <span > > </span>
            <span>결제방법 선택</span>
            <span> > </span>
            <span class="now_process">결제완료</span>
        </div>
        <div style="display: flex; flex-direction: column; align-items: center; justify-content: center; margin-top: 10vh;">
        <div class="item_box row text-center col-lg-5 col-md-12 wow fadeInUp" data-wow-delay="0.5s" style="width: 55%">

            <h2 style="margin-top: 5vh">결제가 완료되었습니다.</h2>
        </div>
        <button onclick="location.href='/mypagedelivery'" style="border-radius: 10px;" class="btn btn-primary">내 주문 상세보기</button>
        </div>
    </div>
</div>

<!-- Contact End -->

<jsp:include page="/WEB-INF/views/bookstore/footer.jsp"/>


<!-- JavaScript Libraries -->
<script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/js/bootstrap.bundle.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/sweetalert2@10"></script>
<!-- Template Javascript -->
<script src="${pageContext.request.contextPath}/resources/login/js/main.js"></script>


</body>

</html>