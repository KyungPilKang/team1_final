let sweetalert=(icon,title,contents)=>{
        Swal.fire({
            icon: icon,
            title: title,
            text: contents,
            confirmButtonText: "확인"
        })
    };
/*//F5 새로고침 제어
if(performance.navigation.type==1){
	window.location="/freereg1";
}*/

// 로그인 하지 않은 사용자에 대한 제어
$(function () {
    $(".navbar-click").on("click", function () {
        alert('로그인이 필요한 페이지 입니다!');
        return(location.href = "/loginForm");
    });
});

// 시청강의를 눌렀을때 강의 페이지로 넘어가는것에 대한 제어
$(function() {
    $(".student-move").on("click", function() {
        alert('강의시청 페이지로 이동합니다!.');
        return(location.href = "/studentmovedetail");
    });
})
