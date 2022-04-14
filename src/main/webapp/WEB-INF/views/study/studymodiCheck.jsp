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
<link href="${pageContext.request.contextPath}/resources/freelance/img/favicon.ico" rel="icon">

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

</head>
<body>
	<!-- Spinner Start -->
	<div id="spinner" class="show bg-white position-fixed translate-middle w-100 vh-100 top-50 start-50 d-flex align-items-center justify-content-center">
		<div class="spinner-border text-primary" style="width: 3rem; height: 3rem;" role="status">
			<span class="sr-only">Loading...</span>
		</div>
	</div>
	<!-- Spinner End -->


	<jsp:include page="/WEB-INF/views/bookstore/header.jsp"/>
	
	<!-- Navbar End -->
	
	<!-- Header Start -->
	<div class="container-fluid bg-primary py-5 mb-5 page-header">
		<div class="container py-5">
			<div class="row justify-content-center">
				<div class="col-lg-10 text-center">
					<h1 class="display-3 text-white animated slideInDown">스터디 수정</h1>
				</div>
			</div>
		</div>
	</div>
	<!-- Header End -->

	<!-- Contact Start -->
	<div class="container-xxl py-5">
		<form action="studymodicnf" method="post">
			<div class="container">
				<div class="text-center wow fadeInUp" data-wow-delay="0.1s">
					<h5 class="section-title bg-white text-center text-primary px-3">등록 정보</h5>
					<h1 class="mb-5 mt-2">입력하신 정보를 다시 확인해주세요</h1>
				</div>
				<div class="row g-4">
					<div class="row text-center col-lg-4 col-md-12 wow fadeInUp" data-wow-delay="0.5s" style="width: 30%; float: none; margin: 0 auto;">
						<div class="row g-3">
							<div class="col-12">

								<div class="form-floating">
									<h3>대상학년</h3>
									<c:choose>
										<c:when test="${modistudy.study_sname eq '초등학생' }">
											<input style="background: rgba(6, 187, 204, 0.3); font-size: 2.0em" type="text" class="form-control text-center" value="초등" readOnly>
										</c:when>
										<c:when test="${modistudy.study_sname eq '중학생' }">
											<input style="background: rgba(6, 187, 204, 0.3); font-size: 2.0em" type="text" class="form-control text-center" value="중등" readOnly>
										</c:when>
									</c:choose>
								</div>
								<br> <br>
								<div class="form-floating">
									<h3>대상 과목</h3>
									<c:choose>
										<c:when test="${modistudy.study_subject eq '국어' }">
											<input style="background: rgba(6, 187, 204, 0.3); font-size: 2.0em" type="text" class="form-control text-center" value="국어" readOnly>
										</c:when>
										<c:when test="${modistudy.study_subject eq '영어' }">
											<input style="background: rgba(6, 187, 204, 0.3); font-size: 2.0em" type="text" class="form-control text-center" value="영어" readOnly>
										</c:when>
										<c:when test="${modistudy.study_subject eq '수학' }">
											<input style="background: rgba(6, 187, 204, 0.3); font-size: 2.0em" type="text" class="form-control text-center" value="수학" readOnly>
										</c:when>
										<c:when test="${modistudy.study_subject eq '사회' }">
											<input style="background: rgba(6, 187, 204, 0.3); font-size: 2.0em" type="text" class="form-control text-center" value="사회" readOnly>
										</c:when>
										<c:when test="${modistudy.study_subject eq '과학' }">
											<input style="background: rgba(6, 187, 204, 0.3); font-size: 2.0em" type="text" class="form-control text-center" value="과학" readOnly>
										</c:when>
									</c:choose>
								<br> <br>
								<div class="form-floating">
									<h3>유형</h3>
									<c:choose>
										<c:when test="${modistudy.study_type eq '내신' }">
											<input style="background: rgba(6, 187, 204, 0.3); font-size: 2.0em" type="text" class="form-control text-center" value="내신" readOnly>
										</c:when>
										<c:when test="${modistudy.study_type eq '시험' }">
											<input style="background: rgba(6, 187, 204, 0.3); font-size: 2.0em" type="text" class="form-control text-center" value="시험" readOnly>
										</c:when>
										<c:when test="${modistudy.study_type eq '경시대회준비' }">
											<input style="background: rgba(6, 187, 204, 0.3); font-size: 2.0em" type="text" class="form-control text-center" value="경시대회준비" readOnly>
										</c:when>
										<c:otherwise>
											<input style="background: rgba(6, 187, 204, 0.3); font-size: 2.0em" type="text" class="form-control text-center" value="북클럽" readOnly>
										</c:otherwise>
									</c:choose>
								</div>
								<br> <br>
								<div class="form-floating">
									<h3>목표레벨</h3>
									<c:choose>
										<c:when test="${modistudy.study_target_level eq '최상' }">
											<input style="background: rgba(6, 187, 204, 0.3); font-size: 2.0em" type="text" class="form-control text-center" value="최상" readOnly>
										</c:when>										
										<c:when test="${modistudy.study_target_level eq '상' }">
											<input style="background: rgba(6, 187, 204, 0.3); font-size: 2.0em" type="text" class="form-control text-center" value="상" readOnly>
										</c:when>										
										<c:when test="${modistudy.study_target_level eq '중상' }">
											<input style="background: rgba(6, 187, 204, 0.3); font-size: 2.0em" type="text" class="form-control text-center" value="중상" readOnly>
										</c:when>										
										<c:otherwise>
											<input style="background: rgba(6, 187, 204, 0.3); font-size: 2.0em" type="text" class="form-control text-center" value="중" readOnly>
										</c:otherwise>
									</c:choose>
								</div>
								<br> <br>
							</div>
						</div>
					</div>
					</div>
					
					<div class="row text-center col-lg-4 col-md-12 wow fadeInUp" data-wow-delay="0.5s" style="width: 40%; float: none; margin: 0 auto;">
						<div class="row g-3">
							<div class="col-12">
								<div class="form-floating">
									<h3>시작날짜</h3>
									<input style="background: rgba(6, 187, 204, 0.3); font-size: 2.0em" type="text" class="form-control text-center" value="${modistudy.study_fdate }" readOnly>
								</div>
								<br> <br>
								<div class="form-floating">
									<h3>마무리날짜</h3>
									<input style="background: rgba(6, 187, 204, 0.3); font-size: 2.0em" type="text" class="form-control text-center" value="${modistudy.study_edate }" readOnly>
								</div>
								<br> <br>
								<div class="form-floating">
									<h3>시작시간</h3>
									<input style="background: rgba(6, 187, 204, 0.3); font-size: 2.0em" type="text" class="form-control text-center" value="${modistudy.study_ftime }" readOnly>
								</div>
								<br> <br>
								<div class="form-floating">
									<h3>마무리시간</h3>
									<input style="background: rgba(6, 187, 204, 0.3); font-size: 2.0em" type="text" class="form-control text-center" value="${modistudy.study_etime }" readOnly>
								</div>
								<br> <br>
							</div>
						</div>
					</div>
					
					
					<div class="row text-center col-lg-4 col-md-12 wow fadeInUp" data-wow-delay="0.5s" style="width: 30%; float: none; margin: 0 auto;">
						<div class="row g-3">
							<div class="col-12">
								<div class="form-floating">
									<h3>스터디 제목</h3>
									<input style="background: rgba(6, 187, 204, 0.3); font-size: 2.0em" type="text" class="form-control text-center" value="${modistudy.study_title }" readOnly>
								</div>
								<br> <br>
								<div class="form-floating">
									<h3>오픈링크주소</h3>
									<input style="background: rgba(6, 187, 204, 0.3); font-size: 2.0em" type="text" class="form-control text-center" value="${modistudy.study_kakao }" readOnly>
								</div>
								<br> <br>
								<div class="form-floating">
									<h3>상세내용</h3>
									<textarea style="background: rgba(6, 187, 204, 0.3); height: 200px; font-size: 2.0em" class="form-control text-center" readOnly>${modistudy.study_contents }</textarea>
								</div>
								<br> <br>
							</div>
						</div>
					</div>
				
				<div class="row g-4">
					<div class="row text-center col-lg-4 col-md-12 wow fadeInUp" data-wow-delay="0.5s" style="width: 30%; float: none; margin: 0 auto;">
						<div class="row g-3">
							<div class="col-12">
								<div class="col-12 mt-5">
									<button id="canclebtn" class="text-dark bg-white btn btn-primary w-100 py-3">취소 하기</button>
								</div>
							</div>
						</div>
					</div>
					<div class="row text-center col-lg-4 col-md-12 wow fadeInUp" data-wow-delay="0.5s" style="width: 30%; float: none; margin: 0 auto;">
						<div class="row g-3">
							<div class="col-12">
								<div class="col-12 mt-5">
									<button type="submit" class="btn btn-primary w-100 py-3">수정 하기</button>
								</div>
							</div>
						</div>
					</div>
				</div>
				
				
			</div>
		 </div>
	 </form>
 </div>
	<!-- Contact End -->
	
	


	

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
						<br>
						<br> Distributed By
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
	<script src="${pageContext.request.contextPath}/resources/study/js/mystudy1.js"></script>


</body>
</html>


