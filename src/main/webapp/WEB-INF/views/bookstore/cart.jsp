<%--
  Created by IntelliJ IDEA.
  User: ParkJS
  Date: 2022-03-30
  Time: 오전 9:25
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="utf-8">
    <title>NEEDSFULL</title>
    <meta content="width=device-width, initial-scale=1.0" name="viewport">
    <meta content="" name="keywords">
    <meta content="" name="description">

    <!-- Google Web Fonts -->
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Stylish&display=swap" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css2?family=Heebo:wght@400;500;600&family=Nunito:wght@600;700;800&display=swap"
          rel="stylesheet">

    <!-- Icon Font Stylesheet -->
    <link href="${pageContext.request.contextPath}/resources/bookstore/img/favicon.ico" rel="icon">
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
    <title>Cart</title>
</head>
<body>
<jsp:include page="/WEB-INF/views/bookstore/header.jsp"/>


<!-- Cart Start -->
<div class="container-xxl py-5">
    <div class="container">
        <h1 class="text-center mb-5 wow fadeInUp" data-wow-delay="0.1s">장바구니</h1>
        <div class="tab-class text-center wow fadeInUp" data-wow-delay="0.3s">


            <div class="tab-content">
                <div id="tab-1" class="tab-pane fade show p-0 active">

                    <div class="cart-item p-4 mb-4">
                        <div class="row g-4">
                            <div class="col-sm-12 col-md-8 d-flex align-items-center">
                                <img class="flex-shrink-0 img-fluid border rounded"
                                     src="https://image.aladin.co.kr/product/19965/94/cover500/k642635843_1.jpg" alt=""
                                     style="width: 80px; height: 80px;">
                                <div class="text-start ps-4">
                                    <h5 class="mb-3">쉽게 배우는 자바</h5>
                                    <span class="text-truncate me-0"><i
                                            class="far fa-money-bill-alt text-primary me-2"></i>가격 30,000원</span>
                                </div>
                            </div>
                            <div class="col-sm-12 col-md-4 d-flex flex-column align-items-start align-items-md-end justify-content-center">
                                <label for="order_qty"></label>
                                <input class="form-control text-center me-3" id="order_qty" type="number" name="order_qty"
                                       value="1" min="1" max="5" style="max-width: 6rem"/><br/>
                            </div>
                        </div>
                    </div>

                    <div class="cart-item p-4 mb-4">
                        <div class="row g-4">
                            <div class="col-sm-12 col-md-8 d-flex align-items-center">
                                <img class="flex-shrink-0 img-fluid border rounded"
                                     src="https://image.aladin.co.kr/product/29009/25/cover500/k452836425_1.jpg" alt=""
                                     style="width: 80px; height: 80px;">
                                <div class="text-start ps-4">
                                    <h5 class="mb-3">쉽게 배우는 자바</h5>
                                    <span class="text-truncate me-0"><i
                                            class="far fa-money-bill-alt text-primary me-2"></i>가격 30,000원</span>
                                </div>
                            </div>
                            <div class="col-sm-12 col-md-4 d-flex flex-column align-items-start align-items-md-end justify-content-center">
                                <label for="order_qty2"></label>
                                <input class="form-control text-center me-3" id="order_qty2" type="number" name="order_qty"
                                       value="1" min="1" max="5" style="max-width: 6rem"/><br/>
                            </div>
                        </div>
                    </div>

                    <div class="cart-item p-4 mb-4">
                        <div class="row g-4">
                            <div class="col-sm-12 col-md-8 d-flex align-items-center">
                                <img class="flex-shrink-0 img-fluid border rounded"
                                     src="https://image.aladin.co.kr/product/29009/25/cover500/k452836425_1.jpg" alt=""
                                     style="width: 80px; height: 80px;">
                                <div class="text-start ps-4">
                                    <h5 class="mb-3">쉽게 배우는 자바</h5>
                                    <span class="text-truncate me-0"><i
                                            class="far fa-money-bill-alt text-primary me-2"></i>가격 30,000원</span>
                                </div>
                            </div>
                            <div class="col-sm-12 col-md-4 d-flex flex-column align-items-start align-items-md-end justify-content-center">
                                <label for="order_qty3"></label>
                                <input class="form-control text-center me-3" id="order_qty3" type="number" name="order_qty"
                                       value="1" min="1" max="5" style="max-width: 6rem"/><br/>
                            </div>
                        </div>
                    </div>

                    <div class="total-amount">
                        <h3>총 금액 : 100만원</h3>
                    </div>

                    <div class="cart-btn">
                        <a class="btn btn-primary py-3 px-5" href="">쇼핑 계속하기</a>
                        <a class="btn btn-primary py-3 px-5" href="">전체 상품 구매하기</a>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- Cart End -->


<jsp:include page="/WEB-INF/views/bookstore/footer.jsp"/>

<!-- Back to Top -->
<a href="#" class="btn btn-lg btn-primary btn-lg-square back-to-top"><i class="bi bi-arrow-up"></i></a>

<!-- JavaScript Libraries -->
<script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/js/bootstrap.bundle.min.js"></script>

<!-- Template Javascript -->
<script src="${pageContext.request.contextPath}/resources/bookstore/js/main.js"></script>


</body>
</html>
