<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<style>
    h1 {
        font-family: 'Stylish', sans-serif;
    }
    .navbar-light .navbar-nav .nav-link {
        color: black;
        font-weight: 500;
    }
    .navbar-light .navbar-nav .nav-link {
        margin-right: 30px;
        padding: 25px 0;
        font-size: 25px;
        text-transform: uppercase;
        outline: none;
    }
    .py-5 {
        padding-top: 3rem !important;
        padding-bottom: 3rem !important;
    }
</style>

<!-- Navbar Start -->
<nav class="navbar navbar-expand-lg bg-white navbar-light shadow sticky-top p-0">
    <a href="/freereg1" class="navbar-brand d-flex align-items-center px-4 px-lg-5">
        <h1 class="m-0 text-primary">
            <i class="fa fa-book me-3"></i>NEESFULL
        </h1>
    </a>
    <button type="button" class="navbar-toggler me-4" data-bs-toggle="collapse" data-bs-target="#navbarCollapse">
        <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarCollapse">
        <div class="navbar-nav ms-auto p-4 p-lg-0">

            <c:if test="${role == 'admin'}">
                <a href="/book-store/regform" class="nav-item nav-link" style="color:red">교재등록(관리자)</a></c:if>
            <div class="nav-item dropdown me-3">
                <a href="/studymain" class="nav-link" data-bs-toggle="dropdown">스터디</a>
                <div class="dropdown-menu fade-down m-0">
                    <a href="/studymain" style="font-size: 1.3em;" class="dropdown-item">메인페이지</a>
                    <a href="/studyReg" style="font-size: 1.3em;" class="dropdown-item">등록하기</a>
                    <a href="/studyfind" style="font-size: 1.3em;" class="dropdown-item">매칭하기</a>
                    <a href="/studyclass" style="font-size: 1.3em;" class="dropdown-item">참여현황</a>
                </div>
            </div>
            <div class="me-3">
                <a href="/book-store" class="nav-item nav-link">교재장터</a>
            </div>
            <div class="me-3">
                <a href="/mypage" class="nav-item nav-link">마이페이지</a>
            </div>
            <div class="me-3">
                <a href="/request" class="nav-item nav-link">고객센터</a>
            </div>
            <c:choose>
                <c:when test="${not empty username}">
                    <div class="me-3">
                        <a href="/logout" class="nav-item nav-link">로그아웃</a>
                    </div>
                </c:when>
                <c:otherwise>
                    <div class="me-3">
                        <a href="/loginForm" class="nav-item nav-link">로그인</a>
                    </div>
                </c:otherwise>
            </c:choose>

        </div>
    </div>
</nav>
<!-- Navbar End -->

<!-- Header Start -->
<div class="container-fluid bg-primary py-5 mb-5" id="containerform" style="background: linear-gradient(rgba(24, 29, 56, .7), rgba(24, 29, 56, .7));">
    <div class="container py-5">
        <div class="row justify-content-center">
            <div class="col-lg-10 text-center">
                <h1 class="display-3 text-white animated slideInDown"></h1>
            </div>
        </div>
    </div>
</div>
<!-- Header End -->