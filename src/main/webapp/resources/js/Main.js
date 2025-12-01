document.addEventListener('DOMContentLoaded', () => {
    let cartData = [];
    const savedCart = localStorage.getItem('cartData');
    if (savedCart) cartData = JSON.parse(savedCart);

    const cartBox = document.querySelector('#cart');
    const cartBtn = cartBox.querySelector('h2');

    cartBtn.addEventListener('click', () => {
        // 클릭 시 버튼 활성 스타일
        cartBox.style.backgroundColor = '#0056b3';
        cartBox.style.boxShadow = '0 8px 20px rgba(0,0,0,0.3)';
        cartBox.style.transform = 'translateY(-2px)';

        // 새 창 열기
        const cartWindow = window.open("", "_blank", "width=500,height=600");

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

        // 새 창 닫히면 버튼 원래 스타일로 되돌리기
        const timer = setInterval(() => {
            if (cartWindow.closed) {
                cartBox.style.backgroundColor = '#007BFF';
                cartBox.style.boxShadow = '0 5px 15px rgba(0,0,0,0.2)';
                cartBox.style.transform = 'none';
                clearInterval(timer);
            }
        }, 200);
    });
});
