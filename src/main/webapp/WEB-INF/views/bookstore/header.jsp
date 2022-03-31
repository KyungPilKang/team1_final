<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<%-- header css --%>
<%--<link href="${pageContext.request.contextPath}/resources/freelance/css/style.css" rel="stylesheet">--%>

<!-- Navbar Start -->
<nav class="navbar navbar-expand-lg bg-white navbar-light shadow sticky-top p-0">
    <a href="/freereg1" class="navbar-brand d-flex align-items-center px-4 px-lg-5">
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
            <a href="#" class="nav-item nav-link">마이페이지</a>
            <a href="/request" class="nav-item nav-link">고객센터</a>
            <a href=# class="nav-item nav-link">로그아웃</a>
        </div>
    </div>
</nav>
<!-- Navbar End -->


<!-- Header Start -->
<div class="container-fluid bg-primary py-5 mb-5" id="containerform">
    <div class="container py-5">
        <div class="row justify-content-center">
            <div class="col-lg-10 text-center">
                <h1 class="display-3 text-white animated slideInDown"></h1>
            </div>
        </div>
    </div>
</div>
<!-- Header End -->