<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="resources/css/China.css"/>
<title>중식</title>
</head>
<body>
<div id="main-menu"><!-- 전체 메뉴 영역 -->


	<div class="top-bar"> <!-- 이게 맨 위 공통적인 부분 -->
		<a href="${pageContext.request.contextPath}/" class="back-link"><!-- 여기에 뒤로가기 만들고 -->
			<img src="resources/img/12.png" alt="뒤로가기" id="back">
		</a>
		<p>중식</p><!-- 여기에 중간에 한식 이름 중앙에 넣고-->
	</div>
	
	
	<div class="menu-items">

		<!-- 떡볶이 -->
        <div class="menu-item">
            <img src="resources/img/china1.png" alt="떡볶이" class="menu-img">
            <div class="menu-info">
                <p class="menu-name">짜장면</p>
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
            <img src="resources/img/china2.png" alt="짬뽕" class="menu-img">
            <div class="menu-info">
                <p class="menu-name">짬뽕</p>
                <p class="menu-price">3,000</p>
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
            <img src="resources/img/china3.png" alt="만두" class="menu-img">
            <div class="menu-info">
                <p class="menu-name">만두</p>
                <p class="menu-price">1,500</p>
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
            <img src="resources/img/china4.png" alt="마라탕" class="menu-img">
            <div class="menu-info">
                <p class="menu-name">마라탕</p>
                <p class="menu-price">10,500</p>
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
            <img src="resources/img/china5.png" alt="볶음밥" class="menu-img">
            <div class="menu-info">
                <p class="menu-name">볶음밥</p>
                <p class="menu-price">5,000</p>
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




<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/China.js"></script><!-- 자바스크립트 링크 -->


<p></p><!-- 여기에 뒤로가기 만들고 -->
<div></div><!-- 여기에 중간에 한식 이름 중앙에 넣고-->
<div></div><!-- 메뉴 사진넣고 -->
<div></div><!-- 메누 가격 넣고  -->
<div></div><!-- 메뉴 수량 선택할 수 있는 거 넣고 -->
</body>
</html>