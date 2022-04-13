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

	<!-- Navbar Start -->
<jsp:include page="/WEB-INF/views/bookstore/header.jsp"/>

	<!-- Navbar End -->

	<!-- Header Start -->
	<div class="container-fluid bg-primary py-5 mb-5 page-header" id="containerform">
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
		<div class="container">
			<div class="text-center wow fadeInUp" data-wow-delay="0.1s">
				<form action="studymodiform" method="post">

					<!-- 초/중등 학교 study_sname -->
					<div id="regstudyform1">
						<h5 class="section-title bg-white text-center text-primary px-3">학교선택</h5>
						<h1 class="mb-5 mt-2">나에게 맞는 스터디로 수정해볼까요?</h1>
						<div class="row text-center col-lg-4 col-md-12 wow fadeInUp" data-wow-delay="0.5s" style="width: 30%; float: none; margin: 0 auto">
							<div class="row g-3">
								<div class="col-12">
									<input id="study_sname_1" type="radio" class="btn-check" name="study_sname" value="초등학생" />
									<label for="study_sname_1" class="btn btn-outline-primary w-100 py-3">초등학생</label> <br>
									<br>
									<input id="study_sname_2" type="radio" class="btn-check" name="study_sname" value="중학생" />
									<label for="study_sname_2" class="btn btn-outline-primary w-100 py-3">중학생</label> <br>
									<br>
								</div>
								<div class="col-12 mt-5">
									<button id="nextstudybtn1" class="btn btn-primary w-100 py-3" disabled>다음</button>
								</div>
							</div>
						</div>
					</div>

					<!-- 입력2 : 학년 -->
					<div id="regstudyform2" style="display: none;">
						<h3 class="section-title bg-white text-center text-primary px-3">학년</h3>
						<h1 class="mb-5 mt-2">몇학년의 스터디가 필요한가요?</h1>
						<div class="row text-center col-lg-4 col-md-12 wow fadeInUp" data-wow-delay="0.5s" style="width: 30%; float: none; margin: 0 auto;">
							<div class="row g-3">
								<div class="col-12">
									<div style="align-items: center; margin-top: 20px;">
										<input id="study_grade_1" type="radio" class="btn-check" name="study_grade" value="1학년" />
										<label for="study_grade_1" class="btn btn-outline-primary w-100 py-3">1학년</label> <br>
										<br>
										<input id="study_grade_2" type="radio" class="btn-check" name="study_grade" value="2학년" />
										<label for="study_grade_2" class="btn btn-outline-primary w-100 py-3">2학년</label> <br>
										<br>
										<input id="study_grade_3" type="radio" class="btn-check" name="study_grade" value="3학년" />
										<label for="study_grade_3" class="btn btn-outline-primary w-100 py-3">3학년</label> <br>
										<br>
										<div id="grade_detail" style="display: none;">
										<input id="study_grade_4" type="radio" class="btn-check" name="study_grade" value="4학년" />
										<label for="study_grade_4" class="btn btn-outline-primary w-100 py-3">4학년</label> <br> <br>
										<input id="study_grade_5" type="radio" class="btn-check" name="study_grade" value="5학년" />
										<label for="study_grade_5" class="btn btn-outline-primary w-100 py-3">5학년</label> <br> <br>
										<input id="study_grade_6" type="radio" class="btn-check" name="study_grade" value="6학년" />
										<label for="study_grade_6" class="btn btn-outline-primary w-100 py-3">6학년</label> <br> <br>
										</div>
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
					
					<!-- 입력3 : 과목 -->
					<div id="regstudyform3" style="display: none;">
						<h5 class="section-title bg-white text-center text-primary px-3">과목</h5>
						<h1 class="mb-5 mt-2">어떤과목의 스터디를 만들어볼까요?</h1>
						<div class="row text-center col-lg-4 col-md-12 wow fadeInUp" data-wow-delay="0.5s" style="width: 30%; float: none; margin: 0 auto;">
							<div class="row g-3">
								<div class="col-12">
									<div style="align-items: center; margin-top: 20px;">
										<input id="study_subject_kr" type="radio" class="btn-check" name="study_subject" value="국어" />
										<label for="study_subject_kr" class="btn btn-outline-primary w-100 py-3">국어</label> <br>
										<br>
										<input id="study_subject_en" type="radio" class="btn-check" name="study_subject" value="영어" />
										<label for="study_subject_en" class="btn btn-outline-primary w-100 py-3">영어</label> <br>
										<br>
										<input id="study_subject_ma" type="radio" class="btn-check" name="study_subject" value="수학" />
										<label for="study_subject_ma" class="btn btn-outline-primary w-100 py-3">수학</label> <br>
										<br>
										<input id="study_subject_so" type="radio" class="btn-check" name="study_subject" value="사회" />
										<label for="study_subject_so" class="btn btn-outline-primary w-100 py-3">사회</label> <br>
										<br>
										<input id="study_subject_sc" type="radio" class="btn-check" name="study_subject" value="과학" />
										<label for="study_subject_sc" class="btn btn-outline-primary w-100 py-3">과학</label> <br>
										<br>
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
					
					
					<!-- 입력4 : 유형 -->
					<div id="regstudyform4" style="display: none;">
						<h5 class="section-title bg-white text-center text-primary px-3">유형</h5>
						<h1 class="mb-5 mt-2">어떤 준비를 하는지 알려주시겠어요?</h1>
						<div class="row text-center col-lg-4 col-md-12 wow fadeInUp" data-wow-delay="0.5s" style="width: 30%; float: none; margin: 0 auto;">
							<div class="row g-3">
								<div class="col-12">
									<div style="align-items: center; margin-top: 20px;">
										<input id="study_type_1" type="radio" class="btn-check" name="study_type" value="내신" />
										<label for="study_type_1" class="btn btn-outline-primary w-100 py-3">내신</label> <br>
										<br>
										<input id="study_type_2" type="radio" class="btn-check" name="study_type" value="시험" />
										<label for="study_type_2" class="btn btn-outline-primary w-100 py-3">시험</label> <br>
										<br>
										<input id="study_type_3" type="radio" class="btn-check" name="study_type" value="경시대회준비" />
										<label for="study_type_3" class="btn btn-outline-primary w-100 py-3">경시대회준비</label> <br>
										<br>
										<input id="study_type_4" type="radio" class="btn-check" name="study_type" value="북클럽" />
										<label for="study_type_4" class="btn btn-outline-primary w-100 py-3">북클럽</label> <br>
										<br>
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
					
					<!-- 입력5 : 목표레벨 -->
					<div id="regstudyform5" style="display: none;">
						<h5 class="section-title bg-white text-center text-primary px-3">목표레벨</h5>
						<h1 class="mb-5 mt-2">목표를 설정해 주시겠어요?</h1>
						<div class="row text-center col-lg-4 col-md-12 wow fadeInUp" data-wow-delay="0.5s" style="width: 30%; float: none; margin: 0 auto;">
							<div class="row g-3">
								<div class="col-12">
									<div style="align-items: center; margin-top: 20px;">
										<input id="study_target_level1" type="radio" class="btn-check" name="study_target_level" value="최상" />
										<label for="study_target_level1" class="btn btn-outline-primary w-100 py-3">최상</label> <br>
										<br>
										<input id="study_target_level2" type="radio" class="btn-check" name="study_target_level" value="상" />
										<label for="study_target_level2" class="btn btn-outline-primary w-100 py-3">상</label> <br>
										<br>
										<input id="study_target_level3" type="radio" class="btn-check" name="study_target_level" value="중상" />
										<label for="study_target_level3" class="btn btn-outline-primary w-100 py-3">중상</label> <br>
										<br>
										<input id="study_target_level4" type="radio" class="btn-check" name="study_target_level" value="중" />
										<label for="study_target_level4" class="btn btn-outline-primary w-100 py-3">중</label> <br>
										<br>
									</div>
									<br>
									<br>
								</div>
									
								<div class="col-12 mt-5">
									<button id="nextstudybtn5" class="btn btn-primary w-100 py-3" disabled>다음</button>
								</div>
							</div>
						</div>
					</div>

					<!-- 입력6 : 타이틀 -->
					<div id="regstudyform6" style="display: none; margin-bottom:300px;">
						<h5 class="section-title bg-white text-center text-primary px-3">스터디타이틀</h5>
						<h1 class="mb-5 mt-2">나만의 멋진 스터디 이름을 지어주세요</h1>
						<div class="row text-center col-lg-4 col-md-12 wow fadeInUp" data-wow-delay="0.5s" style="width: 30%; float: none; margin: 0 auto;">
							<div class="row g-3">
								<div class="col-12">
									<div style="align-items: center; margin-top: 20px;">
										<input style="font-size: 1.5em" type="text" class="form-control" name="study_title" id="study_title" placeholder ="스터디명을 입력하세요">
									</div>
									<br>
									<br>
								</div>
									
								<div class="col-12 mt-5">
									<button id="nextstudybtn6" class="btn btn-primary w-100 py-3" disabled>다음</button>
								</div>
							</div>
						</div>
					</div>
					
					<!-- 입력7 : 시작/마무리 날짜-->
					<div id="regstudyform7" style="display: none; margin-bottom:300px;">
						<h5 class="section-title bg-white text-center text-primary px-3">스터디기간</h5>
						<h1 class="mb-5 mt-2">스터디 기간을 설정해 주시겠어요?</h1>
						<div class="row text-center col-lg-4 col-md-12 wow fadeInUp" data-wow-delay="0.5s" style="width: 30%; float: none; margin: 0 auto;">
							<div class="row g-3">
								<div class="col-12">
									<div style="align-items: center; margin-top: 20px;">
										<span style="align-items: left; margin-left: 10px;">From</span>
										<input class="datepicker" id="study_fdate" name="study_fdate" style="font-size: 1.5em; width: 120px; border: 0 solid black;" autocomplete="off">
										<span style="align-items: left; margin-left: 8px;">To</span>
										<input class="datepicker" id="study_edate" name="study_edate" style="font-size: 1.5em; width: 120px; border: 0 solid black;" autocomplete="off">
									</div>
									<br>
									<br>
								</div>
									
								<div class="col-12 mt-5">
									<button id="nextstudybtn7" class="btn btn-primary w-100 py-3" disabled>다음</button>
								</div>
							</div>
						</div>
					</div>
					
					<!-- 입력8 : 시작/마무리 시간 -->
					<div id="regstudyform8" style="display: none; margin-bottom:200px;">
						<h5 class="section-title bg-white text-center text-primary px-3">스터디 시간</h5>
						<h1 class="mb-5 mt-2">스터디 시간을 설정해 주시겠어요?</h1>
						<div class="row text-center col-lg-4 col-md-12 wow fadeInUp" data-wow-delay="0.5s" style="width: 30%; float: none; margin: 0 auto;">
							<div class="row g-3">
								<div class="col-12">
									<div style="align-items: center; margin-top: 20px;">
										<span style="align-items: left; margin-left: 10px;">From</span>
										<input type="text" id="study_ftime" name="study_ftime" style="width: 100px; border: 0 solid black;  font-size: 1.5em;">
										<span style="align-items: left; margin-left: 8px;">To</span>
										<input type="text" id="study_etime" name="study_etime" style="width: 100px; border: 0 solid black;  font-size: 1.5em;">
									</div>
									<br>
									<br>
								</div>									
								<div class="col-12 mt-5">
									<button id="nextstudybtn8" class="btn btn-primary w-100 py-3" disabled>다음</button>
								</div>
							</div>
						</div>
					</div>
					
					<!-- 입력9 : 상세내용 -->
					<div id="regstudyform9" style="display: none;">
						<h5 class="section-title bg-white text-center text-primary px-3">상세내용</h5>
						<h1 class="mb-5 mt-2">나만의 스터디를 어필해볼까요?</h1>
						<h5>본인의 스터디를 설명해주세요(200자 제한)</h5>
						<div class="row text-center col-lg-4 col-md-12 wow fadeInUp" data-wow-delay="0.5s" style="width: 30%; float: none; margin: 0 auto;">
							<div class="row g-3">
								<div class="col-12">

									<div style="align-items: center; margin-top: 20px;">
										<textarea rows="10" cols="40" id="study_contents" name="study_contents" style="height: 200px" maxlength="200";/></textarea>
									</div>
									<br>
									<br>
								</div>
									
								<div class="col-12 mt-5">
									<button id="nextstudybtn9" class="btn btn-primary w-100 py-3" disabled>다음</button>
								</div>
							</div>
						</div>
					</div>
					
					<!-- 입력10 : 카톡링크 -->
					<div id="regstudyform10" style="display: none;  margin-bottom:200px;">
						<div class="row text-center col-lg-4 col-md-12 wow fadeInUp" data-wow-delay="0.5s" style="width: 30%; float: none; margin: 0 auto;">
							<div class="row g-3">
								<div class="col-12">
									<h3 class="section-title bg-white text-center text-primary px-3">오픈카톡링크</h3>
									<div style="align-items: center; margin-top: 20px;">
										<input type="text" name="study_kakao" id="study_kakao" placeholder="오픈카톡링크를 입력하세요" style="border: 0 solid black; font-size: 1.5em;">
									</div>
									<br>
									<br>
								</div>
								</div>
									<input name="study_no" id="study_no" type="hidden" value='${study_no}'>
								<div class="col-12 mt-5"  id="regstudySubmitform">
									<button type="submit" id="nextstudybtn10" class="btn btn-primary w-100 py-3" disabled>다음</button>
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
	<script src="${pageContext.request.contextPath}/resources/study/js/mystudy1.js"></script>

	<!--timepicker-->
	<script src="https://cdnjs.cloudflare.com/ajax/libs/timepicker/1.3.5/jquery.timepicker.min.js"></script>

	<!-- datepicker-->
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
				defaultTime : '8',
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
				defaultTime : '8',
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
		

		
		 $("#nextstudybtn2").click(function() {
		 var grade = $("#study_grade").val();
		 //등록확인의 grade 값 넣기 (reg_grade)
		 $("#reg_grade").val(grade);
		 }); 
		 
		 
		 
		 <js 에서 추가 처리해야할 부분> 
		 1. 초등/중등 학년 분리해서 받기 
		 2. 마지막날짜가 시작날짜를 앞서지 않기 
		 3. 마지막시간이 시작날짜를 앞서지 않기 
		 4. 스터디제목/오픈링크/상세내용에서 엔터키 먹히지 않게 하기 

		 
		 */
	</script>
</body>
</html>


