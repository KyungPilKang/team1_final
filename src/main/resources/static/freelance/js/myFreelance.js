let sweetalert=(icon,title,contents)=>{
        Swal.fire({
            icon: icon,
            title: title,
            text: contents,
            confirmButtonText: "확인"
        })
    };
//F5 새로고침 제어
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

//프리랜서 경력
$('#nextbtn4').click(function(){
   	$('#regform4').css("display", "none");
   	if($('input[name="freelance_type"]:checked').val()=="1"){
		$('#regform_class1').css("display", "block");
	} else if($('input[name="freelance_type"]:checked').val()=="2"){
		$('#regform_video1').css("display", "block");
	} else {
		$('#regform_edit1').css("display", "block");
	}
   	window.location="#containerform";
   	return false;
});
$('#career_1').click(function(){
   	$('#nextbtn4').attr('disabled', false);
});
$('#career_2').click(function(){
   	$('#nextbtn4').attr('disabled', false);
});
$('#career_3').click(function(){
   	$('#nextbtn4').attr('disabled', false);
});
$('#career_4').click(function(){
   	$('#nextbtn4').attr('disabled', false);
});

//프리랜서(강의제작) 학년
$('#nextbtn_class1').click(function(){
   	$('#regform_class1').css("display", "none");
	$('#regform_class2').css("display", "block");
   	window.location="#containerform";
   	return false;
});
$('#grade_1').click(function(){
   	$('#nextbtn_class1').attr('disabled', false);
});
$('#grade_2').click(function(){
   	$('#nextbtn_class1').attr('disabled', false);
});

//프리랜서(강의제작) 과목
$('#nextbtn_class2').click(function(){
   	$('#regform_class2').css("display", "none");
	$('#regform_class3').css("display", "block");
   	window.location="#containerform";
   	return false;
});
$('#class_type_1').click(function(){
   	$('#nextbtn_class2').attr('disabled', false);
   	$('#class_type_etc').css('display', 'none');
   	$('#class_type_8').val("");
});
$('#class_type_2').click(function(){
   	$('#nextbtn_class2').attr('disabled', false);
   	$('#class_type_etc').css('display', 'none');
   	$('#class_type_8').val("");
});
$('#class_type_3').click(function(){
   	$('#nextbtn_class2').attr('disabled', false);
   	$('#class_type_etc').css('display', 'none');
   	$('#class_type_8').val("");
});
$('#class_type_4').click(function(){
   	$('#nextbtn_class2').attr('disabled', false);
   	$('#class_type_etc').css('display', 'none');
   	$('#class_type_8').val("");
});
$('#class_type_5').click(function(){
   	$('#nextbtn_class2').attr('disabled', false);
   	$('#class_type_etc').css('display', 'none');
    $('#class_type_8').val("");
});
$('#class_type_6').click(function(){
   	$('#nextbtn_class2').attr('disabled', false);
   	$('#class_type_etc').css('display', 'none');
   	$('#class_type_8').val("");
});
$('#class_type_7').click(function(){
	$('#nextbtn_class2').attr('disabled', true);
   	$('#class_type_etc').css('display', 'block');
});
$('#class_type_8').click(function(){
	$('#nextbtn_class2').attr('disabled', false);
});

