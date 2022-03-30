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
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/timepicker/1.3.5/jquery.timepicker.min.css">

<!-- datepicker-->
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
					<h1 class="display-3 text-white animated slideInDown">스터디 만들기</h1>
				</div>
			</div>
		</div>
	</div>
	<!-- Header End -->

	<!-- Contact Start -->
	<div class="container-xxl py-5" id="containerform">
		<div class="container">
			<div class="text-center wow fadeInUp" data-wow-delay="0.1s">
				<form action="studyregform" method="post">

					<!-- 초/중등 타입 -->
					<div id="regstudyform1">
						<!--  <h5 class="section-title bg-white text-center text-primary px-3">학교유형</h5> -->
						<h1 class="mb-5 mt-2">나에게 맞는 스터디 개설해볼까요?</h1>
						<div class="row text-center col-lg-4 col-md-12 wow fadeInUp" data-wow-delay="0.5s" style="width: 30%; float: none; margin: 0 auto">
							<div class="row g-3">
								<div class="col-12">
									<input id="study_sname_1" type="radio" class="btn-check" name="study_sname" value="1" />
									<label for="study_sname_1" class="btn btn-outline-primary w-100 py-3">초등학생</label> <br>
									<br>
									<input id="study_sname_2" type="radio" class="btn-check" name="study_sname" value="2" />
									<label for="c" class="btn btn-outline-primary w-100 py-3">중학생</label> <br>
									<br>
								</div>
								<div class="col-12 mt-5">
									<button id="nextstudybtn1" class="btn btn-primary w-100 py-3" disabled>다음</button>
								</div>
							</div>
						</div>
					</div>

					<!-- 초등학생 타입 -->
					<div id="regstudyform2" style="display: none;">
						<h5 class="section-title bg-white text-center text-primary px-3">스터디개설</h5>
						<div class="row text-center col-lg-4 col-md-12 wow fadeInUp" data-wow-delay="0.5s" style="width: 30%; float: none; margin: 0 auto;">
							<div class="row g-3">
								<div class="col-12">
									<h3 class="section-title bg-white text-center text-primary px-3">학년</h3>
									<div style="align-items: center; margin-top: 20px;">
										<select id="study_grade" onchange="getSelectEGradeValue()">
											<option value="1" id="study_grade_1">1학년</option>
											<option value="2" id="study_grade_2">2학년</option>
											<option value="3" id="study_grade_3">3학년</option>
											<option value="4" id="study_grade_4">4학년</option>
											<option value="5" id="study_grade_5">5학년</option>
											<option value="6" id="study_grade_6">6학년</option>
										</select>
									</div>
									<br>
									<br>


									<h3 class="section-title bg-white text-center text-primary px-3">과목</h3>
									<div style="align-items: center; margin-top: 20px;">
										<select id="study_subject" onchange="getSelectESubjectValue()">
											<option value="1" id="study_subject_kr">국어</option>
											<option value="2" id="study_subject_en">영어</option>
											<option value="3" id="study_subject_ma">수학</option>
											<option value="4" id="study_subject_so">사회</option>
											<option value="5" id="study_subject_sc">과학</option>
										</select>
									</div>
									<br>
									<br>


									<h3 class="section-title bg-white text-center text-primary px-3">유형</h3>
									<div style="align-items: center; margin-top: 20px;">
										<select id="study_type" onchange="getSelectETypeValue()" hidden>
											<input type="checkbox" value="1" id="study_type_1">
											내신
											</input>
											<input type="checkbox" value="2" id="study_type_2">
											시험
											</input>
											<input type="checkbox" value="3" id="study_type_3">
											경시대회준비
											</input>
											<input type="checkbox" value="4" id="study_type_4">
											북클럽
											</input>
										</select>
									</div>
									<br>
									<br>

									<h3 class="section-title bg-white text-center text-primary px-3">목표레벨</h3>
									<div style="align-items: center; margin-top: 20px;">
										<select id="study_target_level" onchange="getSelectETargetValue()">
											<option value="1" id="study_target_level1">초상</option>
											<option value="2" id="study_target_level2">상</option>
											<option value="3" id="study_target_level3">중상</option>
											<option value="4" id="study_target_level4">중</option>
										</select>
									</div>
									<br>
									<br>

								</div>

								<div class="col-12 mt-5">
									<button id="nextstudybtn2" class="btn btn-primary w-100 py-3" disabled>다음</button>
								</div>
							</div>
						</div>
					</div>

					<!-- 중학생 타입 -->
					<!--          <div id="regstudyform3" style="display: none;">
				    <h5 class="section-title bg-white text-center text-primary px-3">중학생</h5>
				    <div class="row text-center col-lg-4 col-md-12 wow fadeInUp" data-wow-delay="0.5s" style="width: 30%; float:none; margin:0 auto;">
				        <div class="row g-3">                           
				            <div class="col-12">
				                <h3 class="section-title bg-white text-center text-primary px-3">학년</h3>
				                  <div style="align-items:center; margin-top:20px;">
				                    <select id="study_grade" onchange="getSelectMGradeValue()">
				                    <option value="1"  name="study_grade_1">1학년</option> 
				                    <option value="2"  name="study_grade_2">2학년</option> 
				                    <option value="3"  name="study_grade_3">3학년</option> 
				                    </select>
				                </div>
				                <br><br>
				
				
				                 <h3 class="section-title bg-white text-center text-primary px-3">과목</h3>
				                  <div style="align-items:center; margin-top:20px;">
				                    <select id="study_subject" onchange="getSelectMSubjectValue()">
				                        <option value="1" name="study_subject_kr">국어</option> 
				                        <option value="2" name="study_subject_en">영어</option> 
				                        <option value="3" name="study_subject_ma">수학</option> 
				                        <option value="4" name="study_subject_so">사회</option> 
				                        <option value="5" name="study_subject_sc">과학</option> 
				                    </select>
				                </div>
				                <br><br>
				
				
				                 <h3 class="section-title bg-white text-center text-primary px-3">유형</h3>
				                  <div style="align-items:center; margin-top:20px;">
				                    <select id="study_type_mid" onchange="getSelectMTypeValue()">
				                        <input type="checkbox" name="내신" > 내신 
				                        <input type="checkbox" name="모의고사" > 모의고사
				                    </select>
				                 </div>
				                <br><br>
				                
				                 <h3 class="section-title bg-white text-center text-primary px-3">목표점수</h3>
				                  <div style="align-items:center; margin-top:20px;">
				                    <select id="study_target" onchange="getSelectMTargetValue()">
				                        <option value="초상">초상</option> 
				                        <option value="상">상</option> 
				                        <option value="중상">중상</option> 
				                        <option value="중">중</option>
				                    </select>
				                </div>
				                <br><br>

				            </div>
				
				            
				            <div class="col-12 mt-5">
				                <button id="nextstudybtn3" class="btn btn-primary w-100 py-3" disabled>다음</button>
				            </div>
				      	  </div>
					    </div>
					</div>      -->

					<!-- 타이틀/날짜/시간 -->
					<div id="regstudyform3" style="display: none;">
						<h5 class="section-title bg-white text-center text-primary px-3">스터디개설</h5>
						<div class="row text-center col-lg-4 col-md-12 wow fadeInUp" data-wow-delay="0.5s" style="width: 40%; float: none; margin: 0 auto;">
							<div class="row g-3">
								<div class="col-12">
									<h3 class="section-title bg-white text-center text-primary px-3">스터디타이틀</h3>
									<div style="align-items: center; margin-top: 20px;">
										<input type="text" name="study_title" id="study_title" value="스터디명을 입력하세요" style="border: 0 solid black">
									</div>
									<br>
									<br>


									<h3 class="section-title bg-white text-center text-primary px-3">날짜</h3>
									<div style="align-items: center; margin-top: 20px;">
										<span style="align-items: left; margin-left: 10px;">From</span>
										<input class="datepicker" id="study_fdate" style="width: 100px; border: 0 solid black">
										<span style="align-items: left; margin-left: 8px;">To</span>
										<input class="datepicker" id="study_edate" style="width: 100px; border: 0 solid black">
									</div>
									<br>
									<br>


									<h3 class="section-title bg-white text-center text-primary px-3">시간</h3>
									<div style="align-items: center; margin-top: 20px;">
										<span style="align-items: left; margin-left: 10px;">From</span>
										<input type="text" id="study_ftime" name="study_ftime" style="width: 100px; border: 0 solid black">
										<span style="align-items: left; margin-left: 8px;">To</span>
										<input type="text" id="study_etime" name="study_etime" style="width: 100px; border: 0 solid black">
									</div>
									<br>
									<br>

								</div>

								<div class="col-12 mt-5">
									<button id="nextstudybtn3" class="btn btn-primary w-100 py-3" disabled>다음</button>
								</div>
							</div>
						</div>
					</div>

					<!-- 상세내용/오픈카톡-->
					<div id="regstudyform4" style="display: none;">
						<h5 class="section-title bg-white text-center text-primary px-3">스터디개설</h5>
						<div class="row text-center col-lg-4 col-md-12 wow fadeInUp" data-wow-delay="0.5s" style="width: 30%; float: none; margin: 0 auto;">
							<div class="row g-3">
								<div class="col-12">
									<h3 class="section-title bg-white text-center text-primary px-3">상세내용</h3>
									<div style="align-items: center; margin-top: 20px;">
										<textarea rows="10" cols="40" id="study_contents" name="study_contents" /></textarea>
									</div>
									<br>
									<br>


									<h3 class="section-title bg-white text-center text-primary px-3">오픈카톡링크</h3>
									<div style="align-items: center; margin-top: 20px;">
										<input type="text" name="study_kakao" id="study_kakao" value="오픈카톡링크를 입력하세요" style="border: 0 solid black;">
									</div>
									<br>
									<br>

								</div>

								<div class="col-12 mt-5">
									<button id="nextstudybtn4" class="btn btn-primary w-100 py-3" disabled>다음</button>
								</div>
							</div>
						</div>
					</div>


				</form>
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
	<script src="${pageContext.request.contextPath}/resources/freelance/js/mystudy1.js"></script>
	
	<!--timepicker-->
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/timepicker/1.3.5/jquery.timepicker.min.js"></script>

	<!-- datepicker-->
	<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.min.js" integrity="sha512-894YE6QWD5I59HgZOGReFYm4dnWc1Qt5NtvYSaNcOP+u1T9qYdvdihz0PPSiiqn/+/3e7Jo4EaG7TubfWGUrMQ==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/jqueryui/1.12.1/jquery-ui.min.js" integrity="sha512-uto9mlQzrs59VwILcLiRYeLKPPbS/bT71da/OEBYEwcdNUk8jYIy+D176RYoop1Da+f9mvkYrmj5MCLZWEtQuA==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>
	<script>
		$(function() {
			$('.datepicker').datepicker({
				format : "yyyy-mm-dd", //달력에서 클릭시 표시할 값 형식 
				todayHighlight : true,
			});

			//영어달력에서 한글달력으로 설정 변경
			$.datepicker.setDefaults({
				dateFormat : 'yy-mm-dd',
				prevText : '이전 달',
				nextText : '다음 달',
				monthNames : [ '1월', '2월', '3월', '4월', '5월', '6월', '7월', '8월',
						'9월', '10월', '11월', '12월' ],
				monthNamesShort : [ '1월', '2월', '3월', '4월', '5월', '6월', '7월',
						'8월', '9월', '10월', '11월', '12월' ],
				dayNames : [ '일', '월', '화', '수', '목', '금', '토' ],
				dayNamesShort : [ '일', '월', '화', '수', '목', '금', '토' ],
				dayNamesMin : [ '일', '월', '화', '수', '목', '금', '토' ],
				showMonthAfterYear : true,
				yearSuffix : '년'
			});

			//스터디시작시간 설정
			$("#study_ftime").timepicker({
				timeFormat : 'h:mm p',
				interval : 10,
				minTime : '8',
				maxTime : '11:59pm',
				defaultTime : '9',
				startTime : '08:00',
				dynamic : false,
				dropdown : true,
				scrollbar : true
			});

			//스터디마무리시간 설정
			$("#study_etime").timepicker({
				timeFormat : 'h:mm p',
				interval : 10,
				minTime : '8',
				maxTime : '11:59pm',
				defaultTime : '9',
				startTime : '08:00',
				dynamic : false,
				dropdown : true,
				scrollbar : true
			});

		});

		//초중학교 선택
		/* 		  $("#nextstudybtn1").click(function() {
		 $("#regstudyform1").hide();
		 var sname = $("input[name='study_sname']:checked").val();
		 if( sname==="1"){
		 $("#regstudyform2").show();
		 $("#regstudyform3").hide();
		 }else if(sname ==="2"){
		 $("#regstudyform2").hide();
		 $("#regstudyform3").show();
		 }
		
		 });
		
		 //초등학교 입력값 
		 $("#nextstudybtn2").click(function() {
		 $("#regstudyform1").hide();
		 $("#regstudyform2").hide();
		 $("#regstudyform3").hide();
		 $("#regstudyform4").show();
		 });
		
		 //중학교 입력값
		 $("#nextstudybtn3").click(function() {
		 $("#regstudyform1").hide();
		 $("#regstudyform2").hide();
		 $("#regstudyform3").hide();
		 $("#regstudyform4").show();
		 });
		
		 //
		 $("#nextstudybtn4").click(function() {
		 $("#regstudyform1").hide();
		 $("#regstudyform2").hide();
		 $("#regstudyform3").hide();
		 $("#regstudyform4").hide();
		 $("#regstudyform5").show();
		 });
		
		
		 */

		/* 		  $("#nextstudybtn2").click(function() {
		 var grade = $("#study_grade").val();
		 //등록확인의 grade 값 넣기 (reg_grade)
		 $("#reg_grade").val(grade);
		 }); */
	</script>
</body>
</html>


