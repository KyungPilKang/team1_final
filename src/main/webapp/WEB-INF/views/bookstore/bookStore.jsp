<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>


<!DOCTYPE html>
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
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/css/all.min.css" rel="stylesheet">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.4.1/font/bootstrap-icons.css" rel="stylesheet">

    <!-- Libraries Stylesheet -->
    <link href="${pageContext.request.contextPath}/resources/bookstore/lib/animate/animate.min.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/resources/bookstore/lib/owlcarousel/assets/owl.carousel.min.css"
          rel="stylesheet">

    <!-- Customized Bootstrap Stylesheet -->
    <link href="${pageContext.request.contextPath}/resources/bookstore/css/bootstrap.min.css" rel="stylesheet">

    <!-- Stylesheet -->
    <link href="${pageContext.request.contextPath}/resources/bookstore/css/style.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/resources/bookstore/css/bookStore.css" rel="stylesheet">
</head>

<body>


<jsp:include page="/WEB-INF/views/bookstore/header.jsp"/>


<div style="float:right; margin-right:100px; cursor: pointer; " class="btn btn-primary"
     onclick="location.href='/book-store/cart'">
    <i class="fa-solid fa-cart-shopping"></i>
</div>
<div style="float:right; margin-right:-43px; margin-top:8px;">
    <div id="cartCount"
         style="background: red; width: 12px; height: 12px; font-size: 10px; color:white; display: flex; justify-content: center; align-items: center; border-radius: 100px;">
        ${cartCount}
    </div>
