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

	<!-- Contact Start -->
	<div class="container-xxl py-10 mt-5">
		<div class="container">
			<div class="text-center wow fadeInUp" data-wow-delay="0.1s">
				<h1 class="mt-2 mb-3">회원 정보 수정</h1>
				<div class="row text-center col-lg-5 col-md-12 wow fadeInUp" data-wow-delay="0.5s" style="width: 55%; float: none; margin: 0 auto">
					<form name="form" id="form" method="post">
						<div class="row g-3">
							<table id="table1" class="table">
								<colgroup>
									<col width="27%">
								</colgroup>
								<tbody>
									<tr class="trborder">
										<th>아이디 <span class="star">*</span>
										</th>
										<td>
											<div class="row">
												<div class="col-lg-1">
													<h5>${username}</h5>
												</div>												
											</div>
										</td>

									</tr>
									<tr>
										<th>비밀번호 <span class="star">*</span>
										</th>
										<td>
											<div class="col-lg-3">
													<button type="button" id="modifypassword" class="btn btn-primary" onclick="location.href='password'">비밀번호 변경</button>
											</div>
										</td>
									</tr>
									<tr>
										<th>이름 <span class="star">*</span>
										</th>
										<td>
											<div class="row">
												<div class="col-lg-1">
													<h5>${name}</h5>
												</div>												
											</div>
										</td>
									</tr>
									<tr>
										<th>닉네임 <span class="star">*</span>
										</th>
										<td>
											<div class="row">
												<div class="col-lg-1">
													<h5>${nickname}</h5>
												</div>
												<div class="col-lg-3"></div>
												<div class="col-lg-2">
													<button type="button" id="nickchk" class="btn btn-primary w-100">수정</button>
												</div>
												<div class="col-lg-5 ml-0 pl-0">
													<span style="color:red;" class="input-group-addon text-left">*한글/영문/숫자 사용 2~10자</span>
												</div>
											</div>
										</td>
									</tr>
									<tr>
										<th>이메일 <span class="star">*</span>
										</th>
										<td>
											<div class="row">
												<div class="col-lg-1">
													<h5>${email}@${email2}</h5>
												</div>
												<div class="col-lg-3"></div>
												<div class="col-lg-2">
													<button type="button" id="nickchk" class="btn btn-primary w-100">수정</button>
												</div>
											</div>
										</td>
									</tr>
									<tr>
										<th>휴대전화 <span class="star">*</span>
										</th>
										<td>
											<div class="row">
												<div class="col-lg-1">
													<h5>${phone}</h5>
												</div>
												<div class="col-lg-3"></div>
												<div class="col-lg-2">
													<button type="button" id="nickchk" class="btn btn-primary w-100">수정</button>
												</div>
											</div>
										</td>
									</tr>
									<tr>
										<th>주소 <span class="star">*</span>
										</th>
										<td>
											<div class="row">
												<div class="col-lg-8">
													<input type="text" id="zipcode" name="zipcode" maxlength="6" value="${zipcode }" readonly class="form-control">
												</div>
												<div class="col-lg-3">
													<button type="button" onclick="goPopup()" class="btn btn-primary w-90">주소검색</button>
												</div>
												<div class="col-lg-12 pt-2">
													<input type="text" id="dorojuso" name="dorojuso" readonly value="${dorojuso }" class="form-control">
												</div>
												<div class="col-lg-6 pt-2">
													<input type="text" id="sangsejuso1" name="sangsejuso1" readonly value="${sangsejuso1 }" class="form-control">
												</div>
												<div class="col-lg-6 pt-2">
													<input type="text" id="sangsejuso2" name="sangsejuso2" value="${sangsejuso2 }" class="form-control">
												</div>
												<div id=warning class="col-lg 6 pt-2">
													<span id=warning class="input-group-addon text-left">* 주소는 상세주소까지 정확하게 입력해주세요.주소가 정확하지 않을 경우, 배송이 원활하지 않을 수 있습니다.</span>
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
							<button id="join" class="btn btn-primary w-100 py-3" type="submit">수정하기</button>
						</div>
						<div class="col-5 ">
							<a href="home" class="btn border w-100 py-3">취소하기</a>
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