<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>eLEARNING - eLearning HTML Template</title>
<meta content="width=device-width, initial-scale=1.0" name="viewport">
<meta content="" name="keywords">
<meta content="" name="description">

<!-- Favicon -->
<link href="img/favicon.ico" rel="icon">

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
			<span class="resfreespan sr-only">Loading...</span>
		</div>
	</div>
	<!-- Spinner End -->
	<!-- Navbar Start -->
	<nav class="navbar navbar-expand-lg bg-white navbar-light shadow sticky-top p-0">
		<a href="/resfreeform" class="navbar-brand d-flex align-items-center px-4 px-lg-5">
			<h1 class="m-0 text-primary">
				<i class="fa fa-book me-3"></i>NEEDSFULL
			</h1>
		</a>
		<button type="button" class="navbar-toggler me-4" data-bs-toggle="collapse" data-bs-target="#navbarCollapse">
			<span class="resfreespan navbar-toggler-icon"></span>
		</button>
		<div class="collapse navbar-collapse" id="navbarCollapse">
			<div class="navbar-nav ms-auto p-4 p-lg-0">
				<div class="nav-item dropdown">
					<a href="#" class="nav-link" data-bs-toggle="dropdown">프리랜서</a>
					<div class="dropdown-menu fade-down m-0">
						<a href=# class="dropdown-item">프리랜서 등록</a>
						<a href=# class="dropdown-item">프리랜서 조회</a>
					</div>
				</div>
				<div class="nav-item dropdown">
					<a href="#" class="nav-link" data-bs-toggle="dropdown">강의</a>
					<div class="dropdown-menu fade-down m-0">
						<a href=# class="dropdown-item">강의 등록</a>
						<a href=# class="dropdown-item">강의 조회</a>
					</div>
				</div>
				<a href="about.html" class="nav-item nav-link">마이페이지</a>
				<a href="courses.html" class="nav-item nav-link">고객센터</a>
				<a href=# class="nav-item nav-link">로그아웃</a>
			</div>
		</div>
	</nav>
	<!-- Navbar End -->


	<!-- Header Start -->
	<div class="container-fluid bg-primary py-5 mb-5 page-header" id="containerform">
		<div class="container py-5">
			<div class="row justify-content-center">
				<div class="col-lg-10 text-center">
					<h1 class="display-3 text-white animated slideInDown">스터디 등교</h1>
				</div>
			</div>
		</div>
	</div>
	<!-- Header End -->




    <!-- Contact Start -->
    <div class="container-xxl py-5">
        <div class="container">
            <div class="text-center wow fadeInUp" data-wow-delay="0.1s">
                <h5 class="section-title bg-white text-center text-primary px-3">스터디등교하기</h5>
                <h1 class="mb-5">나의 스터디 현황</h1>
		       <label>
		            <select id="studyStatus" class="btn-sm btn btn-primary select_cat" name="" style="float:left; height:55px; margin-bottom:30px;">
		                <option value="ing">신청중</option>
		                <option value="complete">신청완료</option>
		                <option value="next">다음기회..</option>
		            </select>
		        </label>
            </div>
            <div class="row g-4">
                <div class="col-lg-4 col-md-6 wow fadeInUp text-center" data-wow-delay="0.3s" style="margin-top:20px; margin-bottom:30px;">
                  
		                <div class="p-2 mx-auto mb-3" style="width: 400px; height: 130px; text-overflow: ellipsis; background: rgba(6, 187, 204, 0.1); font-size: 1.0em; font-family:Stylish">
							<input name="sudy_no" id="sudy_no" type="hidden" value='${study.sudy_no}'>
							<span> 초등학교 ${study.study_sname}</span><span> 5학년 ${study.study_grade}</span><br>
		                    <span> 기간 : 2022.03.06~2022.04.05 ${study.study_fdate}${study.study_fdate}</span><br>
		                    <span> 시간 : 08:00 ~ 09:00 ${study.study_ftime}${study.study_etime}</span><br>
		                    <span> 유형 : 내신${study.study_type}</span><br>
		                    <span> 목표 : 최상${study.study_target_level}</span>
                		

						
		                </div>
		                    <i class="bi bi-book-fill"><h5>니즈풀스터디${study.study_title}</h5></i>
		                <div class="testimonial-text bg-light text-center p-4">
		                    <p class="mb-0" style="text-overflow: ellipsis; font-size: 1.0em; font-family:Stylish">이 스터디는 이번 1학기 중간고사를 목표로 개설되었습니다! 최상에 도전하는 친구들이 매주 2번 모여 문제풀이를 같이 할까요. 교재는 천재교육 --문제집 혹은 메가스터디 --교재 입니다. 추후 스터디 모집 완료후 오픈카톡으로 이야기 나누어 보아요.${study.study_contents}</p>     
		                </div>
		                
		                <form><button id="attends" class="btn btn-primary w-30 py-3" onclick=attends() style="float:right; margin-left:3px;font-size: 1.0em; ">참여</button></form>
		                <form><button id="attends" class="btn btn-primary w-30 py-3" onclick=attends() style="float:right; margin-left:3px;font-size: 1.0em; ">게시글보기</button></form>
						
					</div>
		           
               
				<div class="col-lg-4 col-md-6 wow fadeInUp text-center" data-wow-delay="0.3s">
	                  <form>
			                <div class="p-2 mx-auto mb-3" style="width: 400px; height: 130px; text-overflow: ellipsis; background: rgba(6, 187, 204, 0.1); font-size: 1.0em; font-family:Stylish">
								<span> 초등학교 ${study.study_sname}</span><span> 5학년 ${study.study_grade}</span><br>
			                    <span> 기간 : 2022.03.06~2022.04.05 ${study.study_fdate}${study.study_fdate}</span><br>
			                    <span> 시간 : 08:00 ~ 09:00 ${study.study_ftime}${study.study_etime}</span><br>
			                    <span> 유형 : 내신${study.study_type}</span><br>
			                    <span> 목표 : 최상${study.study_target_level}</span>
			                </div>
			                    <i class="bi bi-book-fill"><h5>니즈풀스터디${study.study_title}</h5></i>
			                <div class="testimonial-text bg-light text-center p-4">
			                    <p class="mb-0" style="text-overflow: ellipsis; font-size: 1.0em; font-family:Stylish">이 스터디는 이번 1학기 중간고사를 목표로 개설되었습니다! 최상에 도전하는 친구들이 매주 2번 모여 문제풀이를 같이 할까요. 교재는 천재교육 --문제집 혹은 메가스터디 --교재 입니다. 추후 스터디 모집 완료후 오픈카톡으로 이야기 나누어 보아요.${study.study_contents}</p>     
			                </div>
			           </form>
	              </div>
				<div class="col-lg-4 col-md-6 wow fadeInUp text-center" data-wow-delay="0.3s">
	                  <form>
			                <div class="p-2 mx-auto mb-3" style="width: 400px; height: 130px; text-overflow: ellipsis; background: rgba(6, 187, 204, 0.1); font-size: 1.0em; font-family:Stylish">
								<span> 초등학교 ${study.study_sname}</span><span> 5학년 ${study.study_grade}</span><br>
			                    <span> 기간 : 2022.03.06~2022.04.05 ${study.study_fdate}${study.study_fdate}</span><br>
			                    <span> 시간 : 08:00 ~ 09:00 ${study.study_ftime}${study.study_etime}</span><br>
			                    <span> 유형 : 내신${study.study_type}</span><br>
			                    <span> 목표 : 최상${study.study_target_level}</span>
			                </div>
			                    <i class="bi bi-book-fill"><h5>니즈풀스터디${study.study_title}</h5></i>
			                <div class="testimonial-text bg-light text-center p-4">
			                    <p class="mb-0" style="text-overflow: ellipsis; font-size: 1.0em; font-family:Stylish">이 스터디는 이번 1학기 중간고사를 목표로 개설되었습니다! 최상에 도전하는 친구들이 매주 2번 모여 문제풀이를 같이 할까요. 교재는 천재교육 --문제집 혹은 메가스터디 --교재 입니다. 추후 스터디 모집 완료후 오픈카톡으로 이야기 나누어 보아요.${study.study_contents}</p>     
			                </div>
			           </form>
	              </div>
   				<div class="col-lg-4 col-md-6 wow fadeInUp text-center" data-wow-delay="0.3s">
	                  <form>
			                <div class="p-2 mx-auto mb-3" style="width: 400px; height: 130px; text-overflow: ellipsis; background: rgba(6, 187, 204, 0.1); font-size: 1.0em; font-family:Stylish">
								<span> 초등학교 ${study.study_sname}</span><span> 5학년 ${study.study_grade}</span><br>
			                    <span> 기간 : 2022.03.06~2022.04.05 ${study.study_fdate}${study.study_fdate}</span><br>
			                    <span> 시간 : 08:00 ~ 09:00 ${study.study_ftime}${study.study_etime}</span><br>
			                    <span> 유형 : 내신${study.study_type}</span><br>
			                    <span> 목표 : 최상${study.study_target_level}</span>
			                </div>
			                    <i class="bi bi-book-fill"><h5>니즈풀스터디${study.study_title}</h5></i>
			                <div class="testimonial-text bg-light text-center p-4">
			                    <p class="mb-0" style="text-overflow: ellipsis; font-size: 1.0em; font-family:Stylish">이 스터디는 이번 1학기 중간고사를 목표로 개설되었습니다! 최상에 도전하는 친구들이 매주 2번 모여 문제풀이를 같이 할까요. 교재는 천재교육 --문제집 혹은 메가스터디 --교재 입니다. 추후 스터디 모집 완료후 오픈카톡으로 이야기 나누어 보아요.${study.study_contents}</p>     
			                </div>
			           </form>
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

/*    $.ajax({
		type:"post",
		url:"http://localhost:8090/attends",
		/* data: {"user_id": $("#user_id").val(), "board_type" : "today", "board_no": ${todayselect.today_articleNo}}, */
		dataType:"text",
		success:function(data){
			if(data=="true"){
				$("#attends").html("참여취소");
			} else {
				$("#attends").html("참여");
			}
		},
		error:function(data, textStatus){
			alert("실패");
		}
	});  */	

   $(document).ready(function () {
	   $('#studyStatus').on('change',function(e) {
		   let status = e.currentTarget.value;
		   $.ajax
	   });

   });
   
   


   </script> 
    
</body>
</html>