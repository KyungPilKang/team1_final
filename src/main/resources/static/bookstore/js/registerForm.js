// Register Book
function register() {
    let content = editor.getHTML();
    let cat = $('#book_cat').val();
    let img = $('#file').val();
    let author = $('#book_author').val();
    let publisher = $('#book_publisher').val();
    let subject = $('#book_subject').val();
    let price = $('#book_price').val();
    let dcRate = $('#book_discount').val();
    $("#book_content").val(content);
    if (!(cat === "" || cat === "none")) {
        if (img === "") {
            swal({
                title: "입력 오류",
                text: "책 이미지를 추가해주세요",
                icon: "error",
                button: "확인"
            });
            $('#book_author').focus()
            return false;
        }
        if (author === "") {
            swal({
                title: "입력 오류",
                text: "작가명을 입력하세요",
                icon: "error",
                button: "확인"
            });
            $('#book_author').focus()
            return false;
        }
        if (publisher === "") {
            swal({
                title: "입력 오류",
                text: "출판사명을 입력하세요",
                icon: "error",
                button: "확인"
            });
            $('#book_publisher').focus()
            return false;
        }
        if (price === "") {
            swal({
                title: "입력 오류",
                text: "가격을 입력하세요",
                icon: "error",
                button: "확인"
            });
            $('#book_price').focus()
            return false;
        }
        if ($("input[name=yon]:checked").val() === "yes" && dcRate === "0") {
            swal({
                title: "입력 오류",
                text: "할인율을 설정하세요",
                icon: "error",
                button: "확인"
            });
            return false;
        }
        if (subject === "") {
            swal({
                title: "입력 오류",
                text: "제목을 입력하세요",
                icon: "error",
                button: "확인"
            });
            $('#book_subject').focus()
            return false;
        }
        if (content === "<p><br></p>") {
            swal({
                title: "입력 오류",
                text: "내용을 입력하세요",
                icon: "error",
                button: "확인"
            });
            return false;
        }
    } else {
        swal({
            title: "선택 오류",
            text: "카테고리를 선택하세요",
            icon: "error",
            button: "확인"
        });
        $('#book_cat').focus()
        return;
    }
    $("#book_form").attr("action", "/book-store/regbook").submit();
}

// Preview
function readURL(input) {
    if (input.files && input.files[0]) {
        let reader = new FileReader();
        reader.onload = (e) => {
            document.getElementById('pv_img').src = e.target.result;
        };
        reader.readAsDataURL(input.files[0]);
    } else {
        document.getElementById('pv_img').src = "";
    }
}

// Discount Or Not
let discount = $("#book_discount");
$(document).ready(function () {
    $("input:radio[name=yon]").click(function () {
        if ($("input[name=yon]:checked").val() === "yes") {
            $(discount).attr("disabled", false);
        } else if ($("input[name=yon]:checked").val() === "no") {
            $(discount).attr("disabled", true);
        }
    });
});


/* Auto Calc (가격,할인율 > 실제 판매가) JS */
$('#book_price, #book_discount').on({
    keyup: function () {
        let inputPrice = $('#book_price').val();
        let inputDiscount = $('#book_discount').val();
        let result = Math.ceil(inputPrice * (1 - (inputDiscount / 100)));
        $('#book_reprice').val(result);
    },
    click: function () {
        let inputPrice = $('#book_price').val();
        let inputDiscount = $('#book_discount').val();
        let result = Math.ceil(inputPrice * (1 - (inputDiscount / 100)));
        $('#book_reprice').val(result);
    }
})
/* Auto Calc (실제 판매가 > 가격,할인율) JS */
$('#book_reprice').on({
    keyup: function () {
        let inputPrice = $('#book_price').val();
        let inputReprice = $('#book_reprice').val();
        let disRate = Math.ceil(100-(inputReprice/inputPrice)*100);
        $('#book_discount').val(disRate);
    }
})