</div>
<!-- Book List Start -->
<div class="bookstore_container container-xxl py-5">
    <div class="text-center">
        <label>
            <select class="btn-sm btn btn-primary select_cat" name="">
                <option value="book">도서명</option>
                <option value="tutor">강사명</option>
                <option value="content">내용</option>
            </select>
        </label>
        <label for="inner_search"></label>


        <input type="text" id="inner_search" class="inner_search" placeholder="검색어를 입력"
               onkeydown="javascript:if(event.keyCode===13){함수('');}"
               onfocus="if(this.value===this.defaultValue) this.value='';"
               onblur="if(this.value==='') this.value=this.defaultValue;" value="">
        <button title="검색" type="submit" class="btn btn-sm btn-primary px-3" onclick="함수('');"
                onmousedown="try{에러를 던질 수 있는 무언가를 함수로('이벤트','/검색버튼');}catch(e){}">
            <i class="fas fa-search"></i>
        </button>
        <%--            <input type="submit" id=""/>--%>
        <br>
        <div class="keyword_box">
            ▲ 급상승
            <a href="#">#키워드</a>&nbsp;
            <a href="#">#키워드</a>&nbsp;
            <a href="#">#키워드</a>&nbsp;
            <a href="#">#키워드</a>&nbsp;
            <a href="#">#키워드</a>&nbsp;
            <a href="#">#키워드</a>&nbsp;
            <a href="#">#키워드</a>&nbsp;
        </div>


        <div class="sort_box">
            <ul class="nav nav-pills d-inline-flex justify-content-center border-bottom mb-5">
                <li class="nav-item">
                    <a class="d-flex align-items-center text-start mx-3 ms-0 pb-3 active" data-bs-toggle="pill"
                       href="#">
                        <h6 class="mt-n1 mb-0">판매량</h6>
                    </a>
                </li>
                <li class="nav-item">
                    <a class="d-flex align-items-center text-start mx-3 pb-3" data-bs-toggle="pill" href="#">
                        <h6 class="mt-n1 mb-0">최신순</h6>
                    </a>
                </li>
                <li class="nav-item">
                    <a class="d-flex align-items-center text-start mx-3 me-0 pb-3" data-bs-toggle="pill" href="#">
                        <h6 class="mt-n1 mb-0">상품명</h6>
                    </a>
                </li>
            </ul>
        </div>
    </div>


    <%-- Book List Pagination Start --%>
    <div class="list_box row justify-content-center">

        <%-- Slide Testimonial Start--%>
        <div class="container-xxl py-2" style="margin-right:8vw;">
            <div class="container">
                <div class="owl-carousel testimonial-carousel"
                     style="display: flex; flex-direction: column; justify-content: center; width: 56vw;">

                    <c:forEach var="book" items="${bookList}" begin="0" end="4">
                        <div class="testimonial-item rounded p-3">
                            <img class="img-fluid flex-shrink-0 rounded" src="/book-store/book-img/${book.book_img}"
                                 alt="${book.book_img}란 이미지를 찾을 수 없습니다">
                            <div class="d-flex align-items-center" style="flex-direction: column">
                                <br>
                                <h5 class="mb-1">${book.book_subject}</h5>
                                <span class="mb-1"
                                      style="text-decoration: line-through;"><fmt:formatNumber
                                        value="${book.book_price}" pattern="#,###"/>원</span> → <strong
                                    class="mb-1"><fmt:formatNumber
                                    value="${book.book_reprice}" type="number"
                                    pattern="#,###"/>원</strong>
                            </div>
                        </div>
                    </c:forEach>

                </div>
            </div>
        </div>
        <%-- Slide Testimonial End--%>


        <%-- 페이지 네비 상단 --%>
        <span style="display: flex; margin-left:4vw;"><jsp:include page="/WEB-INF/views/bookstore/pageList.jsp"/></span>


        <c:choose>
            <c:when test="${bookList!=null &&  pageInfo.listCount>0}">
                <ul class="book_list">
                    <c:forEach var="book" items="${bookList}">
                        <li>
                            <div class="cover">
                                <a href="#">
                                    <img src="/book-store/book-img/${book.book_img}"
                                         alt="${book.book_img}란 이미지를 찾을 수 없습니다"/>
                                </a>
                            </div>
                            <div class="detail">
                                <div class="title">
                                    <a href="/book-store/bookdetail?book_num=${book.book_num}"><strong>${book.book_subject}</strong>
                                    </a>
                                </div>

                                <div class="author">
                                        ${book.book_author}
                                    <span class="line">|</span>
                                        ${book.book_publisher}
                                    <span class="line">|</span>
                                        ${book.book_date}
                                </div>

                                <div class="info">
                                <span class="org_price"
                                      style="text-decoration: line-through;"><fmt:formatNumber
                                        value="${book.book_price}" pattern="#,###"/>원</span> → <strong
                                        class="sell_price"><fmt:formatNumber
                                        value="${book.book_reprice}" type="number"
                                        pattern="#,###"/>원</strong>
                                    <span class="dc_rate">[<strong>${book.book_discount}</strong>%↓]</span>
                                </div>
                                <br>
                                <br>
                                <div class="button">
                                    <a href="/book-store/bookdetail?book_num=${book.book_num}" class="btn-sm btn-primary">
                                        상세보기
                                    </a>
                                </div>
                            </div>
                            <div class="book_add">
                                    <%--                                <c:choose>--%>
                                    <%--                                <c:when test="${username == admin}">--%>
                                <a class="btn-sm btn-primary" onclick="putCart(${book.book_num})">장바구니 담기</a>
                                <a class="btn-sm btn-primary" onclick="buyNow(${book.book_num},${book.book_reprice})">바로 구매하기</a>
                                    <%--                                </c:when>--%>
                                    <%--                                    <c:otherwise>--%>
                                    <%--                                        <a class="btn-sm btn-primary" onclick="alert('로그인이 필요합니다')">장바구니 담기</a>--%>
                                    <%--                                        <a class="btn-sm btn-primary" onclick="alert('로그인이 필요합니다.')">바로 구매하기</a>--%>
                                    <%--                                    </c:otherwise>--%>
                                    <%--                                </c:choose>--%>
                                    <%--                                <c:if test = "${username == admin}">--%>
                                <a class="btn-sm btn-primary" href="/book-store/delbook?book_num=${book.book_num}" style="background: red">교재 삭제</a>
                                    <%--                                </c:if>--%>
                                <form id="buyNow" method="post">
                                    <input type="hidden" id="book_num" name="book_num"/>
                                    <input type="hidden" id="book_price" name="book_price"/>
                                </form>
                            </div>
                        </li>
                    </c:forEach>
                </ul>
            </c:when>
            <c:otherwise>
                <section id="emptyArea">등록된 책이 존재하지 않습니다.</section>
            </c:otherwise>
        </c:choose>

        <%-- 페이지 네비 하단 --%>
        <jsp:include page="/WEB-INF/views/bookstore/pageList.jsp"/>

    </div>
</div>
<!-- Book List Pagination End -->


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
