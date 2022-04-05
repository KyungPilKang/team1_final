/* 장바구니 담기 */
const putCart = function (bookNum) {
    fetch("http://localhost:8090/book-store/putcart", {
        method: "POST",
        header: {
            "Content-Type": "application/json",
        },
        body: JSON.stringify({
            book_num: bookNum
        }),
    }).then((response) => response.json())
        .then(function (data) {
            console.log(data.exist)
            if (data.exist === "담기성공") {
                Swal.fire({
                    title: data.exist,
                    text: "장바구니에" + bookNum + "번 상품이 담겼습니다.",
                    icon: "success",
                    confirmButtonText: "확인"
                }).then(() => {
                    location.reload()
                })
            } else {
                // alert("장바구니에 이미 존재하는 상품입니다.")
                Swal.fire({
                    title: "중복",
                    text: "장바구니에 이미 존재하는 상품입니다.",
                    icon: "warning",
                    confirmButtonText: "확인"
                });
            }
        })
}
