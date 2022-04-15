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
<%
int no = (Integer)session.getAttribute("no");
String username = (String)session.getAttribute("username"); 
String name = (String)session.getAttribute("name");
String nickname = (String)session.getAttribute("nickname");
String email = (String)session.getAttribute("email");
String phone = (String)session.getAttribute("phone");
String zipcode = (String)session.getAttribute("zipcode");
String doro_juso = (String)session.getAttribute("doro_juso");
String sangse_juso1 = (String)session.getAttribute("sangse_juso1");
String sangse_juso2 = (String)session.getAttribute("sangse_juso2");
%>
	<!-- Spinner Start -->
	<div id="spinner" class="show bg-white position-fixed translate-middle w-100 vh-100 top-50 start-50 d-flex align-items-center justify-content-center">
		<div class="spinner-border text-primary" style="width: 3rem; height: 3rem;" role="status">
			<span class="sr-only">Loading...</span>
		</div>
	</div>
	<!-- Spinner End -->

<jsp:include page="/WEB-INF/views/bookstore/header.jsp"/>


	<!-- Contact Start -->
	<div class="container-xxl py-10 mt-5">
		<div class="container">
			<div class="text-center wow fadeInUp" data-wow-delay="0.1s">
				<h1 class="mt-2 mb-3">회원 정보 수정</h1>
				<div class="row text-center col-lg-5 col-md-12 wow fadeInUp" data-wow-delay="0.5s" style="width: 55%; float: none; margin: 0 auto">
					<form name="form" id="form" action="updateMember" method="post" novalidate>
					<input type="hidden" value="<%=no %>" name="no">
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
												<div class="col-lg-3">
													<h5><%=username %></h5>
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
												<div class="col-lg-3">
													<h5><%=name %></h5>
												</div>												
											</div>
										</td>
									</tr>
									<tr>
										<th>닉네임 <span class="star">*</span>
										</th>
										<td>
											<div class="row">
												<div class="col-lg-3">
													<input type="text" id="nickname1" name="nickname1" value="<%=nickname %>" style="background-color:transparent; border:none;" class="form-control" readonly>
												</div>
												
												<div class="col-lg-2">
													<button type="button" id="nickchk" class="btn btn-primary w-100" data-bs-toggle="modal" data-bs-target="#nickmodify">수정</button>
												</div>
											</div>
											
										<!-- Modal -->
										<div class="modal fade" id="nickmodify" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
										  <div class="modal-dialog">
										    <div class="modal-content">
										      <div class="modal-header">
										        <h5 class="modal-title" id="exampleModalLabel">닉네임 수정</h5>
										        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
										      </div>
										      <div class="modal-body">
										        <div class="row">
										        	<div class="col-lg-12">
										        		<h5>사용할 닉네임을 입력해 주세요.(2~10자 사용가능)</h5>
										        	</div>
										        	<div class="col-lg-6">
														<input type="text" id="nickname" name="nickname" placeholder="한글/영문/숫자 사용 2~10자." class="form-control">
													</div>
													<div class="col-lg-3">
														<button type="button" id="nickchk" onclick="nickcheck()" class="btn btn-primary w-80">중복확인</button>
													</div>
										        </div>
										      </div>
										      <div class="modal-footer d-flex justify-content-center">
        										<button type="button" class="btn btn-secondary" data-bs-dismiss="modal">취소</button>
        										<button type="button" id="modifynickname"  data-bs-dismiss="modal" class="btn btn-primary">수정하기</button>
      										</div>
										    </div>
										  </div>
										</div>
										</td>
									</tr>
									<tr>
										<th>이메일 <span class="star">*</span>
										</th>
										<td>
											<div class="row">
												<div class="col-lg-6">
													<input type="text" id="email" name="email" value="<%=email %>" style="background-color:transparent; border:none;" class="form-control" readonly>
												</div>
												
												<div class="col-lg-2">
													<button type="button" class="btn btn-primary w-100" data-bs-toggle="modal" data-bs-target="#emailmodify">수정</button>
												</div>
											</div>
														<!-- Modal -->
												<div class="modal fade" id="emailmodify" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
  													<div class="modal-dialog">
    													<div class="modal-content">
      														<div class="modal-header">
        														<h5 class="modal-title" id="exampleModalLabel">이메일 수정</h5>
        														<button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
      														</div>
      														<div class="modal-body">
      															<div class="row g-0">
      																<div class="col-lg-8">
       																	<h5>수정할 이메일 주소를 입력해 주세요.</h5>
       																</div>
       																<div class="col-lg-4 mb-3">
        																<button type="button" id="newemailchk" onclick="emailChk()" class="btn btn-primary">중복 확인</button>
       																</div>
																	<div class="col-lg 5 g-0">
																		<input type="email" id="email1"  class="form-control">
																	</div>
																	<div class="col-lg 4 input-group g-0">
																		<span class="input-group-text">@</span>
																		<input type="email" id="email2" name="email2" class="form-control">
																	</div>
																	<div class="col-lg 3 g-0">
																		<select class="form-select" aria-label=".form-select-sm example" onchange="selectEmail(this)">
																			<option value="=============">=============</option>
																			<option value="naver.com">naver.com</option>
																			<option value="daum.net">daum.net</option>
																			<option value="gmail.com">gmail.com</option>
																			<option value="1">직접입력</option>
																		</select>
																	</div>
																</div>
      														</div>
     													 	<div class="modal-footer d-flex justify-content-center">
        														<button type="button" class="btn btn-secondary" data-bs-dismiss="modal">취소</button>
        														<button type="button" id="modifyemail"  data-bs-dismiss="modal" class="btn btn-primary">수정하기</button>
      														</div>
												    </div>
												  </div>
												</div>
										</td>
									</tr>
									<tr>
										<th>휴대전화 <span class="star">*</span>
										</th>
										<td>
											<div class="row">
												<div class="col-lg-4">
													<input type="text" id="oldphone" name="phone" maxlength="11" size="11" value="<%=phone %>" style="background-color:transparent; border:none;" class="form-control old" readonly>
												</div>
												
												<div class="col-lg-2">
													<button type="button" class="btn btn-primary w-100" data-bs-toggle="modal" data-bs-target="#phonemodify">수정</button>
												</div>
													<!-- Modal -->
												<div class="modal fade" id="phonemodify" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1" aria-labelledby="staticBackdropLabel" aria-hidden="true">
  													<div class="modal-dialog">
    													<div class="modal-content">
      														<div class="modal-header">
        														<h5 class="modal-title">휴대폰 수정하기</h5>
        														<button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
      														</div>
      														<div class="modal-body">
      															<div class="row">
      																<div class="col-lg-8">
      																	<h5 class="modal-title">수정할 휴대전화 번호를 입력해 주세요.</h5>
      																</div>
																	<div class="col-lg-7">
																		<input type="text" id="phone" maxlength="11" size="11" placeholder="숫자만 입력하세요." class="form-control">
																	</div>
																	<div class="col-lg-4">
																		<button type="button" id="reqnum" class="btn btn-primary w-90">인증번호 요청</button>
																	</div>
																</div>
																<div class="row" id="confirm">
																	<div class="col-lg-7 pt-2">
																		<input type="text" id="inputnum" name="inputnum" maxlength="6" class="form-control">
																	</div>
																	<div class="col-lg-4 pt-2">
																		<button type="button" id="connum" class="btn btn-primary w-90" style="display: inline;">인증번호 확인</button>
																	</div>
      															</div>
      														</div>
      													<div class="modal-footer d-flex justify-content-center">
        															<button type="button" class="btn btn-secondary" data-bs-dismiss="modal">취소</button>
        															<button type="button" class="btn btn-primary" data-bs-dismiss="modal" id="modifyphone">수정</button>
      													</div>
  													</div>
												</div>
											</div>
										 </div>
										</td>
									</tr>
									<tr>
										<th>주소 <span class="star">*</span>
										</th>
										<td>
											<div class="row">
												<div class="col-lg-7">
													<input type="text" id="zipcode" name="zipcode" value="<%=zipcode %>" maxlength="6" readonly="" class="form-control">
												</div>
												<div class="col-lg-3">
													<button type="button" onclick="goPopup()" class="btn btn-primary">주소검색</button>
												</div>
												<div class="col-lg-10 pt-2">
													<input type="text" id="doro_juso" name="doro_juso" value="<%=doro_juso %>" readonly="" class="form-control">
												</div>
												<div class="col-lg-2"></div>
												<div class="col-lg-6 pt-2">
													<input type="text" id="sangsejuso1" name="sangse_juso1" value="<%=sangse_juso1%>" readonly="" class="form-control">
												</div>
												<div class="col-lg-6 pt-2">
													<input type="text" id="sangsejuso2" name="sangse_juso2" value="<%=sangse_juso2%>" class="form-control">
												</div>
												<div id=warning class="col-lg-10 pt-2">
													<span id=warning class="input-group-addon text-left">* 주소는 상세주소까지 정확하게 입력해주세요.주소가 정확하지 않을 경우, 배송이 원활하지 않을 수 있습니다.</span>
												</div>
												<input type="hidden" name="sangse_juso" id="sangse_juso">
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
							<button id="modify" onclick="modify()" class="btn btn-primary w-100 py-3" type="button">수정하기</button>
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
	<script src="${pageContext.request.contextPath}/resources/login/js/modifyForm.js"></script>


</body>

</html>