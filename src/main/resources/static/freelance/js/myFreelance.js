let sweetalert=(icon,title,contents)=>{
        Swal.fire({
            icon: icon,
            title: title,
            text: contents,
            confirmButtonText: "확인"
        })
    };
if(performance.navigation.type==1){
    		window.location="/freereg1";
};

//프리랜서 타입
$('#nextbtn1').click(function(){
 	$('#regform1').css("display", "none");
   	$('#regform2').css("display", "block");
   	window.location="#containerform";
   	return false;
});
$('#freelance_type_1').click(function(){
   	$('#nextbtn1').attr('disabled', false);
});
$('#freelance_type_2').click(function(){
   	$('#nextbtn1').attr('disabled', false);
});
$('#freelance_type_3').click(function(){
   	$('#nextbtn1').attr('disabled', false);
});

//프리랜서 계약 형태
$('#nextbtn2').click(function(){
   	$('#regform2').css("display", "none");
   	$('#regform3').css("display", "block");
   	window.location="#containerform";
   	return false;
});
$('#labor_type_1').click(function(){
   	$('#nextbtn2').attr('disabled', false);
});
$('#labor_type_2').click(function(){
   	$('#nextbtn2').attr('disabled', false);
});
$('#labor_type_3').click(function(){
   	$('#nextbtn2').attr('disabled', false);
});

//프리랜서 업무 시간
$('#nextbtn3').click(function(){
   	$('#regform3').css("display", "none");
   	$('#regform4').css("display", "block");
   	window.location="#containerform";
   	return false;
});
$('#labor_time_1').click(function(){
   	$('#nextbtn3').attr('disabled', false);
});
$('#labor_time_2').click(function(){
   	$('#nextbtn3').attr('disabled', false);
});
$('#labor_time_3').click(function(){
   	$('#nextbtn3').attr('disabled', false);
});
$('#labor_time_4').click(function(){
   	$('#nextbtn3').attr('disabled', false);
});
$('#labor_time_5').click(function(){
   	$('#nextbtn3').attr('disabled', false);
});
$('#labor_time_6').click(function(){
   	$('#nextbtn3').attr('disabled', false);
});
$('#labor_time_7').click(function(){
   	$('#nextbtn3').attr('disabled', false);
});
$('#labor_time_8').click(function(){
   	$('#nextbtn3').attr('disabled', false);
});
$('#labor_time_9').click(function(){
   	$('#nextbtn3').attr('disabled', false);
});
$('#labor_time_10').click(function(){
   	$('#nextbtn3').attr('disabled', false);
});