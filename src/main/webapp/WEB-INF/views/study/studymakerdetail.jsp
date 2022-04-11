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

<style>
.parent{
    width: 80%;
    margin: 10px auto;
    display: flex;
}


</style>
</head>
<body>
	<!-- Spinner Start -->
	<div id="spinner" class="show bg-white position-fixed translate-middle w-100 vh-100 top-50 start-50 d-flex align-items-center justify-content-center">
		<div class="spinner-border text-primary" style="width: 3rem; height: 3rem;" role="status">
			<span class="sr-only">Loading...</span>
		</div>
	</div>
	<!-- Spinner End -->

	<!-- Navbar Start -->
	<nav class="navbar navbar-expand-lg bg-white navbar-light shadow sticky-top p-0">
		<a href="/freereg1" class="navbar-brand d-flex align-items-center px-4 px-lg-5">
			<h2 class="m-0 text-primary">
				<i class="fa fa-book me-3"></i>NEESFULL
			</h2>
		</a>
		<button type="button" class="navbar-toggler me-4" data-bs-toggle="collapse" data-bs-target="#navbarCollapse">
			<span class="navbar-toggler-icon"></span>
		</button>
		<div class="collapse navbar-collapse" id="navbarCollapse">
			<div class="navbar-nav ms-auto p-4 p-lg-0">
				<a href="index.html" class="nav-item nav-link">Home</a>
				<a href="about.html" class="nav-item nav-link">About</a>
				<a href="courses.html" class="nav-item nav-link">Courses</a>
				<div class="nav-item dropdown">
					<a href="#" class="nav-link dropdown-toggle" data-bs-toggle="dropdown">Pages</a>
					<div class="dropdown-menu fade-down m-0">
						<a href=# class="dropdown-item">Our Team</a>
						<a href=# class="dropdown-item">Testimonial</a>
						<a href=# class="dropdown-item">404 Page</a>
					</div>
				</div>
			</div>
		</div>
	</nav>
	<!-- Navbar End -->

	<!-- Header Start -->
	<div class="container-fluid bg-primary py-5 mb-5 page-header">
		<div class="container py-5">
			<div class="row justify-content-center">
				<div class="col-lg-10 text-center">
					<h1 class="display-3 text-white animated slideInDown">스터디 개설자 상세게시글</h1>
				</div>
			</div>
		</div>
	</div>
	<!-- Header End -->
	
		<!-- Contact Start -->
	<div class="container-xxl py-5 wow fadeInUp" data-wow-delay="0.1s">
		<div class="container">
			<div class="row gy-6 gx-6">
				<div class="col-lg-12">
					<div class="d-flex align-items-center mb-5">
						<img class="flex-shrink-0 img-fluid border rounded" src="${pageContext.request.contextPath}/resources/freelance/img/about.jpg" alt="" style="width: 80px; height: 80px;">
							<div class="text-start ps-4">
								<h3 class="mb-3">스터디 등록 제목</h3>
								<span class="resfreespan text-truncate me-3">
									<i class="bi bi-brightness-high-fill text-primary me-2"></i>초등/중등
								</span>
								<span class="resfreespan text-truncate me-3">
									<i class="bi bi-eyeglasses text-primary me-2"></i>학년
								</span>
								<span class="resfreespan text-truncate me-3">
									<i class="bi bi-calendar2-date text-primary me-2"></i>시작 날짜 
								</span>
							</div>
					</div>

					<div class="mb-5">
						<h3 class="mb-3">스터디 정보</h3>
						<br>
						<input name="study_no" id="study_no" type="hidden" value='${studyPosted.study_no}'>
						<p><i class="fa fa-angle-right text-primary me-2"></i>학교 : ${studyPosted.study_sname}</p>
						<p><i class="fa fa-angle-right text-primary me-2"></i>학년 : ${studyPosted.study_grade}</p>
						<p><i class="fa fa-angle-right text-primary me-2"></i>과목 : ${studyPosted.study_subject}</p>
						<p><i class="fa fa-angle-right text-primary me-2"></i>유형 : ${studyPosted.study_type}</p>
						<p><i class="fa fa-angle-right text-primary me-2"></i>목표레벨 : ${studyPosted.study_target_level}</p>
						<p><i class="fa fa-angle-right text-primary me-2"></i>스터디타이틀 : ${studyPosted.study_title}</p>
						<p><i class="fa fa-angle-right text-primary me-2"></i>스터디기간  : ${studyPosted.study_fdate} ~ ${studyPosted.study_edate}</p>
						<p><i class="fa fa-angle-right text-primary me-2"></i>스터디시간 : ${studyPosted.study_ftime} ~ ${studyPosted.study_etime}</p>
						<p><i class="fa fa-angle-right text-primary me-2"></i>오픈카톡링크 : ${studyPosted.study_kakao}</p>
						<%-- <p><i class="fa fa-angle-right text-primary me-2"></i>참여자정보 : ${studyteam.team_accept}</p> --%>
						<br> <br>
						<h3 class="mb-5">스터디상세내용</h3>
						<p> ${studyPosted.study_contents}  이 스터디는 이번 1학기 중간고사를 목표로 개설되었습니다! 최상에 도전하는 친구들이 매주 2번 모여 문제풀이를 같이 할까요. 교재는 천재교육 --문제집 혹은 메가스터디 --교재 입니다. 추후 스터디 모집 완료후 오픈카톡으로 이야기 나누어 보아요.</p>
					</div>
				</div>
			  </div>
			</div>
		</div>

		<div class="parent" style="margin-bottom:150px;">	
		<div class="row text-center col-lg-4 col-md-12 wow fadeInUp" data-wow-delay="0.3s" style="width: 20%; margin-left:200px; ">
				<div class="row g-3">
					<div class="col-12">
						<div class="col-12 mt-4">
							<button id="canclebtn" class="btn btn-outline-primary w-35 py-3" onclick="window.location='/studymakermain'">목록 으로</button>
						</div>
					</div>
				</div> 
			</div>
			
			<div class="row text-center col-lg-4 col-md-12 wow fadeInUp" data-wow-delay="0.3s" style="width: 20%;  ">
				<div class="row g-3">
					<div class="col-12">
						<div class="col-12 mt-4">
							<form action="/studymodify" method="post">
							<input name="study_no" id="study_no" type="hidden" value='${studyPosted.study_no}'>
								<button id="contractbtn" class="btn btn-outline-primary w-35 py-3">수정 하기</button>
							</form>
						</div>
					</div>
				</div>
			</div>
			
			<div class="row text-center col-lg-4 col-md-12 wow fadeInUp" data-wow-delay="0.3s" style="width: 20%;   ">
				<div class="row g-3">
					<div class="col-12">
						<div class="col-12 mt-4">
						<form action="/deletestudy" method="post">
						<input name="study_no" id="study_no" type="hidden" value='${studyPosted.study_no}'>
							<button id="contractbtn" class="btn btn-outline-primary w-35 py-3">삭제 하기</button>
						</form>
						</div>
					</div>
				</div>
			</div>
			<div class="row text-center col-lg-4 col-md-12 wow fadeInUp" data-wow-delay="0.3s" style="width: 20%; margin-left:30px; ">
				<div class="row g-3">
					<div class="col-12">
					    <div class="col-12 mt-4">											
							 <select id="attendList" class="btn btn-outline-primary w-35 py-3"  style="float:left; height:70px;">
							 	<c:forEach items="${studentList }" var="student">
							 		<option value="${student.user_id}">${student.user_id}</option>
							 	</c:forEach>
			           		 </select>	
			           	</div>	           		
						<div class="col-12 mt-4">
							
								<select id="attendResult" class="btn btn-outline-primary w-35 py-3"  style="float:left; height:70px;">
									<option value="team_accept">참여수락</option>
					                <option value="team_reject">수락취소</option>					                
				                </select>
						</div>
				

					</div>
				</div>
			</div>
			
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
	<script>
	$(document).ready(function () {
		$('#attendResult').on('change', function(e) {
			let studentName = $('#attendList').val();
			let studentStatus = $("#attendResult option:selected").val();			
			let studentStatusText = $("#attendResult option:selected").text();			
			var result = confirm(studentName + '님의 상태를 ' + studentStatusText + '으로 변경하시겠습니까?');
			if(result){
			    $.ajax({
			 		url: "http://localhost:8090/studymakerdetail/check",
			 		type: "post" ,
			 		data: {
			 			"study_no" : $('#study_no').val(),
						"studentStatus" : studentStatus,
						"studentName" : studentName
			 		},
			 		success: function(data) {
			 			// study_no, studentName, studentStatus
			 			console.log("성공");
			 			if (data == "null") {
						 	$('#attendResult').val("미참여중");
						} 
			 		}
			    })
			}
		})
	});
		/* //attendList(아이디)
	   $("#attendList").val(`${isattend}`);
	   $('#attendList').on('change',function(e) {
		   let isattend = e.currentTarget.value;
		   alert(isattend);
		   window.location.href="/studymakerdetail?isattend="+isattend;
	   }); 
	   
	   //attendResult(참여수락/탈락/취소)
	   $("#attendResult").val(`${isresult}`);
	   $('#attendResult').on('change',function(e) {
		   let isresult = e.currentTarget.value;
		   alert(isresult);
		   window.location.href="/studymakerdetail?attendResult="+isresult;
	   }); */
	 
	   
	</script>
</body>
</html>