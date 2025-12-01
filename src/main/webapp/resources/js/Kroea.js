/**
 * 장바구니 데이터 관리
 */
let cartData = [];

// 페이지 로드 시 localStorage에서 장바구니 불러오기
const savedCart = localStorage.getItem('cartData');
if (savedCart) cartData = JSON.parse(savedCart);

// 메뉴 수량 버튼 이벤트
document.querySelectorAll('.menu-item').forEach(item => {
    const minusBtn = item.querySelector('.qty-btn:first-child');
    const plusBtn = item.querySelector('.qty-btn:last-child');
    const qtyNumber = item.querySelector('.qty-number');

    minusBtn.addEventListener('click', () => {
        let qty = parseInt(qtyNumber.textContent);
        if (qty > 1) qtyNumber.textContent = qty - 1;
    });

    plusBtn.addEventListener('click', () => {
        let qty = parseInt(qtyNumber.textContent);
        qtyNumber.textContent = qty + 1;
    });
});

// 메뉴 담기 버튼 이벤트
document.querySelectorAll('.add-cart-btn').forEach(btn => {
    btn.addEventListener('click', () => {
        const menuItem = btn.closest('.menu-item');
        const name = menuItem.querySelector('.menu-name').textContent;
        const price = menuItem.querySelector('.menu-price').textContent;
        const qty = parseInt(menuItem.querySelector('.qty-number').textContent);
        const imgSrc = menuItem.querySelector('.menu-img').src;

        const existing = cartData.find(item => item.name === name);
        if (existing) {
            existing.qty += qty;
        } else {
            cartData.push({ name, price, qty, imgSrc });
        }

        localStorage.setItem('cartData', JSON.stringify(cartData));
        alert(`${name}이(가) 장바구니에 추가되었습니다.`);
    });
});

// 장바구니 버튼 클릭 (팝업)
const cartBtn = document.getElementById('open-cart-btn');

cartBtn.addEventListener('click', () => {
    // hover 스타일 적용
    cartBtn.classList.add('hover');

    const cartWindow = window.open("", "_blank", "width=500,height=600");

    // 팝업 닫힘 체크
    const checkPopupClosed = setInterval(() => {
        if (cartWindow.closed) {
            cartBtn.classList.remove('hover'); // 스타일 제거
            clearInterval(checkPopupClosed); // 타이머 종료
        }
    }, 200);

    // 팝업 내용 작성
    cartWindow.document.write(`
        <html>
        <head>
            <title>장바구니</title>
            <style>
                body { font-family: Arial; margin: 20px; }
                h1 { text-align: center; margin-bottom: 20px; }
                .cart-item { display: flex; align-items: center; margin-bottom: 15px; }
                .cart-item img { width: 150px; height: 150px; object-fit: cover; border-radius: 10px; margin-right: 30px; }
                .cart-info { display: flex; flex-direction: column; }
                .cart-info span { margin-bottom: 5px; font-size: 18px; }
                .qty-btn, .remove-btn { margin-top: 5px; padding: 5px 10px; cursor: pointer; }
                .qty-btn { background: #FF6B6B; color: white; border: none; border-radius: 5px; }
                .remove-btn { background: #999; color: white; border: none; border-radius: 5px; }
                #total-price { margin-top: 20px; font-size: 20px; font-weight: 700; }
            </style>
        </head>
        <body>
            <h1>장바구니</h1>
            <div id="cart-items"></div>
            <div id="total-price"></div>
        </body>
        </html>
    `);

    const cartItemsDiv = cartWindow.document.getElementById('cart-items');
    const totalPriceDiv = cartWindow.document.getElementById('total-price');

    function renderCart() {
        cartItemsDiv.innerHTML = '';
        let totalPrice = 0;

        cartData.forEach((item, index) => {
            const div = cartWindow.document.createElement('div');
            div.classList.add('cart-item');
            div.innerHTML = `
                <img src="${item.imgSrc}" alt="${item.name}">
                <div class="cart-info">
                    <span>이름: ${item.name}</span>
                    <span>가격: ${item.price}</span>
                    <span>수량: 
                        <button class="qty-btn" data-index="${index}" data-type="minus">-</button> 
                        ${item.qty} 
                        <button class="qty-btn" data-index="${index}" data-type="plus">+</button>
                    </span>
                    <button class="remove-btn" data-index="${index}">삭제</button>
                </div>
            `;
            cartItemsDiv.appendChild(div);

            totalPrice += parseInt(item.price.replace(/,/g, '')) * item.qty;
        });

        totalPriceDiv.textContent = `총합계: ${totalPrice.toLocaleString()}`;

        // 수량 버튼 이벤트
        cartWindow.document.querySelectorAll('.qty-btn').forEach(btn => {
            btn.addEventListener('click', () => {
                const index = btn.dataset.index;
                const type = btn.dataset.type;
                if (type === 'plus') cartData[index].qty++;
                if (type === 'minus' && cartData[index].qty > 1) cartData[index].qty--;

                localStorage.setItem('cartData', JSON.stringify(cartData));
                renderCart();
            });
        });

        // 삭제 버튼 이벤트
        cartWindow.document.querySelectorAll('.remove-btn').forEach(btn => {
            btn.addEventListener('click', () => {
                const index = btn.dataset.index;
                cartData.splice(index, 1);

                localStorage.setItem('cartData', JSON.stringify(cartData));
                renderCart();
            });
        });
    }

    renderCart();
});
