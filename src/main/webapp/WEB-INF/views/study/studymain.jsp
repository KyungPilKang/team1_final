<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>eLEARNING - eLearning HTML Template</title>
<meta content="width=device-width, initial-scale=1.0" name="viewport">
<meta content="" name="keywords">
<meta content="" name="description">
<!--timepicker-->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/timepicker/1.3.5/jquery.timepicker.min.css">
<script src="https://cdnjs.cloudflare.com/ajax/libs/timepicker/1.3.5/jquery.timepicker.min.js"></script>

<!-- datepicker-->
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.min.js" integrity="sha512-894YE6QWD5I59HgZOGReFYm4dnWc1Qt5NtvYSaNcOP+u1T9qYdvdihz0PPSiiqn/+/3e7Jo4EaG7TubfWGUrMQ==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jqueryui/1.12.1/jquery-ui.min.js" integrity="sha512-uto9mlQzrs59VwILcLiRYeLKPPbS/bT71da/OEBYEwcdNUk8jYIy+D176RYoop1Da+f9mvkYrmj5MCLZWEtQuA==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/jqueryui/1.12.1/jquery-ui.min.css" integrity="sha512-aOG0c6nPNzGk+5zjwyJaoRUgCdOrfSDhmMID2u4+OIslr0GjpLKo7Xm0Ao3xmpM4T8AmIouRkqwj1nrdVsLKEQ==" crossorigin="anonymous" referrerpolicy="no-referrer" />


<!-- Favicon -->
<%-- <link href="${pageContext.request.contextPath}/resources/freelance/img/favicon.ico" rel="icon">
 --%>
<!-- Google Web Fonts -->
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Stylish&display=swap" rel="stylesheet">
<link href="https://fonts.googleapis.com/css2?family=Heebo:wght@400;500;600&family=Nunito:wght@600;700;800&display=swap" rel="stylesheet">

<!-- Icon Font Stylesheet -->
<link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.10.0/css/all.min.css" rel="stylesheet">
<link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.4.1/font/bootstrap-icons.css" rel="stylesheet">

<!-- Libraries Stylesheet -->
<link href="${pageContext.request.contextPath}/resources/freelance/lib/animate/animate.min.css" rel="stylesheet">
<link href="${pageContext.request.contextPath}/resources/freelance/lib/owlcarousel/assets/owl.carousel.min.css" rel="stylesheet">

<!-- Customized Bootstrap Stylesheet -->
<link href="${pageContext.request.contextPath}/resources/freelance/css/bootstrap.min.css" rel="stylesheet">

<!-- Template Stylesheet -->
<link href="${pageContext.request.contextPath}/resources/freelance/css/style.css" rel="stylesheet">

<style>
.parent {
	width: 70%;
	margin: 10px auto;
	display: flex;
}

.first {
	flex: 1;
	margin: 0px 5%;
	width: 20%;
	box-sizing: border-box;
}

.second {
	flex: 1;
	margin: 0px 5%;
	width: 20%;
	box-sizing: border-box;
}

.third {
	flex: 1;
	margin: 0px 5%;
	width: 20%;
	box-sizing: border-box;
}

.fourth {
	flex: 1;
	margin: 0px 5%;
	width: 20%;
	box-sizing: border-box;
}
</style>
</head>
<body>
	<!-- Spinner Start -->
