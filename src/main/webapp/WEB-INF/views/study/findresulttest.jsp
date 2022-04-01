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


</head>
<body>

	
	<!-- Header Start -->
	<div class="container-fluid bg-primary py-5 mb-5 page-header">
		<div class="container py-5">
			<div class="row justify-content-center">
				<div class="col-lg-10 text-center">
					<h1 class="display-3 text-white animated slideInDown">스터디 매칭</h1>
				</div>
			</div>
		</div>
	</div>
	<!-- Header End -->
	
	
	<!-- Content Start -->
	
	
	
	
		<div class="container">
		<p>검색결과페이지</p>
		<div class="row g-4">
	<%-- <c:forEach var="study" items="${studylist}"> --%>
			<div class="col-lg-4 col-md-6 wow fadeInUp">
        		$[study.name0]
        	</div>
        	
        	<div class="col-lg-4 col-md-6 wow fadeInUp">
        		$[study.name1]
        	</div>
        	
        	<div class="col-lg-4 col-md-6 wow fadeInUp">
        		$[study.name2]
        	</div>
    <%-- </c:forEach> --%>
    	</div>
    	
    	<div class="row g-4">
	<%-- <c:forEach var="study" items="${studylist}"> --%>
        	<div class="col-lg-4 col-md-6 wow fadeInUp">
        		$[study.name3]
        	</div>
        	
        	<div class="col-lg-4 col-md-6 wow fadeInUp">
        		$[study.name4]
        	</div>
        	
        	<div class="col-lg-4 col-md-6 wow fadeInUp">
        		$[study.name5]
        	</div>
    <%-- </c:forEach> --%>
    	</div>
    	
    	<div class="row g-4">
	<%-- <c:forEach var="study" items="${studylist}"> --%>
        	<div class="col-lg-4 col-md-6 wow fadeInUp">
        		$[study.name6]
        	</div>
        	
        	<div class="col-lg-4 col-md-6 wow fadeInUp">
        		$[study.name7]
        	</div>
        	
        	<div class="col-lg-4 col-md-6 wow fadeInUp">
        		$[study.name8]
        	</div>
    <%-- </c:forEach> --%>
    	</div>
    	</div>
 
    
        
	
	
	
	
	
	<!-- Content End -->
	


</body>
</html>