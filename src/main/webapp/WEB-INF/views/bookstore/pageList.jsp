<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>


<section id="pageList" style="display: flex; justify-content: center;">
    <c:choose>
        <c:when test="${pageInfo.page<=1}">
            [이전]&nbsp;
        </c:when>
        <c:otherwise>
            <a href="/book-store?page=${pageInfo.page-1}">[이전]</a>&nbsp;
        </c:otherwise>
    </c:choose>
    <c:forEach var="i" begin="${pageInfo.startPage }" end="${pageInfo.endPage }">
        <c:choose>
            <c:when test="${pageInfo.page==i }">[${i }]</c:when>
            <c:otherwise>
                <a href="/book-store?page=${i}">[${i }]</a>
            </c:otherwise>
        </c:choose>
    </c:forEach>
    <c:choose>
        <c:when test="${pageInfo.page>=pageInfo.maxPage }">
            [다음]
        </c:when>
        <c:otherwise>
            <a href="/book-store?page=${pageInfo.page+1}">[다음]</a>
        </c:otherwise>
    </c:choose>
</section>