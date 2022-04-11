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
    <link href="${pageContext.request.contextPath}/resources/bookstore/css/payment.css" rel="stylesheet">
</head>


<body>

<jsp:include page="/WEB-INF/views/bookstore/header.jsp"/>

<!-- Payment Start -->
<div class="container-xxl py-10 mt-5 ok">

    <!-- Payment Flow Step1 Start -->
    <div class="payment_container_step1">
        <div class="payment_probar">
            <span class="now_process">배송지 정보 입력</span>
            <span class="now_process"> > </span>
            <span>결제방법 선택</span>
            <span> > </span>
            <span>결제완료</span>
        </div>
        <div class="item_box row text-center col-lg-5 col-md-12 wow fadeInUp" data-wow-delay="0.5s"
             style="width: 80%; float:none; margin:40px auto 0 auto; overflow-y:scroll">

            <table style="height: 100px; width: 85%">
                <tr>
                    <td>제목</td>
                    <td>가격</td>
                </tr>

                <c:forEach var="cart" items="${orderList}">
                    <tr>
                        <td>${cart.book_subject}</td>
                        <td>${cart.book_reprice}</td>
                    </tr>
                </c:forEach>
            </table>

            <table style="width: 15%; height: 100px;">

                <tr>
                    <td>수량</td>
                </tr>
                <c:forEach var="count" items="${qtyList}">
                    <tr>
                        <td>${count}</td>
                    </tr>
                </c:forEach>
            </table>

        </div>
        <h4 style="float:right;margin-right:130px; padding: 5px;">총 결제금액:${total_price}</h4>


        <div class="info_box row text-center col-lg-5 col-md-12 wow fadeInUp" data-wow-delay="0.5s"
             style="width: 55%; float:none; margin:50px auto 30px auto">
            <form name="form" id="form_step1" action="/book-store/payment/finished" method="post">
                <div class="row g-3">
                    <table id="info_table_step1" class="info_table_step1">
                        <tbody>
                        <tr>
                            <th>
                                배송지명
                            </th>
                            <td>
                                <div class="col-5">
                                    <input type="text" id="deli_address" name="deli_address" class="form-control">
                                </div>
                            </td>
                        </tr>

                        <tr>
                            <th>
                                수령인
                                <span class="star">*</span>
                            </th>
                            <td>
                                <div class="col-5">
                                    <input type="text" id="deli_name" name="deli_name" class="form-control">
                                </div>
                            </td>
                        </tr>

                        <tr>
                            <th>
                                주소
                                <span class="star">*</span>
                            </th>
                            <td>
                                <div class="row">
                                    <div class="col-lg-3 pt-2">
                                        <input type="text" id="zipcode" name="zipcode" maxlength="6" value=""
                                               readonly="" class="form-control">
                                    </div>
                                    <div class="col-lg-2 pt-2">
                                        <a href="javascript:void(0);" onclick="goPopup()"
                                           class="btn btn-sm btn-primary px-3 search_address">주소검색</a>
                                    </div>
                                    <div class="col-lg-8"></div>
                                    <div class="col-lg-8 pt-2">
                                        <input type="text" id="dorojuso" name="doro_juso" value="" readonly=""
                                               class="form-control">
                                    </div>
                                    <div class="col-lg-4 pt-2">
                                        <input type="text" id="sangsejuso1" name="sangsejuso1" readonly="" value=""
                                               class="form-control">
                                    </div>
                                    <div class="col-lg-12 pt-2">
                                        <input type="text" id="sangsejuso2" name="sangsejuso2" value=""
                                               class="form-control">
                                    </div>
                                    <input type="hidden" name="sangse_juso" id="sangse_juso">
                                    <input type="hidden" name="order_method" id="order_method">
                                    <input type="hidden" name="order_num" id="order_num">
                                    <input type="hidden" name="total_price" id="total_price">
                                </div>
                            </td>
                        </tr>

                        <tr>
                            <th>
                                연락처
                                <span class="star">*</span>
                            </th>
                            <td>
                                <div class="col-lg-6 pt-2">
                                    <input type="text" name="phone" maxlength="11" size="11" class="form-control">
                                </div>
                        </tr>

                        <tr>
                            <th>
                                이메일
                            </th>
                            <td>
                                <div class="col-lg-6 4 pr-0 mr-0 pt-2">
                                    <input type="email" id="email" name="email" class="form-control"
                                           placeholder="needsful@gmail.com">
                                </div>
                            </td>
                        </tr>
                        </tbody>
                    </table>
                </div>
            </form>
        </div>

        <div class="button_box">
            <div class="col-5 ">
                <button id="return" onclick="location.href='/book-store/cart'" class="btn btn-outline-info w-100 py-3">돌아가기</button>
            </div>
            <div class="col-5 ">
                <button id="next" class="btn btn-primary w-100 py-3">다음단계</button>
            </div>
        </div>
    </div>
    <!-- Payment Flow Step1 End -->

    <!-- Payment Flow Step2 Start -->
    <div class="payment_container_step2">
        <div class="payment_probar">
            <span>배송지 정보 입력</span>
            <span> > </span>
            <span class="now_process">결제방법 선택</span>
            <span class="now_process"> > </span>
            <span>결제완료</span>
        </div>
        <div class="row text-center col-lg-5 col-md-12 wow fadeInUp" data-wow-delay="0.5s"
             style="width: 55%; float:none; margin:40px auto 0 auto; padding:20px;">
            <input id="paymentMethod_card" type="radio" class="btn-check" name="paymentMethod" value="card"
                   onclick="payMethod(event)"/>
            <label for="paymentMethod_card" class="btn btn-outline-primary w-100 py-3">카드</label>
            <input id="paymentMethod_vbank" type="radio" class="btn-check" name="paymentMethod" value="vbank"
                   onclick="payMethod(event)"/>
            <label for="paymentMethod_vbank" class="btn btn-outline-primary w-100 py-3">가상계좌</label>
            <input id="paymentMethod_trans" type="radio" class="btn-check" name="paymentMethod" value="trans"
                   onclick="payMethod(event)"/>
            <label for="paymentMethod_trans" class="btn btn-outline-primary w-100 py-3">실시간계좌이체</label>
            <input id="paymentMethod_phone" type="radio" class="btn-check" name="paymentMethod" value="phone"
                   onclick="payMethod(event)"/>
            <label for="paymentMethod_phone" class="btn btn-outline-primary w-100 py-3">휴대폰소액결제</label>
            <input id="paymentMethod_tosspay" type="radio" class="btn-check" name="paymentMethod" value="tosspay"
                   onclick="payMethod(event)"/>
            <label for="paymentMethod_tosspay" class="btn btn-outline-primary w-100 py-3">토스페이</label>
            <input id="paymentMethod_samsung" type="radio" class="btn-check" name="paymentMethod" value="samsung"
                   onclick="payMethod(event)"/>
            <label for="paymentMethod_samsung" class="btn btn-outline-primary w-100 py-3">삼성페이</label>
        </div>


        <div class="button_box">
            <div class="col-5 ">
                <button id="previous" class="btn btn-outline-info w-100 py-3" type="">이전단계</button>
            </div>
            <div class="col-5 ">
                <%--                <button onclick="location.href='payment/finished'" class="btn btn-primary w-100 py-3" type="submit">결제</button>--%>
                <button class="btn btn-primary w-100 py-3" type="submit" id="btn_payment">결제</button>
            </div>
        </div>
    </div>
    <!-- Payment Flow Step2 End -->

