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
	window.location="/studyfind";
};

//초중등 선택
//regstudyform1, study_sname_1, study_sname_2, nextstudybtn1
$('#nextstudybtn1').click(function(){
 	$('#regstudyform1').css("display", "none");
   	$('#regstudyform2').css("display", "block");
   	if($('input:radio[name="study_sname"]:checked').val()=='초등학생'){
		$('#grade_detail').css("display", "");
	}
   	window.location="#containerform";
   	return false;
});
$('#study_sname_1').click(function(){
   	$('#nextstudybtn1').attr('disabled', false);
});
$('#study_sname_2').click(function(){
   	$('#nextstudybtn1').attr('disabled', false);
});


//입력2 : 학년
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

//입력3 : 과목
$('#nextstudybtn3').click(function(){
   	$('#regstudyform3').css("display", "none");
   	$('#regstudyform4').css("display", "block");
   	window.location="#containerform";
   	return false;
});
$('#study_subject_kr').click(function(){
   	$('#nextstudybtn3').attr('disabled', false);
});
$('#study_subject_en').click(function(){
   	$('#nextstudybtn3').attr('disabled', false);
});
$('#study_subject_ma').click(function(){
   	$('#nextstudybtn3').attr('disabled', false);
});
$('#study_subject_so').click(function(){
   	$('#nextstudybtn3').attr('disabled', false);
});
$('#study_subject_sc').click(function(){
   	$('#nextstudybtn3').attr('disabled', false);
});

//입력4 : 유형
$('#nextstudybtn4').click(function(){
   	$('#regstudyform4').css("display", "none");
   	$('#regstudyform5').css("display", "block");
   	window.location="#containerform";
   	return false;
});

$('#study_type_1').click(function(){
   	$('#nextstudybtn4').attr('disabled', false);
});
$('#study_type_2').click(function(){
   	$('#nextstudybtn4').attr('disabled', false);
});
$('#study_type_3').click(function(){
   	$('#nextstudybtn4').attr('disabled', false);
});
$('#study_type_4').click(function(){
   	$('#nextstudybtn4').attr('disabled', false);
});


//입력5 : 목표레벨
$('#nextstudybtn5').click(function(){
   	$('#regstudyform5').css("display", "none");
});

$('#study_target_level1').click(function(){
   	$('#nextstudybtn5').attr('disabled', false);
});
$('#study_target_level2').click(function(){
   	$('#nextstudybtn5').attr('disabled', false);
});
$('#study_target_level3').click(function(){
   	$('#nextstudybtn5').attr('disabled', false);
});
$('#study_target_level4').click(function(){
   	$('#nextstudybtn5').attr('disabled', false);
});


