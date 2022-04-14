/* 장바구니 담기 */
const putCart = function (bookNum) {
    fetch("/book-store/putcart", {
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
                swal({
                    title: data.exist,
                    text: "장바구니에" + bookNum + "번 상품이 담겼습니다.",
                    icon: "success",
                    button: "확인"
                }).then(() => {
                    location.reload()
                })
            } else {
                swal({
                    title: "중복",
                    text: "장바구니에 이미 존재하는 상품입니다.",
                    icon: "warning",
                    button: "확인"
                });
            }
        })
}


/* 바로 구매하기 */
const buyNow = function (bookNum,bookPrice) {
    document.getElementById('book_num').setAttribute("value", bookNum)
    document.getElementById('book_price').setAttribute("value", bookPrice)
    document.getElementById('buyNow').setAttribute("action", "/book-store/payment/now")
    document.getElementById('buyNow').submit()
}