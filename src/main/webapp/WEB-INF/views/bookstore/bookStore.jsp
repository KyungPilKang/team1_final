<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

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
    <link href="${pageContext.request.contextPath}/resources/bookstore/img/favicon.ico" rel="icon">
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.10.0/css/all.min.css" rel="stylesheet">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.4.1/font/bootstrap-icons.css" rel="stylesheet">

    <!-- Libraries Stylesheet -->
    <%--    <link href="${pageContext.request.contextPath}/resources/bookstore/lib/animate/animate.min.css" rel="stylesheet">--%>
    <%--    <link href="${pageContext.request.contextPath}/resources/bookstore/lib/owlcarousel/assets/owl.carousel.min.css" rel="stylesheet">--%>

    <!-- Customized Bootstrap Stylesheet -->
    <link href="${pageContext.request.contextPath}/resources/bookstore/css/bootstrap.min.css" rel="stylesheet">

    <!-- Stylesheet -->
    <link href="${pageContext.request.contextPath}/resources/bookstore/css/style.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/resources/bookstore/css/bookStore.css" rel="stylesheet">
</head>

<body>

<jsp:include page="/WEB-INF/views/bookstore/header.jsp"/>

<!-- Book List Start -->
<div class="bookstore_container container-xxl py-5">
    <div class="text-center wow fadeInUp" data-wow-delay="0.1s">
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

    <%--================================================================--%>
    <%-- 1안 --%>
    <%--================================================================--%>
    <div class="list_box row g-4 justify-content-center">


        <%-- 1 --%>
        <div class="col-lg-4 col-md-6 wow fadeInUp">
            <div class="course-item bg-light">
                <div class="position-relative overflow-hidden">
                    <img class="img-fluid"
                         src="https://image.aladin.co.kr/product/19965/94/cover500/k642635843_1.jpg" alt="">
                </div>
                <div class="text-center p-4 pb-0">
                    <h5 class="mb-4">HTML5 웹프로그래밍 입문 3판</h5>
                    <h3 class="mb-0">26,000원</h3>
                    <br>
                </div>
                <%--                    <div class="d-flex border-top">--%>
                <%--                        <small class="flex-fill text-center border-end py-2"> <a href="#" class="px-3">--%>
                <%--                            <div class="modal">--%>
                <%--                                <div class="modal_body">--%>

                <%--                                    <input type='button'--%>
                <%--                                           onclick='count("plus")'--%>
                <%--                                           value='+'/>--%>
                <%--                                    <div id='result'>0</div>--%>
                <%--                                    <input type='button'--%>
                <%--                                           onclick='count("minus")'--%>
                <%--                                           value='-'/>--%>
                <%--                                    <br>--%>
                <%--                                    <button class="close-area">취소</button>--%>
                <%--                                    <button>담기</button>--%>
                <%--                                </div>--%>
                <%--                            </div>--%>
                <%--                            <button class="btn-open-popup">장바구니</button>--%>
                <%--                        </a></small>--%>
                <%--                        <small class="flex-fill text-center border-end py-2"><a href="#" class="px-3">구매</a></small>--%>
                <%--                        <div class="flex-fill heart-flex">--%>
                <%--                            <i class="fa fa-solid fa-heart"></i>--%>
                <%--                        </div>--%>
                <%--                    </div>--%>
            </div>
        </div>

        <%-- 2 --%>
        <div class="col-lg-4 col-md-6 wow fadeInUp">
            <div class="course-item bg-light">
                <div class="position-relative overflow-hidden">
                    <img class="img-fluid"
                         src="https://image.aladin.co.kr/product/29009/25/cover500/k452836425_1.jpg" alt="">
                </div>
                <div class="text-center p-4 pb-0">
                    <h5 class="mb-4">Power JAVA 3판</h5>
                    <h3 class="mb-0">35,000원</h3>
                    <br>
                </div>
            </div>
        </div>


        <%-- 3 --%>
        <div class="col-lg-4 col-md-6 wow fadeInUp">
            <div class="course-item bg-light">
                <div class="position-relative overflow-hidden">
                    <img class="img-fluid"
                         src="https://image.aladin.co.kr/product/29009/25/cover500/k452836425_1.jpg" alt="">
                </div>
                <div class="text-center p-4 pb-0">
                    <h5 class="mb-4">Power JAVA 3판</h5>
                    <h3 class="mb-0">35,000원</h3>
                    <br>
                </div>
            </div>
        </div>


        <%--================================================================--%>
        <%-- 2안 --%>
        <%--================================================================--%>
        <ul class="book_list">

            <li>
                <div class="cover">
                    <a href="#">
                        <img src="https://image.aladin.co.kr/product/19965/94/cover500/k642635843_1.jpg"
                             alt="HTML5 웹프로그래밍 입문 3판">
                    </a>
                </div>
                <div class="detail">
                    <div class="title">
                        <a href="#"><strong>HTML5 웹프로그래밍 입문 3판</strong>
                        </a>
                    </div>

                    <div class="author">
                        윤인성(지은이)
                        <span class="line">|</span>
                        한빛아카데미(출판사)
                        <span class="line">|</span>
                        2019년 7월
                    </div>

                    <div class="info">
                        <strike class="org_price">26,000원</strike> → <strong class="sell_price">26,000원</strong>
                        <span class="dc_rate">[<strong>0</strong>%↓]</span>
                    </div>
                    <br>
                    <br>
                    <div class="button">
                        <a href="#" class="btn-sm btn-primary">
                            상세보기
                        </a>
                    </div>
                </div>
                <div class="book_add">
                    <a class="btn-sm btn-primary">장바구니 담기</a>
                    <a class="btn-sm btn-primary">바로 구매하기</a>
                </div>
            </li>


            <li>
                <div class="cover">
                    <a href="#">
                        <img src="https://image.aladin.co.kr/product/29009/25/cover500/k452836425_1.jpg"
                             alt="Power JAVA 3판">
                    </a>
                </div>
                <div class="detail">
                    <div class="title">
                        <a href="#"><strong>Power JAVA (3판)</strong>
                        </a>
                    </div>

                    <div class="author">
                        천인국(지은이)
                        <span class="line">|</span>
                        인피니티북스(출판사)
                        <span class="line">|</span>
                        2022년 2월
                    </div>

                    <div class="info">
                        <strike class="org_price">40,000원</strike> → <strong class="sell_price">36,000원</strong>
                        <span class="dc_rate">[<strong>10</strong>%↓]</span>
                    </div>
                    <br>
                    <br>
                    <div class="button">
                        <a href="#" class="btn-sm btn-primary">
                            상세보기
                        </a>
                    </div>
                </div>
                <div class="book_add">
                    <a class="btn-sm btn-primary">장바구니 담기</a>
                    <a class="btn-sm btn-primary">바로 구매하기</a>
                </div>
            </li>

            <li>
                <div class="cover">
                    <a href="#">
                        <img src="https://image.aladin.co.kr/product/29009/25/cover500/k452836425_1.jpg"
                             alt="Power JAVA 3판">
                    </a>
                </div>
                <div class="detail">
                    <div class="title">
                        <a href="#"><strong>Power JAVA (3판)</strong>
                        </a>
                    </div>

                    <div class="author">
                        천인국(지은이)
                        <span class="line">|</span>
                        인피니티북스(출판사)
                        <span class="line">|</span>
                        2022년 2월
                    </div>

                    <div class="info">
                        <strike class="org_price">40,000원</strike> → <strong class="sell_price">36,000원</strong>
                        <span class="dc_rate">[<strong>10</strong>%↓]</span>
                    </div>
                    <br>
                    <br>
                    <div class="button">
                        <a href="#" class="btn-sm btn-primary">
                            상세보기
                        </a>
                    </div>
                </div>
                <div class="book_add">
                    <a class="btn-sm btn-primary">장바구니 담기</a>
                    <a class="btn-sm btn-primary">바로 구매하기</a>
                </div>
            </li>
        </ul>


    </div>
