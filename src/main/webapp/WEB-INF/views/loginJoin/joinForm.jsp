<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
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
<link href="${pageContext.request.contextPath}/resources/asset/needsfull.ico" rel="icon">

<!-- Google Web Fonts -->
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Stylish&display=swap" rel="stylesheet">
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
<link href="${pageContext.request.contextPath}/resources/login/css/joinForm.css" rel="stylesheet">

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
		<a href="/freereg2" class="navbar-brand d-flex align-items-center px-4 px-lg-5">
			<h1 class="m-0 text-primary">
				<i class="fa fa-book me-3"></i>NEEDSFULL
			</h1>
		</a>
		<button type="button" class="navbar-toggler me-4" data-bs-toggle="collapse" data-bs-target="#navbarCollapse">
			<span class="navbar-toggler-icon"></span>
		</button>
	</nav>
	<!-- Navbar End -->

	<!-- Header Start -->
	<!-- Header End -->

	<!-- Contact Start -->
	<div class="container-xxl py-10 mt-5">
		<div class="container">
			<div class="text-center wow fadeInUp" data-wow-delay="0.1s">
				<h1 class="mt-2 mb-3">회원 가입</h1>
				<div class="row text-center col-lg-5 col-md-12 wow fadeInUp" data-wow-delay="0.5s" style="width: 60%; float: none; margin: 0 auto">
					<form name="form"  action="join" method="post" novalidate>
						<div class="row g-3">
							<table id="table1" class="table">
								<colgroup>
									<col width="20%">
								</colgroup>
								<tbody>
									<tr class="trborder">
										<th>아이디 <span class="star">*</span>
										</th>
										<td>
											<div class="row">
												<div class="col-lg-4">
													<input type="text" id="username" name="username" placeholder="6~12자리 영문,숫자" class="form-control">
												</div>
												<div class="col-lg-3"> 
													<button type="button"  onclick="usernameChk()" class="btn btn-primary pl-1 pr-1 w-80">중복확인</button>
												</div>
											</div>
										</td>

									</tr>
									<tr>
										<th>비밀번호 <span class="star">*</span>
										</th>
										<td>
										<div class="row g-0">
											<div class="col-6 g-0">
												<input type="password" id="password1" name="password" placeholder="8~16자리 영문/숫자/특수문자 중 2가지" class="form-control" required oninput = "pwcheck()">
											</div>
											<div class="col-6 g-0">
												<input type="text" id="pw_ok" class="form-control" style="background-color:transparent; border:none;" disabled>
											</div>
										</div>
										</td>
									</tr>
									<tr>
										<th>비밀번호 확인 <span class="star">*</span>
										</th>
										<td>
										<div class="row g-0">
											<div class="col-6 g-0">
												<input type="password" id="password2" placeholder="다시한번 입력해 주세요." class="form-control" required oninput = "pwcheck2()">
											</div>
											<div class="col-6 g-0">
												<input type="text" id="pw_ok2"  class="form-control" style="background-color:transparent; border:none;" disabled>
											</div>
										</div>
										</td>
									</tr>
									<tr>
										<th>이름 <span class="star">*</span>
										</th>
										<td>
										<div class="row">
											<div class="col-5">
												<input type="text" id="name" name="name" placeholder="한글 이름을 입력하세요."  class="form-control" required oninput = "namecheck()">
											</div>
											<div class="col-5">
												<input type="text" id="namec"  class="form-control" style="background-color:transparent; border:none;" disabled>
											</div>
										</div>
										</td>
									</tr>
									<tr>
										<th>생년월일 <span class="star">*</span>
										</th>
										<td>
											<div class="col-5">
												<input type="date" id="birth" name="birth" class="form-control">
											</div>
										</td>
									</tr>
									<tr>
										<th>구분 <span class="star">*</span>
										</th>
										<td>
											<div class="row">
												<div class="col-lg-2"></div>
												<div class="col-lg-3">
													<label class="radio"> <input type="radio" id="type" name="type" value="S1">초등학생
													</label>
												</div>
												<div class="col-lg-3">
													<label class="radio"> <input type="radio" id="type" name="type" value="S2">중학생
													</label>
												</div>
											</div>
										</td>
									</tr>
									<tr>
										<th>닉네임 <span class="star">*</span>
										</th>
										<td>
											<div class="row">
												<div class="col-lg-5">
													<input type="text" id="nickname" name="nickname" placeholder="한글/영문/숫자 사용 2~10자." class="form-control">
												</div>
												<div class="col-lg-3">
													<button type="button" onclick="nickcheck()" class="btn btn-primary w-80">중복확인</button>
												</div>
											</div>
										</td>
									</tr>
									<tr>
										<th>이메일 <span class="star">*</span>
										</th>
										<td>
											<div class="row g-0">
												<div class="col-lg-3 g-0">
													<input type="text" id="email1" name="email1" class="form-control">
												</div>
												<div class="col-lg-1 mr-0 pr-0 g-0">
												<span class="input-group-text">@</span>
												</div>
												<div class="col-lg-3 ml-0 pl-0 g-0">
													<input type="text" id="email2" name="email2" readonly class="form-control">
												</div>
												<div class="col-lg-3 g-0">
													<select class="form-select" aria-label=".form-select-sm example" onchange="selectEmail(this)">
														<option value="=============">=============</option>
														<option value="naver.com">naver.com</option>
														<option value="daum.net">daum.net</option>
														<option value="gmail.com">gmail.com</option>
														<option value="1">직접입력</option>
													</select>
												</div>
												<div class="col-lg-2" >
													<button type="button" id="emailchk" onclick="emailChk()" class="btn btn-primary w-80">중복확인</button>
												</div>
											</div>
											<input type="hidden"name="email" id="email">
										</td>
									</tr>
									<tr>
										<th>휴대전화 <span class="star">*</span>
										</th>
										<td>
											<div class="row">
												<div class="col-lg-5">
													<input type="text" id="phone" name="phone" maxlength="11" size="11" placeholder="숫자만 입력하세요." class="form-control">
												</div>
												<div class="col-lg-3">
													<button type="button" id="reqnum" class="btn btn-primary">인증번호 요청</button>
												</div>
											</div>
											<div class="row" id="confirm">
												<div class="col-lg-5 pt-2">
													<input type="text" id="inputnum" name="inputnum" maxlength="6" class="form-control">
												</div>
												<div class="col-lg-3 pt-2">
													<button type="button" id="connum" class="btn btn-primary" style="display: inline;">인증번호 확인</button>
												</div>
											</div>
										</td>
									</tr>
									<tr>
										<th>주소 <span class="star">*</span>
										</th>
										<td>
											<div class="row">
												<div class="col-lg-5">
													<input type="text" id="zipcode" name="zipcode" maxlength="6" readonly="" class="form-control">
												</div>
												<div class="col-lg-3">
													<button type="button" onclick="goPopup()" class="btn btn-primary">주소검색</button>
												</div>
												<div class="col-lg-8 pt-2">
													<input type="text" id="doro_juso" name="doro_juso" readonly="" class="form-control">
												</div>
												<div class="col-lg-4"></div>
												<div class="col-lg-4 pt-2">
													<input type="text" id="sangsejuso1" name="sangse_juso1" readonly="" class="form-control">
												</div>
												<div class="col-lg-4 pt-2">
													<input type="text" id="sangsejuso2" name="sangse_juso2" value="" class="form-control">
												</div>
												<div id=warning class="col-lg-8 pt-2">
													<span id=warning class="input-group-addon text-left">* 주소는 상세주소까지 정확하게 입력해주세요.주소가 정확하지 않을 경우, 배송이 원활하지 않을 수 있습니다.</span>
												</div>
											
											</div>
										</td>
									</tr>
								</tbody>
							</table>
						</div>
					</form>
					<div class="row pt-3 d-flex justify-content-center ">
						<div class="col-3">
							<button class="btn btn-primary w-100 py-3" onclick="join()">회원가입</button>
						</div>
						<div class="col-3">
							<a href="/loginForm" class="btn border w-100 py-3">취소하기</a>
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
	<script src="${pageContext.request.contextPath}/resources/login/js/joinForm.js"></script>





</body>

</html>