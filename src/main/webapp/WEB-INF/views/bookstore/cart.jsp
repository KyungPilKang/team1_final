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
    <div class="container" style="text-align: center; margin-left: 3.7vw;">
        <h1 class="text-center mb-lg-5 wow fadeInUp" data-wow-delay="0.1s">장바구니</h1>


        <div id="tab-1" class="tab-pane fade show p-0 active" style="width: 60vw;">
            <ul style="display: flex; justify-content: space-between; list-style: none; background: #06BBCC; padding:10px; margin-bottom:0; margin-left:1.2vw; font-family: 'Stylish', sans-serif; font-size: 20px; color: white;">
                <li class="col-md-8">
                    상품명
                </li>
                <li class="col-md-1" style="padding-right:3vw;">
                    가격
                </li>
                <li class="col-md-2" style="padding-right:3vw;">
                    수량
                </li>
                <li class="col-md-1" style="padding-right:3vw;">
                    삭제
                </li>
            </ul>

            <div class="item_container"
                 style="overflow-y: scroll;height: 50vh;">
                <form id="cartForm" action="/book-store/payment/order" method="post">
                    <c:forEach var="cart" items="${cartList}">
                        <div class="cart-item p-4 mb-4">
                            <div class="row g-4">
                                <div class="col-md-8 d-flex align-items-center">
                                    <img class="flex-shrink-0 img-fluid border rounded"
                                         src="/book-store/book-img/${cart.book_img}" alt=""
                                         style="width: 90px; height: 120px;">
                                    <div class="text-start ps-4">
                                        <h5 class="mb-3"
                                            style="overflow: hidden; text-overflow: ellipsis; white-space: nowrap; width: 20vw">
                                                ${cart.book_subject}</h5>
                                        <span class="text-truncate me-0"> 출고 예상일 : <%= simpleDateFormat.format(nowTime) %></span>
                                    </div>
                                </div>
                                <div class="col-md-1 d-flex align-items-center">
                                        <span class="text-truncate me-0" style="text-align: center;"
                                              id="price${cart.book_num}"><fmt:formatNumber
                                                value="${cart.book_reprice}" pattern="#,###"/></span>원
                                </div>
                                <input type="hidden" value="${cart.book_num}" name="order_book_num"/>
                                <input type="hidden" value="${cart.book_reprice}" id="hidePrice${cart.book_num}"/>
                                <input type="hidden" value="${cart.book_subject}" name="order_book_subject"/>
                                <div class="col-md-2"
                                     style="display: flex; justify-content:center; align-items: center">
                                    <input class="form-control text-center me-3 order_qty"
                                           id="order_qty${cart.book_num}"
                                           type="number"
                                           name="order_qty"
                                           value="1" min="1" max="${cart.book_count}" style="max-width: 6rem"
                                           onkeyup="maxCount(${cart.book_count},${cart.book_num}); calTotal()"
                                           onclick="calTotal()"/><br/>
                                </div>
                                <div class="col-md-1 d-flex align-items-center">
                                    <button onclick="delCart(${cart.book_num})">삭제</button>
                                </div>
                            </div>
                        </div>
                    </c:forEach>
                    <input type="hidden" id="total_price" name="total_price"/>
                </form>
            </div>

            <div class="total-amount" style="display:flex; justify-content: flex-end; padding: 15px 5px">
                <h2>총 금액 :<span id="total"></span>원</h2>
            </div>

            <div class="cart-btn" style="display:flex; justify-content: flex-end;">
                <a class="btn btn-primary py-3" href="/book-store" style="width: 14vw; margin-right:10px;">쇼핑 계속하기</a>
                <a class="btn btn-primary py-3" onclick="buyAll()" style="width: 14vw">전체 상품 구매하기</a>
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

<%-- sweetalert --%>
<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>

<%-- cart Javascript --%>
<script src="${pageContext.request.contextPath}/resources/bookstore/js/cart.js"></script>


<script>
    /* 총 금액 계산 (JSTL 때문에 cart.js로 분리 불가) */
    let numList = []
    /* 기본수량 총액 */
    window.onload = () => {
        let sum = 0;
        <c:forEach var="cart" items="${cartList}">
        sum += ${cart.book_reprice}
            numList.push("${cart.book_num}")
        </c:forEach>
        const total = String(sum)
        document.getElementById('total').textContent = total.toString().replace(/\B(?<!\.\d*)(?=(\d{3})+(?!\d))/g, ",");
        document.getElementById('total_price').value = sum;
    }
    /* 수량 변경에 따른 총 금액 계산 */
    const calTotal = function () {
        let totalPrice = 0;
        for (const bookNum of numList) {
            let itemCount = document.getElementById('order_qty' + bookNum).value
            let itemPrice = document.getElementById('hidePrice' + bookNum).value
            totalPrice += itemCount * itemPrice
        }
        const total = String(totalPrice)
        document.getElementById('total').textContent = total.toString().replace(/\B(?<!\.\d*)(?=(\d{3})+(?!\d))/g, ",");
        document.getElementById('total_price').value = totalPrice;
    }

</script>


</body>
</html>
