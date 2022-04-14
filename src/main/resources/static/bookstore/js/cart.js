/* 수량을 키보드로 입력시 재고수량을 초과할 경우 최대 재고수량으로 제어, 0 입력시 1로 제어 */
const maxCount = function (maxNum, idNum) {
    let inputCount = document.getElementById('order_qty' + idNum).value
    if (inputCount > maxNum) {
        document.getElementById('order_qty' + idNum).value = maxNum
    } else if (inputCount === '0') {
        document.getElementById('order_qty' + idNum).value = 1
    }
}

/* 장바구니 아이템 삭제 */
const delCart = function (bookNum) {
    event.preventDefault();
    fetch("/book-store/delcart", {
        method: "POST",
        header: {
            "Content-Type": "application/json",
        },
        body: JSON.stringify({
            book_num: bookNum
        }),
    }).then((response) => response.json())
        .then(function (data) {
            location.reload()
        })
}

/* 전체 상품 구매하기 click */
const buyAll = function (){
    document.getElementById('cartForm').submit()
}



