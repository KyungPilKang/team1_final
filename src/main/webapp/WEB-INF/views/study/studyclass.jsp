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
	<jsp:include page="/WEB-INF/views/bookstore/header.jsp"/>
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
                <h3 class="section-title bg-white text-center text-primary px-3">나의 스터디 현황</h3>
                <h1 class="mb-5 mt-2">스터디 신청 상태를 확인하세요</h1>
		       <label>
		            <select id="studyStatus" class="btn-sm btn btn-primary select_cat"  style="float:left; height:55px; margin-bottom:30px;">
		                <option value="team_apply">신청중</option>
		                <option value="team_accept">신청완료</option>
		                <option value="team_reject">다음기회..</option>
		            </select>
		        </label>
            </div>
            <div class="row g-4">
            	<c:forEach var="study" items="${studyList}">	              
                <div class="col-lg-4 col-md-6 wow fadeInUp text-center" data-wow-delay="0.3s" style="margin-top:20px; margin-bottom:30px;">
 				           <div class="p-2 mx-auto mb-3" style="width: 400px; height: 130px; text-overflow: ellipsis; background: rgba(6, 187, 204, 0.1); font-size: 1.0em; font-family:Stylish">
							<input id="study_no" name="study_no" type="hidden" value='${study.study_no}'>
									<span> ${study.study_sname}</span><span>${study.study_grade}</span><br>
				                    <span> 기간 : ${study.study_fdate} ~ ${study.study_fdate}</span><br>
				                    <span> 시간 : ${study.study_ftime} ~ ${study.study_etime}</span><br>
				                    <span> 유형 : ${study.study_type}</span><br>
				                    <span> 목표 : ${study.study_target_level}</span>
			                </div>
			                    <i class="bi bi-book-fill"><h5>니즈풀스터디${study.study_title}</h5></i>

			               
			               <a href="/studydetail1/${study.study_no}"> 
			               		<button id="showdetail" class="btn btn-outline-primary w-30 py-2 showdetail" style="float:right; font-size: 1.0em;">상세보기</button>
			              </a> 
				</div>
		        </c:forEach> 	

            </div>
            <div style="height:500px;">
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
   $(document).ready(function () {
	   $("#studyStatus").val(`${status}`);
	   
	   $('#studyStatus').on('change',function(e) {
		   let status = e.currentTarget.value;
		   //alert(status);
		   //swal("신청접수", status+"상태입니다.",'success');
		   window.location.href="/studyclass?status="+status;
	   });
	   
/* 	   $(".showdetail").on('click',function(e) {
		   let study_no = this.id.substring(1,6);
		   console.log("번호"+study_no );
		   window.location.href="/studyclass?status="+study_no;
	   }); */
	   
/* 	   $('#attend').on('click',function(e){
		   let no = 0; // 0이면 미참여 상태
		   if ($('#attend').text() == "참여취소") {
			   no = 1;
		   }
			$.ajax({
		    	type:"post",
		        dataType:"text",
		        async:false,
		        url:"http://localhost:8090/attend",
		        data:{"no": no},
		        success: function(data, textStatus){
		        	console.log("1");
		        	if(data=='false') {
		        		alert("참여가 완료되었습니다.");
		        		$("#attend").html("참여취소");
		        	} else{
		        		alert("참여가 취소되었습니다.");
		        		$("#attend").html("참여");
		        	}
		        },
		        error:function(data, textStatus){
		        	alert("실패");
		        }
	        });
		});
 */
   });
   


   </script> 
    
</body>
</html>