<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/timepicker/1.3.5/jquery.timepicker.min.js"></script>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/timepicker/1.3.5/jquery.timepicker.min.css">
 
<title>Insert title here</title>
</head>
<body>

<label for="time">시간 선택</label>
<input type="text" id="time1" name="time1" class="form-control" style="width:200px;">
 <input type="text" id="time2" name="time2" class="form-control" style="width:200px;">

<script>
$(function() {
    $("#time1").timepicker({
        timeFormat: 'h:mm p',
        interval: 10,
        minTime: '8',
        maxTime: '11:59pm',
        defaultTime: '9',
        startTime: '08:00',
        dynamic: false,
        dropdown: true,
        scrollbar: true        
    });
    
    $("#time2").timepicker({
        timeFormat: 'h:mm p',
        interval: 10,
        minTime: '8',
        maxTime: '11:59pm',
        defaultTime: '9',
        startTime: '08:00',
        dynamic: false,
        dropdown: true,
        scrollbar: true        
    });
});
</script>
</body>
</html>