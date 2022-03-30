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
	window.location="/studyReg";
};

//초중등 선택
//regstudyform1, study_sname_1, study_sname_2, nextstudybtn1
$('#nextstudybtn1').click(function(){
 	$('#regstudyform1').css("display", "none");
   	$('#regstudyform2').css("display", "block");
   	window.location="#containerform";
   	return false;
});
$('#study_sname_1').click(function(){
   	$('#nextstudybtn1').attr('disabled', false);
});
$('#study_sname_2').click(function(){
   	$('#nextstudybtn1').attr('disabled', false);
});


//입력1 : 학년, 과목, 유형, 목표레벨
//regstudyform2, select : study_grade, study_subject,study_type, study_target_level ,nextstudybtn2
$('#nextstudybtn2').click(function(){
   	$('#regstudyform2').css("display", "none");
   	$('#regstudyform3').css("display", "block");
   	window.location="#containerform";
   	return false;
});


$('#study_grade_1').click(function(){
   	$('#nextstudybtn2').attr('disabled', false);
});
$('#study_grade_2').click(function(){
   	$('#nextstudybtn2').attr('disabled', false);
});
$('#study_grade_3').click(function(){
   	$('#nextstudybtn2').attr('disabled', false);
});
$('#study_grade_4').click(function(){
   	$('#nextstudybtn2').attr('disabled', false);
});
$('#study_grade_5').click(function(){
   	$('#nextstudybtn2').attr('disabled', false);
});
$('#study_grade_6').click(function(){
   	$('#nextstudybtn2').attr('disabled', false);
});
$('#study_subject_kr').click(function(){
   	$('#nextstudybtn2').attr('disabled', false);
});
$('#study_subject_en').click(function(){
   	$('#nextstudybtn2').attr('disabled', false);
});
$('#study_subject_ma').click(function(){
   	$('#nextstudybtn2').attr('disabled', false);
});
$('#study_subject_so').click(function(){
   	$('#nextstudybtn2').attr('disabled', false);
});
$('#study_subject_sc').click(function(){
   	$('#nextstudybtn2').attr('disabled', false);
});
$('#study_type_1').click(function(){
   	$('#nextstudybtn2').attr('disabled', false);
});
$('#study_type_2').click(function(){
   	$('#nextstudybtn2').attr('disabled', false);
});
$('#study_type_3').click(function(){
   	$('#nextstudybtn2').attr('disabled', false);
});
$('#study_type_4').click(function(){
   	$('#nextstudybtn2').attr('disabled', false);
});
$('#study_target_level1').click(function(){
   	$('#nextstudybtn2').attr('disabled', false);
});
$('#study_target_level2').click(function(){
   	$('#nextstudybtn2').attr('disabled', false);
});
$('#study_target_level3').click(function(){
   	$('#nextstudybtn2').attr('disabled', false);
});
$('#study_target_level4').click(function(){
   	$('#nextstudybtn2').attr('disabled', false);
});

//입력2 : 타이틀, 시작/마무리 날짜, 시작/마무리 시간 
//regstudyform3, study_title, study_fdate, study_edate, study_ftime, study_etime,nextstudybtn3
$('#nextstudybtn3').click(function(){
   	$('#regstudyform3').css("display", "none");
   	$('#regstudyform4').css("display", "block");
   	window.location="#containerform";
   	return false;
});
$('#study_title').click(function(){
   	$('#nextstudybtn3').attr('disabled', false);
});
$('#study_fdate').click(function(){
   	$('#nextstudybtn3').attr('disabled', false);
});
$('#study_edate').click(function(){
   	$('#nextstudybtn3').attr('disabled', false);
});
$('#study_ftime').click(function(){
   	$('#nextstudybtn3').attr('disabled', false);
});
$('#study_etime').click(function(){
   	$('#nextstudybtn3').attr('disabled', false);
});


//입력4 : 내용, 카톡링크
//regstudyform4, study_contents,study_kakao, nextstudybtn4
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
$('#study_contents').click(function(){
   	$('#nextstudybtn4').attr('disabled', false);
});
$('#career_2').click(function(){
   	$('#nextbtn4').attr('disabled', false);
});
$('#study_kakao').click(function(){
   	$('#nextstudybtn4').attr('disabled', false);
});
