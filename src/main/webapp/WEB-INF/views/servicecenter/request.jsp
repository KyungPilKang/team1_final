<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>고객센터</title>
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

    <!-- Customized Bootstrap Stylesheet -->
    <link href="${pageContext.request.contextPath}/resources/bookstore/css/bootstrap.min.css" rel="stylesheet">

    <!-- Stylesheet -->
    <link href="${pageContext.request.contextPath}/resources/bookstore/css/style.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/resources/bookstore/css/bookStore.css" rel="stylesheet">
    <style>
        *{
            font-family: 'Stylish', sans-serif;
        }
        .page-header {
            background: linear-gradient(rgba(24, 29, 56, .7), rgba(24, 29, 56, .7));
            background-position: center center;
            background-repeat: no-repeat;
            background-size: cover;
        }
    </style>

</head>

<body>

<jsp:include page="/WEB-INF/views/bookstore/header.jsp"/>

<!-- Header Start -->
<div class="container-fluid bg-primary py-5 mb-5 page-header">
    <div class="container py-5">
        <div class="row justify-content-center">
            <div class="col-lg-10 text-center">
                <h1 class="display-3 text-white animated slideInDown">고객센터</h1>
            </div>
        </div>
    </div>
</div>
<!-- Header End -->

<%--<button class="btn btn-primary" onclick="location.href='/request/write'" style="float:right">문의하기 임시</button><br><br><br>--%>
<div class="container">

    <div class="accordion" id="accordionExample">
        <div class="accordion-item">
            <h2 class="accordion-header" id="headingOne">
                <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#collapseOne" aria-expanded="true" aria-controls="collapseOne">
                    [계정] 닉네임을 변경하고 싶어요.
                </button>
            </h2>
            <div id="collapseOne" class="accordion-collapse collapse" aria-labelledby="headingOne" data-bs-parent="#accordionExample">
                <div class="accordion-body">
                    <strong> 다른 닉네임으로 변경하고 싶을 경우 방법은 아래와 같아요. </strong> <br><br> 마이페이지 > 회원정보 > '수정하기' > 닉네임 '수정'
                </div>
            </div>
        </div>
        <div class="accordion-item">
            <h2 class="accordion-header" id="headingTwo">
                <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#collapseTwo" aria-expanded="false" aria-controls="collapseTwo">
                    [계정] 이메일을 변경하고 싶어요.
                </button>
            </h2>
            <div id="collapseTwo" class="accordion-collapse collapse" aria-labelledby="headingTwo" data-bs-parent="#accordionExample">
                <div class="accordion-body">
                    <strong> 다른 이메일 주소로 변경하고 싶을 경우 방법은 아래와 같아요. </strong> <br><br> 마이페이지 > 회원정보 > '수정하기'
                </div>
            </div>
        </div>

        <div class="accordion-item">
            <h2 class="accordion-header" id="headingThree">
                <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#collapseThree" aria-expanded="false" aria-controls="collapseThree">
                    [탈퇴] 니즈풀을 탈퇴하고 싶어요.
                </button>
            </h2>
            <div id="collapseThree" class="accordion-collapse collapse" aria-labelledby="headingThree" data-bs-parent="#accordionExample">
                <div class="accordion-body">
                    <strong>마이페이지 > 회원정보 > '회원탈퇴'에서 가능해요. </strong> <br><br> ※ 탈퇴할 경우 해당 계정의 모든 데이터가 삭제되며 <code style="font-family: 'Stylish', sans-serif;">복구가 불가능</code>하니 신중히 결정하시는 것을 권장 드려요.
                </div>
            </div>
        </div>

    </div>
</div>


<%--<button onclick="chatbotPop()" class="btn btn-lg btn-primary" style="float:right">챗봇Test</button>--%>



<br>
<jsp:include page="/WEB-INF/views/bookstore/footer.jsp"/>

<!-- Back to Top -->
<a href="#" class="btn btn-lg btn-primary btn-lg-square back-to-top"><i class="bi bi-arrow-up"></i></a>

<!-- JavaScript Libraries -->
<script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/js/bootstrap.bundle.min.js"></script>

<!-- Template Javascript -->
<script src="${pageContext.request.contextPath}/resources/bookstore/js/main.js"></script>

<%--<script>--%>
<%--    function chatbotPop() {--%>
<%--        window.open("/request/chatbot", "chatbotPop", "width=410,height=677, scrollbars=yes, resizable=yes");--%>
<%--    }--%>
<%--</script>--%>

</body>

</html>
