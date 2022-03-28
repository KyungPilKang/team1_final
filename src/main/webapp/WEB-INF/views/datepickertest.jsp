<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.min.js" integrity="sha512-894YE6QWD5I59HgZOGReFYm4dnWc1Qt5NtvYSaNcOP+u1T9qYdvdihz0PPSiiqn/+/3e7Jo4EaG7TubfWGUrMQ==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/jqueryui/1.12.1/jquery-ui.min.js" integrity="sha512-uto9mlQzrs59VwILcLiRYeLKPPbS/bT71da/OEBYEwcdNUk8jYIy+D176RYoop1Da+f9mvkYrmj5MCLZWEtQuA==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>
   <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/jqueryui/1.12.1/jquery-ui.min.css" integrity="sha512-aOG0c6nPNzGk+5zjwyJaoRUgCdOrfSDhmMID2u4+OIslr0GjpLKo7Xm0Ao3xmpM4T8AmIouRkqwj1nrdVsLKEQ==" crossorigin="anonymous" referrerpolicy="no-referrer" />

<meta charset="UTF-8">
<title>Insert title here</title>
<style>


</style>
</head>
<body>
<input class="datepicker" id="fdate">
<input class="datepicker" id="edate">
<script>
  $(function(){
        $('.datepicker').datepicker({
        	format :"yyyy-mm-dd", //달력에서 클릭시 표시할 값 형식 
        	todayHighlight: true,
        });
        
        
       //영어달력에서 한글달력으로 설정 변경
        $.datepicker.setDefaults({
      	  dateFormat: 'yy-mm-dd',
      	  prevText: '이전 달',
      	  nextText: '다음 달',
      	  monthNames: ['1월', '2월', '3월', '4월', '5월', '6월', '7월', '8월', '9월', '10월', '11월', '12월'],
      	  monthNamesShort: ['1월', '2월', '3월', '4월', '5월', '6월', '7월', '8월', '9월', '10월', '11월', '12월'],
      	  dayNames: ['일', '월', '화', '수', '목', '금', '토'],
      	  dayNamesShort: ['일', '월', '화', '수', '목', '금', '토'],
      	  dayNamesMin: ['일', '월', '화', '수', '목', '금', '토'],
      	  showMonthAfterYear: true,
      	  yearSuffix: '년'
      	});  
      });
    
  var fdate = $('#fdate').val();
  var edate = $('#edate').val();
  console.log(fdate);
  console.log(edate);
  
  
  
</script>
</body>
</html>