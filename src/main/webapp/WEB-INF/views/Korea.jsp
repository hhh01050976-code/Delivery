<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="resources/css/Korea.css"/>

<title>한식</title>
</head>
<body>
<div id="main-menu"><!-- 전체 메뉴 영역 -->


	<div class="top-bar"> <!-- 이게 맨 위 공통적인 부분 -->
		<a href="${pageContext.request.contextPath}/" class="back-link"><!-- 여기에 뒤로가기 만들고 -->
			<img src="resources/img/12.png" alt="뒤로가기" id="back">
		</a>
		<p>한식</p><!-- 여기에 중간에 한식 이름 중앙에 넣고-->
	</div>
	
	
	<div class="menu-items">

		<!-- 떡볶이 -->
        <div class="menu-item">
            <img src="resources/img/korea4.png" alt="떡볶이" class="menu-img">
            <div class="menu-info">
                <p class="menu-name">떡볶이</p>
                <p class="menu-price">2,000</p>
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
            <img src="resources/img/korea3.png" alt="비빔밥" class="menu-img">
            <div class="menu-info">
                <p class="menu-name">비빔밥</p>
                <p class="menu-price">5,000</p>
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
            <img src="resources/img/korea1.png" alt="라면" class="menu-img">
            <div class="menu-info">
                <p class="menu-name">라면</p>
                <p class="menu-price">2,000</p>
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
            <img src="resources/img/korea2.png" alt="김밥" class="menu-img">
            <div class="menu-info">
                <p class="menu-name">김밥</p>
                <p class="menu-price">1,500</p>
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
            <img src="resources/img/korea5.png" alt="치킨" class="menu-img">
            <div class="menu-info">
                <p class="menu-name">치킨</p>
                <p class="menu-price">15,000</p>
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




<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/Kroea.js"></script><!-- 자바스크립트 링크 -->
</body>
</html>