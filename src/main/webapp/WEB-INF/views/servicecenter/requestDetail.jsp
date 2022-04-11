<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>문의내역 상세보기</title>
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
    <link href="${pageContext.request.contextPath}/resources/bookstore/css/bookStore.css" rel="stylesheet">
</head>

<body>

<jsp:include page="/WEB-INF/views/bookstore/header.jsp"/>


<!-- Request Detail  Start -->
<div class="container-xxl py-5">
    <div class="container">
        <div class="row g-5 align-items-center">

            <h1 class="text-center mb-1 wow fadeInUp" data-wow-delay="0.1s">문의 내용</h1>

            <%-- 문의 내용 --%>
            <div class="col-lg-12 wow fadeIn" data-wow-delay="0.5s" style="border:1px solid black;">
                <p><i class="fa fa-check text-primary me-3"></i>2022년 3월 31일</p>
                <p><i class="fa fa-check text-primary me-3"></i>문의 유형 : 수강 문의</p>
                <h1 class="mb-4">강의 수강신청이 안됩니다.</h1>
                <p class="mb-4" style="border:1px solid black; background: ghostwhite; width: 50vw; height: 20vh; overflow-y: scroll;">
                    위 사진 처럼 메시지가 뜨면서 수강신청이 안되는데 어떻게 하나요?

                    강의는 xx선생님의 중학생을 위한 현대물리 입니다.
                </p>
            </div>


            <%-- 문의 답변 --%>
            <div class="col-lg-12 wow fadeIn" data-wow-delay="0.5s"  style="border:1px solid black;">
                <p><i class="fa fa-check text-primary me-3"></i>2022년 4월 2일</p>
                <h1 class="mb-4">ㄴ 답변 : 강의 수강신청이 안됩니다. </h1>
                <p class="mb-4" style="border:1px solid black; background: ghostwhite; width: 50vw; height: 20vh; overflow-y: scroll;">
                     여기 들어가셔서 하시면 됩니다.
                </p>
            </div>


            <a class="btn btn-primary py-3 px-5 mt-3" href="/request/my">돌아가기</a>
        </div>
    </div>
</div>
<!-- Request Detail End -->


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
