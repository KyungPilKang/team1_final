<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>문의하기</title>
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
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.10.0/css/all.min.css" rel="stylesheet">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.4.1/font/bootstrap-icons.css" rel="stylesheet">

    <!-- Libraries Stylesheet -->
    <%--    <link href="${pageContext.request.contextPath}/resources/bookstore/lib/animate/animate.min.css" rel="stylesheet">--%>
    <%--    <link href="${pageContext.request.contextPath}/resources/bookstore/lib/owlcarousel/assets/owl.carousel.min.css" rel="stylesheet">--%>

    <!-- Customized Bootstrap Stylesheet -->
    <link href="${pageContext.request.contextPath}/resources/bookstore/css/bootstrap.min.css" rel="stylesheet">

    <!-- Stylesheet -->
    <link href="${pageContext.request.contextPath}/resources/bookstore/css/style.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/resources/bookstore/css/bookstore.css" rel="stylesheet">

    <%-- toast --%>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/codemirror/5.48.4/codemirror.min.css"/>
    <link rel="stylesheet" href="https://uicdn.toast.com/editor/latest/toastui-editor.min.css"/>

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

<!-- Textbook Register Start -->
<div class="container-xxl">
    <div class="container" id="write_container" style="margin-left:14vw;">
        <h4 class="mb-4" style="font-family: sans-serif">교재 등록</h4>
        <form id="book_form" action="" method="post" enctype="multipart/form-data">
            <div class="row g-3">

                <div class="product_info" style="display: flex; height: 40vh; justify-content: flex-start;">
                    <div class="left_box" style="width: 20vw;">
                        <img id="pv_img" style="width:20vw; height:370px; object-fit:scale-down;" alt=""/>
                    </div>

                    <div class="right_box"
                         style="display: flex; flex-direction: column; justify-content: center; margin-left: 20px; width: 20vw;">

                        <%-- 카테고리 book_cat --%>
                        <div class="p-2">
                            <label for="book_cat"></label>
                            <select name="book_cat" id="book_cat"
                                    style="border: 1px solid #d5d5d5; width: 10vw; height: 38px; padding-left:10px; margin-left: -5px;">
                                <option value="none">== 카테고리 ==</option>
                                <option value="1">초등학생</option>
                                <option value="2">중학생</option>
                                <option value="3">교양서적</option>
                            </select>
                        </div>

                        <%-- 교재 이미지 파일 book_img --%>
                        <div class="col-sm-12 p-2">
                            <input type="file" id="file" name="file" class="form-control bg-white"
                                   accept=".gif, .jpg, .png, .jpeg"
                                   onchange="readURL(this);">
                        </div>
                        <div style="display: flex;">
                            <%-- 지은이 --%>
                            <div class="col-sm-6 p-2">
                                <input type="text" id="book_author" name="book_author" class="form-control bg-white"
                                       placeholder="지은이">
                            </div>
                            <%-- 출판사 --%>
                            <div class="col-sm-6 p-2">
                                <input type="text" id="book_publisher" name="book_publisher" class="form-control bg-white"
                                       placeholder="출판사">
                            </div>
                        </div>
                        <div class="col-sm-12 p-2" style="display: flex;">
                            <label for="book_date" style="width:10vw; display: flex; align-items: center; justify-content: center;">교재 출간일:</label><input type="date" id="book_date" name="book_date" class="form-control">
                        </div>
                        <div class="" style="display: flex">
                            <%-- 가격 --%>
                            <div class="col-sm-6 p-2">
                                <input type="text" id="book_price" name="book_price" class="form-control bg-white"
                                       placeholder="가격">
                            </div>
                            <%-- 재고 --%>
                            <div class="col-sm-2 p-2"
                                 style="display:flex; justify-content: flex-end; align-items: center">
                                재고 :
                            </div>
                            <div class="col-sm-4 p-2" style="display: flex">

                                <input class="form-control text-center" id="book_count" type="number" name="book_count"
                                       value="1" min="1" placeholder="수량"/>
                                <div class="col-sm-1 p-2"
                                     style="display:flex; justify-content: flex-start; align-items: center">
                                    권
                                </div>
                            </div>

                        </div>

                        <%-- 할인율 book_discount --%>
                        <div class="" style="display: flex; justify-content: space-between">
                            <div class="col-sm-5 p-2 discount_yon"
                                 style="display: flex; align-items: center; justify-content: space-between">
                                <input type="radio" id="yes" name="yon" value="yes">
                                <label for="yes">할인 O</label>
                                <input type="radio" id="no" name="yon" value="no" checked>
                                <label for="no">할인 X</label>
                            </div>
                            <div class="col-sm-3 p-2"
                                 style="display:flex; justify-content: flex-end; align-items: center">
                                할인율 :
                            </div>
                            <div class="col-sm-4 p-2" style="display: flex">
                                <input class="form-control text-center" id="book_discount" type="number"
                                       name="book_discount"
                                       value="0" min="0" max="100" placeholder="할인율" disabled/>
                                <div class="col-sm-1 p-2"
                                     style="display:flex; justify-content: flex-start; align-items: center">
                                    %
                                </div>
                            </div>
                        </div>

                        <%-- 할인 적용 금액 book_reprice --%>
                        <div style="display: flex">
                            <div class="col-sm-4 p-2"
                                 style="display:flex; justify-content: center; align-items: center">
                                실제 판매가 :
                            </div>
                            <div class="col-sm-8 p-2">
                                <input type="text" id="book_reprice" name="book_reprice"
                                       class="form-control col-sm-12 p-2">
                            </div>
                        </div>
                    </div>
                </div>

                <%-- 제목 book_subject --%>
                <div class="col-12 col-sm-10" style="width: 41.5vw">
                    <input type="text" id="book_subject" name="book_subject" class="form-control" placeholder="제목">
                </div>

                <%-- 설명 book_content --%>
                <div class="col-10">
                    <input type="hidden" id="book_content" name="book_content"/>
                </div>
        </form>

        <%-- toastui editor --%>
        <div id="editor" style="width:41.5vw"></div>

        <div class="col-10" style="width:41.5vw">
            <button class="btn btn-primary w-100" onclick="register()" type="button">등 록</button>
        </div>
    </div>

</div>
<!-- Textbook Register End -->


<jsp:include page="/WEB-INF/views/bookstore/footer.jsp"/>

<!-- Back to Top -->
<a href="#" class="btn btn-lg btn-primary btn-lg-square back-to-top"><i class="bi bi-arrow-up"></i></a>

<!-- JavaScript Libraries -->
<script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/js/bootstrap.bundle.min.js"></script>

<!-- Template Javascript -->
<script src="${pageContext.request.contextPath}/resources/bookstore/js/main.js"></script>


<%-- toastui editor --%>
<script src="https://uicdn.toast.com/editor/latest/toastui-editor-all.min.js"></script>
<script src="${pageContext.request.contextPath}/resources/bookstore/js/toastui.js"></script>

<%-- sweetalert --%>
<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>

<%-- registerForm Javascript --%>
<script src="${pageContext.request.contextPath}/resources/bookstore/js/registerForm.js"></script>


</body>

</html>
