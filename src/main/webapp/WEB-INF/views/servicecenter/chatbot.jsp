<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>NEEDSFUL 챗봇</title>
    <meta content="width=device-width, initial-scale=1.0" name="viewport">
    <meta content="" name="keywords">
    <meta content="" name="description">

    <!-- Favicon -->
    <link href="${pageContext.request.contextPath}/resources/asset/needsfull.ico" rel="icon">

    <%-- chatbot css --%>
    <link href="${pageContext.request.contextPath}/resources/servicecenter/css/chatbot.css" rel="stylesheet">
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/css/all.min.css" rel="stylesheet">


</head>
<body>
<!-- chat header -->
<div id="chat-header">
    <div class="header">
        <%--        <img src="${pageContext.request.contextPath}/resources/servicecenter/img/logo.png" style="margin-top: 15px" alt="챗봇">--%>
    </div>
</div>

<!-- chat body -->
<div id="chat-body-bg">
    <div id="chat-body">
        <ol class="chat">
            <li class="other">
                <div class="avatar"></div>
                <div class="msg"><p>안녕하세요 고객님!<br>NEEDSFUL 고객센터 챗봇입니다. <br>무엇을 도와드릴까요?</p></div>
                <div class="ti2">
                    <time>오전 10:47</time>
                </div>
            </li>
            <li class="self">
                <div class="msg">
                    <time>오전 10:47</time>
                    <p>안녕</p></div>
            </li>
            <li class="other">
                <div class="avatar"></div>
                <div class="msg"><p>안녕하세요 고객님!<br>저는 NEEDSFUL 고객센터 챗봇입니다.<br>오늘도 이렇게 저를 찾아주셔서 감사해요.<br>즐거운 하루 보내세요.</p>
                </div>
                <div class="ti">
                    <time>오전 10:47</time>
                </div>
            </li>
        </ol>
    </div>
</div>

<!-- chat bottom input -->
<div id="chat-footer">
    <a href="/request/chatbot" class="btn-add">
        <i class="fa fa-solid fa-house"></i>
    </a>
    <div class="chat-msg-input">
        <input type="text" placeholder="메시지를 입력하세요." size="30" class="inputText">
    </div>
    <a href="#" class="send">
        <i class="fa-solid fa-angles-up"></i>
    </a>
</div>
<div id="dimm" style="display:none;"></div>


</body>
</html>