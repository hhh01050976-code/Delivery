<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="resources/css/FastFood.css"/>
<title>패스트푸드</title>
</head>
<body>
<div id="main-menu"><!-- 전체 메뉴 영역 -->


	<div class="top-bar"> <!-- 이게 맨 위 공통적인 부분 -->
		<a href="${pageContext.request.contextPath}/" class="back-link"><!-- 여기에 뒤로가기 만들고 -->
			<img src="resources/img/12.png" alt="뒤로가기" id="back">
		</a>
		<p>패스트푸드</p><!-- 여기에 중간에 한식 이름 중앙에 넣고-->
	</div>
	
	
	<div class="menu-items">

		<!-- 떡볶이 -->
        <div class="menu-item">
            <img src="resources/img/FastFood1.png" alt="햄버거" class="menu-img">
            <div class="menu-info">
                <p class="menu-name">햄버거</p>
                <p class="menu-price">6,500</p>
                <div class="menu-qty">
                    <button class="qty-btn">-</button>
                    <span class="qty-number">1</span>
                    <button class="qty-btn">+</button>
                </div>
                 <button class="add-cart-btn">담기</button>
            </div>
        </div>		

		
		
	  <!-- 비빔밥  -->
        <div class="menu-item">
            <img src="resources/img/FastFood2.png" alt="샌드위치" class="menu-img">
            <div class="menu-info">
                <p class="menu-name">BLT</p>
                <p class="menu-price">4,000</p>
                <div class="menu-qty">
                    <button class="qty-btn">-</button>
                    <span class="qty-number">1</span>
                    <button class="qty-btn">+</button>
                </div>
                 <button class="add-cart-btn">담기</button>
            </div>
        </div>	
		

	  <!-- 라면 -->
        <div class="menu-item">
            <img src="resources/img/FastFood3.png" alt="핫도그" class="menu-img">
            <div class="menu-info">
                <p class="menu-name">핫도그</p>
                <p class="menu-price">3,000</p>
                <div class="menu-qty">
                    <button class="qty-btn">-</button>
                    <span class="qty-number">1</span>
                    <button class="qty-btn">+</button>
                </div>
                 <button class="add-cart-btn">담기</button>
            </div>
        </div>	
		

	  <!-- 김밥 -->
        <div class="menu-item">
            <img src="resources/img/FastFood4.png" alt="치킨" class="menu-img">
            <div class="menu-info">
                <p class="menu-name">치킨</p>
                <p class="menu-price">10,000</p>
                <div class="menu-qty">
                    <button class="qty-btn">-</button>
                    <span class="qty-number">1</span>
                    <button class="qty-btn">+</button>
                </div>
                 <button class="add-cart-btn">담기</button>
            </div>
        </div>	
        
       	 <!-- 치킨 -->
        <div class="menu-item">
            <img src="resources/img/FastFood5.png" alt="규동" class="menu-img">
            <div class="menu-info">
                <p class="menu-name">나쵸</p>
                <p class="menu-price">3,000</p>
                <div class="menu-qty">
                    <button class="qty-btn">-</button>
                    <span class="qty-number">1</span>
                    <button class="qty-btn">+</button>
                </div>
                 <button class="add-cart-btn">담기</button>
            </div>
        </div>	
        
        
    </div>


	<button id="open-cart-btn" class="cart-btn">장바구니 보기</button>






</div>




<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/FastFood.js"></script><!-- 자바스크립트 링크 -->

</body>
</html>