<%@ page language="java" contentType="text/html; charset=UTF-8"
		 pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">

<head>
	<meta charset="utf-8">
	<title>eLEARNING - eLearning HTML Template</title>
	<meta content="width=device-width, initial-scale=1.0" name="viewport">
	<meta content="" name="keywords">
	<meta content="" name="description">

	<!-- Favicon -->
	<link href="#${pageContext.request.contextPath}/resources/login/img/favicon.ico" rel="icon">

	<!-- Google Web Fonts -->
	<link rel="preconnect" href="https://fonts.googleapis.com">
	<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
	<link href="https://fonts.googleapis.com/css2?family=Heebo:wght@400;500;600&family=Nunito:wght@600;700;800&display=swap" rel="stylesheet">

	<!-- Icon Font Stylesheet -->
	<link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.10.0/css/all.min.css" rel="stylesheet">
	<link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.4.1/font/bootstrap-icons.css" rel="stylesheet">

	<!-- Libraries Stylesheet -->
	<link href="${pageContext.request.contextPath}/resources/login/lib/animate/animate.min.css" rel="stylesheet">
	<link href="${pageContext.request.contextPath}/resources/login/lib/owlcarousel/assets/owl.carousel.min.css" rel="stylesheet">

	<!-- Customized Bootstrap Stylesheet -->
	<link href="${pageContext.request.contextPath}/resources/login/css/bootstrap.min.css" rel="stylesheet">

	<!-- Template Stylesheet -->
	<link href="${pageContext.request.contextPath}/resources/login/css/style.css" rel="stylesheet">
	<style>
		.table#table1 .trborder th, .table#table1 .trborder td{
			border-top: 1px solid #dee2e6;
		}

		th {
			text-align: left;
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
	<a href="home" class="navbar-brand d-flex align-items-center px-4 px-lg-5">
		<h2 class="m-0 text-primary"><i class="fa fa-book me-3"></i>eLEARNING</h2>
	</a>
	<button type="button" class="navbar-toggler me-4" data-bs-toggle="collapse" data-bs-target="#navbarCollapse">
		<span class="navbar-toggler-icon"></span>
	</button>
	<div class="collapse navbar-collapse" id="navbarCollapse">
		<div class="navbar-nav ms-auto p-4 p-lg-0">
		</div>
		<a href="home" class="btn btn-primary py-4 px-lg-5 d-none d-lg-block">Home<i class="fa fa-arrow-right ms-3"></i></a>
	</div>
</nav>
<!-- Navbar End -->

<!-- Header Start -->
<!-- Header End -->

<!-- Contact Start -->
<div class="container-xxl py-10 mt-5">
	<div class="container">
		<div class="text-center wow fadeInUp" data-wow-delay="0.1s">
			<h1 class="mt-5 mb-5">회원 가입</h1>
			<div class="row text-center col-lg-5 col-md-12 wow fadeInUp" data-wow-delay="0.5s" style="width: 55%; float:none; margin:0 auto">
				<form name="form" id="form" method="post">
					<div class="row g-3" >
						<table id="table1" class="table">
							<colgroup>
								<col width="23%">
							</colgroup>
							<tbody>
							<tr class="trborder">
								<th>
									아이디
									<span class="star">*</span>
								</th>
								<td>
									<div class="col-12">
										<input type="text" id="username" name="username" placeholder="6~12자리 영문,숫자만 가능합니다." class="form-control">
									</div>
								</td>

							</tr>
							<tr>
								<th>
									비밀번호
									<span class="star">*</span>
								</th>
								<td>
									<div class="col-12">
										<input type="password" id="password" name="password" placeholder="8~16자리 영문/숫자/특수문자 중 2가지 이상 조합." class="form-control">
									</div>
								</td>
							</tr>
							<tr>
								<th>
									비밀번호 확인
									<span class="star">*</span>
								</th>
								<td>
									<div class="col-12">
										<input type="password" id="password" name="password" placeholder="다시한번 입력해 주세요." class="form-control">
									</div>
								</td>
							</tr>
							<tr>
								<th>
									이름
									<span class="star">*</span>
								</th>
								<td>
									<div class="col-12">
										<input type="text" id="name" name="name" placeholder="한글 이름을 입력하세요." class="form-control">
									</div>
								</td>
							</tr>
							<tr>
								<th>
									휴대전화
									<span class="star">*</span>
								</th>
								<td>
									<div class="row">
										<div class="col-lg-8">
											<input type="text" name="phone" maxlength="11" size="11" class="form-control">
										</div>
										<div class="col-lg-4">
											<a href="" onclick="" >인증번호발송</a>
										</div>
									</div>
									<div class="row">
										<div class="col-lg-6 pt-2">
											<input type="text" name="confirmnumber" maxlength="6" class="form-control">
										</div>
										<div class="col-lg-6 pt-2">

										</div>
									</div>
								</td>
							</tr>
							<tr>
								<th>
									주소
									<span class="star">*</span>
								</th>
								<td>
									<div class="row">
										<div class="col-lg-8">
											<input type="text" id="zipcode" name="zipcode" maxlength="6" value="" readonly="" class="form-control">
										</div>
										<div class="col-lg-4">
											<a href="javascript:void(0);" onclick="goPopup(this)">주소검색</a>
										</div>
										<div class="col-lg-12 pt-2">
											<input type="text" id="dorojuso"name="dorojuso" value="" readonly="" class="form-control">
										</div>
										<div class="col-lg-6 pt-2">
											<input type="text" id="sangsejuso1" name="sangsejuso1" readonly="" value=""  class="form-control">
										</div>
										<div class="col-lg-6 pt-2">
											<input type="text" id="sangsejuso2" name="sangsejuso2"  value=""  class="form-control">
										</div>
										<div class="col-lg 6 pt-2">
											<span class="input-group-addon text-left">* 주소는 상세주소까지 정확하게 입력해주세요.<br>주소가 정확하지 않을 경우, 배송이 원활하지 않을 수 있습니다.</span>
										</div>
									</div>
								</td>
							</tr>
							<tr>
								<th>
									생년월일
									<span class="star">*</span>
								</th>
								<td>
									<div class="col-12">
										<input type="date" id="birthDate" name="birth" class="form-control">
									</div>
								</td>
							</tr>
							<tr>
								<th>
									닉네임
									<span class="star">*</span>
								</th>
								<td>
									<div class="col-12">
										<input type="text" id="nickname" name="nickname" placeholder="한글/영문/숫자 사용 2~10자." class="form-control">
									</div>
								</td>
							</tr>
							<tr>
								<th>
									이메일
									<span class="star">*</span>
								</th>
								<td>
									<div class="row">
										<div class="col-lg 4 pr-0 mr-0">
											<input type="email" id="email" name="email" class="form-control">
										</div>
										<div class="col-lg 1 pr-0 pl-0 ml-0 mr-0">
											<span>@</span>
										</div>
										<div class="col-lg 3 pl-0">
											<input type="email" id="email" name="email2" class="form-control">
										</div>
										<div class="col-lg 3">
											<select class="form-select" aria-label=".form-select-sm example" onchange="selectEmail(this)">
												<option value="=============">=============</option>
												<option value="naver.com">naver.com</option>
												<option value="daum.net">daum.net</option>
												<option value="gmail.com">gmail.com</option>
												<option value="1">직접입력</option>
											</select>
										</div>
									</div>
								</td>
							</tr>
							<tr>
								<th>
									성별
									<span class="star">*</span>
								</th>
								<td>
									<div class="row">
										<div class="col-lg-3">
											<label class="radio-inline">
												<input type="radio" id="femaleRadio" name="gender" value="F">여자
											</label>
										</div>
										<div class="col-lg-3">
											<label class="radio-inline">
												<input type="radio" id="maleRadio" name="gender" value="M">남자
											</label>
										</div>
									</div>
								</td>
							</tr>
							</tbody>
						</table>
					</div>
				</form>
				<div class="row pt-3 ">
					<div class="col-1"></div>
					<div class="col-5 ">
						<button class="btn btn-primary w-100 py-3" type="submit">회원가입</button>
					</div>
					<div class="col-5 ">
						<a href="joinForm" class="btn border w-100 py-3">취소하기</a>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>

<!-- Contact End -->

<!-- JavaScript Libraries -->
<script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/js/bootstrap.bundle.min.js"></script>
<script src="${pageContext.request.contextPath}/resources/login/lib/wow/wow.min.js"></script>
<script src="${pageContext.request.contextPath}/resources/login/lib/easing/easing.min.js"></script>
<script src="${pageContext.request.contextPath}/resources/login/lib/waypoints/waypoints.min.js"></script>
<script src="${pageContext.request.contextPath}/resources/login/lib/owlcarousel/owl.carousel.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/sweetalert2@10"></script>
<!-- Template Javascript -->
<script src="${pageContext.request.contextPath}/resources/login/js/main.js"></script>
<script>
	function selectEmail(ele){
		var $ele = $(ele);
		var $email2 = $('input[name=email2]');
		// '1'인 경우 직접입력
		if($ele.val() == "1"){
			$email2.attr('readonly', false);
			$email2.val('');
		} else {
			$email2.attr('readonly', true);
			$email2.val($ele.val());
		}
	}

	function goPopup(){
		var pop = window.open("juso","pop","width=570,height=420, scrollbars=yes, resizable=yes");
	}
	function jusoCallBack(roadFullAddr,roadAddrPart1,addrDetail,roadAddrPart2,engAddr, jibunAddr, zipNo, admCd, rnMgtSn, bdMgtSn,detBdNmList,bdNm,bdKdcd,siNm,sggNm,emdNm,liNm,rn,udrtYn,buldMnnm,buldSlno,mtYn,lnbrMnnm,lnbrSlno,emdNo){
		// 팝업페이지에서 주소입력한 정보를 받아서, 현 페이지에 정보를 등록합니다.

		document.form.dorojuso.value = roadAddrPart1;
		document.form.sangsejuso1.value=roadAddrPart2;
		document.form.sangsejuso2.value = addrDetail;
		document.form.zipcode.value = zipNo;
	}
</script>

</body>

</html>