</div>
<!-- Book List End -->

<jsp:include page="/WEB-INF/views/bookstore/footer.jsp"/>

<!-- Back to Top -->
<a href="#" class="btn btn-lg btn-primary btn-lg-square back-to-top"><i class="bi bi-arrow-up"></i></a>

<!-- JavaScript Libraries -->
<script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/js/bootstrap.bundle.min.js"></script>

<!-- Template Javascript -->
<script src="${pageContext.request.contextPath}/resources/bookstore/js/main.js"></script>

<%-- modal JS --%>
<%--        <script src="${pageContext.request.contextPath}/resources/bookstore/js/modal.js"></script>--%>


<%-- 단위 표시 JS--%>
<%--<script>--%>
<%--    $(document).on("focusout", "input:text[koreanCurrency]", function()   {--%>
<%--        $(this).val( $(this).val().replace(",","") );--%>
<%--        $(this).val( $(this).val().replace(/[^-\.0-9]/gi,"") );--%>
<%--        $(this).val( $(this).val().replace(/(\d)(?=(\d\d\d)+(?!\d))/g, "$1,") );--%>
<%--        if($(this).val() != '' ) {--%>
<%--            $(this).val( $(this).val()+'원');--%>
<%--        }--%>
<%--    });--%>

<%--    $(document).on("focus", "input:text[koreanCurrency]", function()   {--%>
<%--        $(this).val( $(this).val().replace("원", ""));--%>
<%--    });--%>
<%--</script>--%>

</body>

</html>