</div>
<!-- Payment End -->

<jsp:include page="/WEB-INF/views/bookstore/footer.jsp"/>


<!-- JavaScript Libraries -->
<script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/js/bootstrap.bundle.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/sweetalert2@10"></script>
<!-- Template Javascript -->
<script src="${pageContext.request.contextPath}/resources/bookstore/js/main.js"></script>
<!-- Payment Javascript -->
<script src="${pageContext.request.contextPath}/resources/bookstore/js/payment.js"></script>
<!-- iamport.payment.js -->
<script type="text/javascript" src="https://cdn.iamport.kr/js/iamport.payment-1.2.0.js"></script>


<script>


    /* 결제 방법 선택 */
    const payMethod = function (event) {
        let pay_method = event.target.value;
        if (pay_method === 'card') {
            document.getElementById('btn_payment').setAttribute("onclick", "payment('card',${total_price},email)")
        } else if (pay_method === 'vbank') {
            document.getElementById('btn_payment').setAttribute("onclick", "payment('vbank',${total_price},email)")
        } else if (pay_method === 'trans') {
            document.getElementById('btn_payment').setAttribute("onclick", "payment('trans',${total_price},email)")
        } else if (pay_method === 'phone') {
            document.getElementById('btn_payment').setAttribute("onclick", "payment('phone',${total_price},email)")
        } else if (pay_method === 'tosspay') {
            document.getElementById('btn_payment').setAttribute("onclick", "payment('tosspay',${total_price},email)")
        } else if (pay_method === 'samsung') {
            document.getElementById('btn_payment').setAttribute("onclick", "payment('samsung',${total_price},email)")
        }
    }
</script>


</body>

</html>