const body = document.querySelector('body');
const modal = document.querySelector('.modal');
const btnOpenPopup = document.querySelector('.btn-open-popup');

btnOpenPopup.addEventListener('click', () => {
    modal.classList.toggle('show');

    if (modal.classList.contains('show')) {
        body.style.overflow = 'hidden';
    }
});

modal.addEventListener('click', (event) => {
    if (event.target === modal) {
        modal.classList.toggle('show');

        if (!modal.classList.contains('show')) {
            body.style.overflow = 'auto';
        }
    }
});

const closeBtn = modal.querySelector(".close-area")
closeBtn.addEventListener("click", e => {
    modal.style.display = "none"
    body.style.overflow = 'auto';
})


/* 제품 수량 선택 */
function count(type) {
    // 결과를 표시할 element
    const resultElement = document.getElementById('result');

    // 현재 화면에 표시된 값
    let number = resultElement.innerText;

    // 더하기/빼기 여기서 number에 재고 수량을 넣어주면 됨
    if (type === 'plus' && number < 4) {
        number = parseInt(number) + 1;
    } else if (type === 'minus' && number > 0) {
        number = parseInt(number) - 1;
    }

    // 결과 출력
    resultElement.innerText = number;
}