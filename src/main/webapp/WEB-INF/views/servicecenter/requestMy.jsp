<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>내 문의내역</title>
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
    <link href="${pageContext.request.contextPath}/resources/servicecenter/css/bootstrap.min.css" rel="stylesheet">

    <!-- Stylesheet -->
    <link href="${pageContext.request.contextPath}/resources/servicecenter/css/style.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/resources/servicecenter/css/requestMy.css" rel="stylesheet">
</head>

<body>

<jsp:include page="/WEB-INF/views/bookstore/header.jsp"/>


<!-- My Request Start -->
<!-- Jobs Start -->
<div class="container-xxl py-5">
    <div class="container">

        <button class="btn btn-primary" style="float:right" onclick="location.href='/request/write'">문의하기 임시</button>

        <h1 class="text-center mb-5 wow fadeInUp" data-wow-delay="0.1s">내 문의내역</h1>
        <div class="tab-class text-center wow fadeInUp" data-wow-delay="0.3s">


            <%-- 1 --%>
            <div class="job-item p-4 mb-4" onclick="location.href='/request/detail'" style="cursor: pointer; background: #4DC7A0">
                <div class="row g-4">
                    <div class="col-sm-12 col-md-9 d-flex align-items-center">
                        <img class="flex-shrink-0 img-fluid border rounded" src="img/com-logo-1.jpg" alt="" style="width: 120px; height: 120px; background: grey;">
                        <div class="text-start ps-4">
                            <span class="text-truncate me-3"><i class="fa fa-map-marker-alt text-primary me-2"></i>카테고리</span>
                            <span class="text-truncate me-3"><i class="far fa-clock text-primary me-2"></i>게시물 번호</span>
                            <span class="text-truncate me-0"><i class="far fa-money-bill-alt text-primary me-2"></i>제목</span>
                            <span class="text-truncate me-0"><i class="far fa-money-bill-alt text-primary me-2"></i>내용 : 배경색상은 임시 레이아웃 구분색으로 삭제 예정</span>
                        </div>
                    </div>
                    <div class="col-sm-12 col-md-3 d-flex flex-column align-items-start align-items-md-end justify-content-center">
                        <div class="d-flex mb-3">
                            <a class="btn btn-primary" href="">답변 상태</a>
                        </div>
                        <small class="text-truncate"><i class="far fa-calendar-alt text-primary me-2"></i>Date Line: 01 Jan, 2045</small>
                    </div>
                </div>
            </div>

                <%-- 2 --%>
                <div class="job-item p-4 mb-4" onclick="location.href='/request/detail'" style="cursor: pointer; background: #4DC7A0">
                    <div class="row g-4">
                        <div class="col-sm-12 col-md-9 d-flex align-items-center">
                            <img class="flex-shrink-0 img-fluid border rounded" src="img/com-logo-1.jpg" alt="" style="width: 120px; height: 120px; background: grey;">
                            <div class="text-start ps-4">
                                <span class="text-truncate me-3"><i class="fa fa-map-marker-alt text-primary me-2"></i>카테고리</span>
                                <span class="text-truncate me-3"><i class="far fa-clock text-primary me-2"></i>게시물 번호</span>
                                <span class="text-truncate me-0"><i class="far fa-money-bill-alt text-primary me-2"></i>제목</span>
                                <span class="text-truncate me-0"><i class="far fa-money-bill-alt text-primary me-2"></i>내용 : 배경색상은 임시 레이아웃 구분색으로 삭제 예정</span>
                            </div>
                        </div>
                        <div class="col-sm-12 col-md-3 d-flex flex-column align-items-start align-items-md-end justify-content-center">
                            <div class="d-flex mb-3">
                                <a class="btn btn-primary" href="">답변 상태</a>
                            </div>
                            <small class="text-truncate"><i class="far fa-calendar-alt text-primary me-2"></i>Date Line: 01 Jan, 2045</small>
                        </div>
                    </div>
                </div>

                <%-- 3 --%>
                <div class="job-item p-4 mb-4" onclick="location.href='/request/detail'" style="cursor: pointer; background: #4DC7A0">
                    <div class="row g-4">
                        <div class="col-sm-12 col-md-9 d-flex align-items-center">
                            <img class="flex-shrink-0 img-fluid border rounded" src="img/com-logo-1.jpg" alt="" style="width: 120px; height: 120px; background: grey;">
                            <div class="text-start ps-4">
                                <span class="text-truncate me-3"><i class="fa fa-map-marker-alt text-primary me-2"></i>카테고리</span>
                                <span class="text-truncate me-3"><i class="far fa-clock text-primary me-2"></i>게시물 번호</span>
                                <span class="text-truncate me-0"><i class="far fa-money-bill-alt text-primary me-2"></i>제목</span>
                                <span class="text-truncate me-0"><i class="far fa-money-bill-alt text-primary me-2"></i>내용 : 배경색상은 임시 레이아웃 구분색으로 삭제 예정</span>
                            </div>
                        </div>
                        <div class="col-sm-12 col-md-3 d-flex flex-column align-items-start align-items-md-end justify-content-center">
                            <div class="d-flex mb-3">
                                <a class="btn btn-primary" href="">답변 상태</a>
                            </div>
                            <small class="text-truncate"><i class="far fa-calendar-alt text-primary me-2"></i>Date Line: 01 Jan, 2045</small>
                        </div>
                    </div>
                </div>



        </div>
    </div>
</div>
<!-- Jobs End -->

<!-- My Request End -->


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
