<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>


<section id="pageList" style="display: flex; justify-content: center;">
    <c:choose>
        <c:when test="${pageInfo.page<=1}">
            <a style="color:#06BBCC">이전</a>&nbsp;
        </c:when>
        <c:otherwise>
            <a href="/book-store?page=${pageInfo.page-1}">이전</a>&nbsp;
        </c:otherwise>
    </c:choose>
    <c:forEach var="i" begin="${pageInfo.startPage }" end="${pageInfo.endPage }">
        <c:choose>
            <c:when test="${pageInfo.page==i }"><a style="color:#06BBCC; font-weight: bold; font-size: 17px;">&nbsp;[${i }]&nbsp;</a></c:when>
            <c:otherwise>
                <a href="/book-store?page=${i}">&nbsp; ${i }&nbsp;</a>
            </c:otherwise>
        </c:choose>
    </c:forEach>
    <c:choose>
        <c:when test="${pageInfo.page>=pageInfo.maxPage }">
            <a style="color:#06BBCC">다음</a>&nbsp;
        </c:when>
        <c:otherwise>
            <a href="/book-store?page=${pageInfo.page+1}">다음</a>
        </c:otherwise>
    </c:choose>
</section>