<!-- 	<div id="spinner" class="show bg-white position-fixed translate-middle w-100 vh-100 top-50 start-50 d-flex align-items-center justify-content-center">
		<div class="spinner-border text-primary" style="width: 3rem; height: 3rem;" role="status">
			<span class="sr-only">Loading...</span>
		</div>
	</div> -->
	<!-- Spinner End -->

	<!-- Navbar Start -->
	<jsp:include page="/WEB-INF/views/bookstore/header.jsp"/>
	<!-- Navbar End -->

	<!-- Header Start -->
	<div class="container-fluid bg-primary py-5 mb-5 page-header">
		<div class="container py-5">
			<div class="row justify-content-center">
				<div class="col-lg-10 text-center">
					<h1 class="display-3 text-white animated slideInDown">스터디 서비스</h1>
				</div>
			</div>
		</div>
	</div>
	<!-- Header End -->



	<!-- Content Start -->
	<div class="container-xxl py-5">
		<div class="container">

			<div class="text-center">
				<h3 class="section-title bg-white text-center text-primary px-3">메인 페이지</h3>
				<h1 class="mb-2 mt-2">스터디 안내사항</h1>
			</div>

			<div class="row text-center col-lg-4 col-md-12" style="width: 45%; float: none; margin: 0 auto;">
				<div class="row g-3">
					<div class="col-12">
						<div class="form-floating">
							<p style="text-align: left; background: rgba(6, 187, 204, 0.1); font-size: 1.5em; font-family: Stylish; margin-top: 50px;">
								<br> &nbsp;&nbsp;&nbsp;1)각자 목표에 맞게 설정하여 신청해주세요.<br> <br> &nbsp;&nbsp;&nbsp;2)참여 신청후 참여상태 확인해주세요.<br> <br> &nbsp;&nbsp;&nbsp;3)참여 신청 승인후 오픈카톡링크 열람이 가능합니다. <br> <br> &nbsp;&nbsp;&nbsp;4)개설자는 개설자관리 페이지에서 관리 가능합니다. <br> <br> &nbsp;&nbsp;&nbsp;5)성실히 스터디를 수행하기로 약속합니다. <br> <br>
							</p>
						</div>
						<br> <br>
					</div>
				</div>
			</div>


			<div class="row justify-content-md-center">
				<div class="col-2">
					<form action="studyReg" method="post">
						<button type="submit" class="btn btn-primary w-100 py-3">스터디등록</button>
					</form>
				</div>
				<div class="col-2">
					<form action="studyfind" method="get">
						<button type="submit" class="btn btn-primary w-100 py-3">스터디매칭</button>
					</form>
				</div>

				<div class="col-2">
					<form action="studyclass" method="get">
						<button type="submit" class="btn btn-primary w-100 py-3">스터디등교</button>
					</form>
				</div>
				<div class="col-2">
					<button id="makerbtn" class="btn btn-primary w-100 py-3">개설자관리</button>
				</div>


			</div>


		</div>
	</div>

	<!-- Content End -->
	<!-- Footer Start -->
	<div class="container-fluid bg-dark text-light footer pt-5 mt-5 wow fadeIn" data-wow-delay="0.1s">
		<div class="container">
			<div class="copyright">
				<div class="row">
					<div class="col-md-6 text-center text-md-start mb-3 mb-md-0">
						&copy;
						<a class="border-bottom" href="#">NEEDSFULL</a>
						, All Right Reserved.

						<!--/*** This template is free as long as you keep the footer author’s credit link/attribution link/backlink. If you'd like to use the template without the footer author’s credit link/attribution link/backlink, you can purchase the Credit Removal License from "https://htmlcodex.com/credit-removal". Thank you for your support. ***/-->
						Designed By
						<a class="border-bottom" href="https://htmlcodex.com">HTML Codex</a>
						<br> <br> Distributed By
						<a class="border-bottom" href="https://themewagon.com">ThemeWagon</a>
					</div>
					<!-- <div class="col-md-6 text-center text-md-end">
                        <div class="footer-menu">
                            <a href="">Home</a>
                            <a href="">Cookies</a>
                            <a href="">Help</a>
                            <a href="">FQAs</a>
                        </div>
                    </div> -->
				</div>
			</div>
		</div>
	</div>
	<!-- Footer End -->

	<!-- Back to Top -->
	<a href="#" class="btn btn-lg btn-primary btn-lg-square back-to-top">
		<i class="bi bi-arrow-up"></i>
	</a>


	<!-- JavaScript Libraries -->
	<script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/js/bootstrap.bundle.min.js"></script>
	<script src="${pageContext.request.contextPath}/resources/freelance/lib/wow/wow.min.js"></script>
	<script src="${pageContext.request.contextPath}/resources/freelance/lib/easing/easing.min.js"></script>
	<script src="${pageContext.request.contextPath}/resources/freelance/lib/waypoints/waypoints.min.js"></script>
	<script src="${pageContext.request.contextPath}/resources/freelance/lib/owlcarousel/owl.carousel.min.js"></script>

	<!-- Template Javascript -->
	<script src="${pageContext.request.contextPath}/resources/freelance/js/main.js"></script>

	<!-- DIY -->
	<script src="https://cdn.jsdelivr.net/npm/sweetalert2@10"></script>
	<script>
		
		$(document).ready(function(){
		let ismaker = "<c:out value='${ismaker}'/>";		
		console.log("ismaker" + ismaker);
		$('#makerbtn').on('click', function(){
			if(ismaker=='yes'){
				$('#makerbtn').attr('disabled', false);
					window.location="/studymakermain";
				} else {
					alert("스터디를 개설해 주세요");
					$('#makerbtn').attr('disabled', true); 
					return false;
				}
		});
	});
	</script>
	
</body>
</html>