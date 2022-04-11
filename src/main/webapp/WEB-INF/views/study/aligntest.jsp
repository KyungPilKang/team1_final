<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
.parent{
    width: 70%;
    margin: 10px auto;
    display: flex;
}

.first {
    border: 1px solid red;
    flex:1;
     margin: 0px 5%;
    width:20%;
    box-sizing: border-box;
}

.second{
    border: 1px solid green;
    flex:1;
    margin: 0px 5%;
    width:20%;
    box-sizing: border-box;
}

.third{
    border: 1px solid blue;
    flex:1;
    margin: 0px 5%;
    width:20%;
    box-sizing: border-box;
}
.fourth{
   border: 1px solid blue;
    flex:1;
      margin: 0px 5%;
    width:20%;
    box-sizing: border-box;
}
</style>
</head>
<body>
 <div class="parent">
        <div class="first">first</div>
        <div class="second">second</div>
        <div class="third">third</div>
        <div class="fourth">fourth</div>
    </div>
    
</body>
</html>