//프리랜서(강의제작) 학력
$('#nextbtn_class3').click(function(){
   	$('#regform_class3').css("display", "none");
	if($('input[name="labor_type"]:checked').val()=="1"){
		$('#regform5-1').css("display", "block");
	} else if($('input[name="labor_type"]:checked').val()=="2"){
		$('#regform5-2').css("display", "block");
	} else{
		$('#regform5-3').css("display", "block");
	}
   	window.location="#containerform";
   	return false;
});
$('#education_1').click(function(){
	$('#univform').css('display', 'block');	
	$('#majorform').css('display', 'none');
	$('#certifileform').css('display', 'none');
	$('#univ').val("");
	$('#major').val("");
	$('#certification_file').val("");
	$('#upload-name').val("");		
})
$('#education_2').click(function(){
	$('#univform').css('display', 'block');
	$('#majorform').css('display', 'none');
	$('#certifileform').css('display', 'none');
	$('#univ').val("");
	$('#major').val("");
	$('#certification_file').val("");
	$('#upload-name').val("");
})
$('#education_3').click(function(){
	$('#univform').css('display', 'block');
	$('#majorform').css('display', 'none');
	$('#certifileform').css('display', 'none');
	$('#univ').val("");
	$('#major').val("");
	$('#certification_file').val("");
	$('#upload-name').val("");
})
$('#education_4').click(function(){
	$('#univform').css('display', 'block');
	$('#majorform').css('display', 'none');
	$('#certifileform').css('display', 'none');
	$('#univ').val("");
	$('#major').val("");
	$('#certification_file').val("");
	$('#upload-name').val("");	
})
$("#univ").on('change', function () {
	if($('#major').val()==""||$('#certification_file').val()==""||$('#univ').val()==""){
		$('#nextbtn_class3').attr('disabled', true);
	} else{
		$('#nextbtn_class3').attr('disabled', false);
	}
	if($('#univ').val()!=""){
		$('#majorform').css('display', 'block');	
	}
});
$("#major").on('change', function () {
	if($('#univ').val()==""||$('#certification_file').val()==""||$('#major').val()==""){
		$('#nextbtn_class3').attr('disabled', true);
	} else{
		$('#nextbtn_class3').attr('disabled', false);
	}
	if($('#major').val()!=""){
		$('#certifileform').css('display', 'block');	
	}
});
$("#certification_file").on('change', function () {
	if($('#univ').val()==""||$('#major').val()==""||$('#certification_file').val()==""){
		$('#nextbtn_class3').attr('disabled', true);
	} else{
		$('#nextbtn_class3').attr('disabled', false);
	}
    let fileName = $("#certification_file").val();
    $("#upload-name").val(fileName);
});

//프리랜서 계약 금액
$('#nextbtn5-1').click(function(){
   	$('#regform5-1').css("display", "none");
	$('#regform6').css("display", "block");
   	window.location="#containerform";
   	return false;
});
$('#nextbtn5-2').click(function(){
   	$('#regform5-2').css("display", "none");
	$('#regform6').css("display", "block");
   	window.location="#containerform";
   	return false;
});
$('#nextbtn5-3').click(function(){
   	$('#regform5-3').css("display", "none");
	$('#regform6').css("display", "block");
   	window.location="#containerform";
   	return false;
});
$("#month_pay").on('change', function () {
	$('#nextbtn5-1').attr('disabled', false);
});
$("#week_pay").on('change', function () {
	$('#nextbtn5-2').attr('disabled', false);
});
$("#case_pay").on('change', function () {
	$('#nextbtn5-3').attr('disabled', false);
});

//프리랜서 마지막 소개
$("#introduce_title").on('change', function () {
	if($('#introduce_title').val()==""||$('#introduce_contents').val()==""||$('#promotion_video_file').val()==""||$('#banner_image_file').val()==""){
		$('#nextbtn6').attr('disabled', true);
	} else{
		$('#nextbtn6').attr('disabled', false);
	}
});
$("#introduce_contents").on('change', function () {
	if($('#introduce_title').val()==""||$('#introduce_contents').val()==""||$('#promotion_video_file').val()==""||$('#banner_image_file').val()==""){
		$('#nextbtn6').attr('disabled', true);
	} else{
		$('#nextbtn6').attr('disabled', false);
	}
});
$("#promotion_video_file").on('change', function () {
    let fileName = $("#promotion_video_file").val();
    $("#promotion_video_upload-name").val(fileName);
    if($('#introduce_title').val()==""||$('#introduce_contents').val()==""||$('#promotion_video_file').val()==""||$('#banner_image_file').val()==""){
		$('#nextbtn6').attr('disabled', true);
	} else{
		$('#nextbtn6').attr('disabled', false);
	}
});
$("#banner_image_file").on('change', function () {
    let fileName = $("#banner_image_file").val();
    $("#banner_image_upload-name").val(fileName);
    if($('#introduce_title').val()==""||$('#introduce_contents').val()==""||$('#promotion_video_file').val()==""||$('#banner_image_file').val()==""){
		$('#nextbtn6').attr('disabled', true);
	} else{
		$('#nextbtn6').attr('disabled', false);
	}
});

$(document).on("focusout", "input:text[koreanCurrency]", function()	{
	$(this).val( $(this).val().replace(",","") );
	$(this).val( $(this).val().replace(/[^-\.0-9]/gi,"") );
	$(this).val( $(this).val().replace(/(\d)(?=(\d\d\d)+(?!\d))/g, "$1,") );
	if($(this).val() != '' ) {
		$(this).val( $(this).val()+'원');
	}		
});

$(document).on("focus", "input:text[koreanCurrency]", function()	{	
	$(this).val( $(this).val().replace("원", ""));
});
