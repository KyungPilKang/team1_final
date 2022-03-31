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
    <link href="${pageContext.request.contextPath}/resources/servicecenter/css/requestWrite.css" rel="stylesheet">
</head>

<body>

<jsp:include page="/WEB-INF/views/bookstore/header.jsp"/>


<!-- Write Start -->
<div class="container-xxl">
    <div class="container" id="write_container">
        <h4 class="mb-4">문의하기</h4>
        <form>
            <div class="row g-3">
                <div class="col-sm-12">
                    <label for="request_cat"></label>
                    <select name="request_cat" id="request_cat" class="col-sm-12">
                        <option value="none">== 카테고리 ==</option>
                        <option value="none">문의타입1</option>
                        <option value="none">문의타입2</option>
                        <option value="none">문의타입3</option>
                    </select>
                </div>
                <div class="col-12 col-sm-12">
                    <input type="email" class="form-control" placeholder="제목">
                </div>
                <div class="col-12 col-sm-6">
                    <input type="text" class="form-control" placeholder="사이트 링크">
                </div>
                <div class="col-12 col-sm-6">
                    <input type="file" class="form-control bg-white">
                </div>
                <div class="col-12">
                    <textarea id="write_text" class="form-control" rows="20" placeholder="내용"></textarea>
                </div>
            </div>
        </form>

        <div class="col-12">
            <button class="btn btn-primary w-100" type="submit" onclick="location.href='/request/complete'">등 록</button>
        </div>

    </div>
</div>
<!-- Write End -->

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
