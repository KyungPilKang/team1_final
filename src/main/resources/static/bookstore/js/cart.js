
/* 수량을 키보드로 입력시 재고수량을 초과할 경우 최대 재고수량으로 제어, 0 입력시 1로 제어 */
const maxCount = function(maxNum,idNum){
    let inputCount = document.getElementById('order_qty'+idNum).value
    if(inputCount>maxNum){
        document.getElementById('order_qty'+idNum).value = maxNum
    } else if(inputCount==='0'){
        document.getElementById('order_qty'+idNum).value = 1
    }
}

