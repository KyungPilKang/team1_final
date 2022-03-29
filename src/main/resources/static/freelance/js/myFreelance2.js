let sweetalert = (icon, title, contents) => {
	Swal.fire({
		icon: icon,
		title: title,
		text: contents,
		confirmButtonText: "확인"
	})
};

$('#canclebtn').click(function() {
	Swal.fire({
		title: "등록 취소",
		text: "등록을 취소하시겠습니까?",
		icon: "warning",
		showCancelButton: true,
		confirmButtonText: "아니오",
		cancelButtonText: "네",
		cancelButtonColor: '#d33',
		allowOutsideClick: false,
		customClass: {
			content: "swal_text",
			confirmButton: "swal_confirm",
			cancelButton: "swal_cancle"
		}
	}).then((result) => {
		if(!result.isConfirmed){
			window.location = "/freereg1";
		} else {
			return false;
		}
	})
	return false;
});