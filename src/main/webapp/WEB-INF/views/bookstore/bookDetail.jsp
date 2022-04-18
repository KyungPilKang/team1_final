<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ page import="java.text.SimpleDateFormat" %>
<%@ page import="java.util.Date" %>
<% Date nowTime = new Date();
    SimpleDateFormat simpleDateFormat = new SimpleDateFormat("M월 d일");%>


<!DOCTYPE html>
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
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.14.0/css/all.css"
          integrity="sha384-HzLeBuhoNPvSl5KYnjx0BT+WB0QEEqLprO+NBkkk5gbc67FTaL7XIGa2w1L0Xbgc" crossorigin="anonymous">
    <link href="https://fonts.googleapis.com/icon?family=Material+Icons+Outlined" rel="stylesheet">
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.10.0/css/all.min.css" rel="stylesheet">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.4.1/font/bootstrap-icons.css" rel="stylesheet">

    <!-- Libraries Stylesheet -->
    <%--    <link href="${pageContext.request.contextPath}/resources/bookstore/lib/animate/animate.min.css" rel="stylesheet">--%>
    <%--    <link href="${pageContext.request.contextPath}/resources/bookstore/lib/owlcarousel/assets/owl.carousel.min.css" rel="stylesheet">--%>

    <link href="${pageContext.request.contextPath}/resources/bookstore/css/bookDetail.css" rel="stylesheet">
    <!-- Customized Bootstrap Stylesheet -->
    <link href="${pageContext.request.contextPath}/resources/bookstore/css/bootstrap.min.css" rel="stylesheet">

    <!-- Template Stylesheet -->
    <link href="${pageContext.request.contextPath}/resources/bookstore/css/style.css" rel="stylesheet">


    <title>Book Detail</title>
    <style>
        *{
            font-family: 'Stylish', sans-serif;
        }
        .page-header {
            background: linear-gradient(rgba(24, 29, 56, .7), rgba(24, 29, 56, .7));
            height: 50px;
        }
    </style>
</head>
<body>
<jsp:include page="/WEB-INF/views/bookstore/header.jsp"/>


<!-- Header Start -->
<div class="container-fluid bg-primary py-5 mb-5 page-header">
</div>
<!-- Header End -->


<!-- product_detail -->
<div id="contents" class="product_detail">

    <!-- detail_product  -->
    <div class="detail_product">
        <div class="detail_content">
            <div class="inner">

                <!-- product_image -->
                <div class="product_image">
                    <div class="photo">
                        <div>
                            <img src="/book-store/book-img/${book.book_img}"
                                 alt="책 이미지" class="photo">
                        </div>
                    </div>
                </div>

                <!-- product_detail_info -->
                <div class="product_detail_info">
                    <div class="subject">
                        <span class="title">${book.book_subject}</span>
                        <span class="info">
								</span>
                        <span>
                            <c:choose>
                                <c:when test="${book.book_cat == '1'}">
                                    초등학생
                                </c:when>
                                <c:when test="${book.book_cat == '2'}">
                                    중학생
                                </c:when>
                                <c:otherwise>
                                    교양서적
                                </c:otherwise>
                            </c:choose>
                        </span>
                    </div>
                    <div class="issue">
                        저자 ${book.book_author} | 출판사 ${book.book_publisher}
                    </div>

                    <dl class="basic">
                        <dt class="fixed_price">정가</dt>
                        <dd class="fixed_price">
                            <del>${book.book_price}원</del>
                        </dd>
                        <dt class="sales_price">판매가</dt>
                        <dd class="sales_price">
                            <strong class="price">${book.book_reprice}원</strong>
                            <span>[<strong>${book.book_discount}</strong>%↓, <strong>${book.book_price-book.book_reprice}</strong>원 할인]</span>
                        </dd>
                    </dl>

                    <dl class="delivery_gift">
                        <dt class="delivery-price">배송비</dt>
                        <strong>무료배송</strong> (판매자 직접배송)
                    </dl>
                    <dl class="delivery_gift">
                        <dt class="delivery-price">배송일정</dt>
                        <dd class="delivery-price">
									<span class="delivery">
										지금 주문하면
										<span class="delivery-day">
	                                        <%= simpleDateFormat.format(nowTime) %>
	                                    </span> 출고 예정
										<br>단순변심으로 인한 구매취소 및 환불에 대한 배송비는 구매자 부담입니다.
									</span>
                        </dd>
                    </dl>

                    <div class="release">
                        <span class="release" style="color:#000;">출간일 : ${book.book_date}</span><br>
                    </div>

                    <div class="product_detail_bottom">
                        <div class="button_buy">
                            <c:choose>
                                <c:when test="${not empty username}">
                                    <a class="btn_large btn_blue" onclick="putCart(${book.book_num})"
                                       style="cursor: pointer">장바구니
                                        담기</a>
                                    <a class="btn_large"
                                       href="/book-store/payment/now?book_num=${book.book_num}&book_price=${book.book_reprice}">바로
                                        구매하기</a>
                                </c:when>
                                <c:otherwise>
                                    <a class="btn_large btn_blue" onclick="alert('로그인이 필요합니다')" style="cursor: pointer">장바구니
                                        담기</a>
                                    <a class="btn_large"
                                       onclick="alert('로그인이 필요합니다')" style="cursor: pointer">바로
                                        구매하기</a>
                                </c:otherwise>
                            </c:choose>
                        </div>
                        <div class="detail_information">
                            ${book.book_content}
                        </div>
                    </div>
                </div>
            </div>

        </div>

    </div>
    <span style="display: flex; justify-content: center; align-items: center">
                            <a href="/book-store" class="btn_large btn_blue" style="width:20vw;">돌아가기</a></span>
</div>

<jsp:include page="/WEB-INF/views/bookstore/footer.jsp"/>

<!-- Back to Top -->
<a href="#" class="btn btn-lg btn-primary btn-lg-square back-to-top"><i class="bi bi-arrow-up"></i></a>

<!-- JavaScript Libraries -->
<script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/js/bootstrap.bundle.min.js"></script>
<script src="${pageContext.request.contextPath}/resources/bookstore/lib/wow/wow.min.js"></script>
<script src="${pageContext.request.contextPath}/resources/bookstore/lib/easing/easing.min.js"></script>
<script src="${pageContext.request.contextPath}/resources/bookstore/lib/waypoints/waypoints.min.js"></script>
<script src="${pageContext.request.contextPath}/resources/bookstore/lib/owlcarousel/owl.carousel.min.js"></script>

<!-- Template Javascript -->
<script src="${pageContext.request.contextPath}/resources/bookstore/js/main.js"></script>

<%-- sweetalert --%>
<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>

<%-- bookStore Javascript --%>
<script src="${pageContext.request.contextPath}/resources/bookstore/js/bookStore.js"></script>

</body>

</html>
