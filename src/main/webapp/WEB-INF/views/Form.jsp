<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="resources/css/Form.css"/>
<title>양식</title>
</head>
<body>
<div id="main-menu"><!-- 전체 메뉴 영역 -->


	<div class="top-bar"> <!-- 이게 맨 위 공통적인 부분 -->
		<a href="${pageContext.request.contextPath}/" class="back-link"><!-- 여기에 뒤로가기 만들고 -->
			<img src="resources/img/12.png" alt="뒤로가기" id="back">
		</a>
		<p>일식</p><!-- 여기에 중간에 한식 이름 중앙에 넣고-->
	</div>
	
	
	<div class="menu-items">

		<!-- 떡볶이 -->
        <div class="menu-item">
            <img src="resources/img/Form1.png" alt="고기" class="menu-img">
            <div class="menu-info">
                <p class="menu-name">고기</p>
                <p class="menu-price">10,000</p>
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
            <img src="resources/img/Form2.png" alt="라멘" class="menu-img">
            <div class="menu-info">
                <p class="menu-name">파스타</p>
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
            <img src="resources/img/Form3.png" alt="주먹밥" class="menu-img">
            <div class="menu-info">
                <p class="menu-name">피자</p>
                <p class="menu-price">10,500</p>
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
            <img src="resources/img/Form4.png" alt="카레" class="menu-img">
            <div class="menu-info">
                <p class="menu-name">라자냐</p>
                <p class="menu-price">7,000</p>
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
            <img src="resources/img/Form5.png" alt="규동" class="menu-img">
            <div class="menu-info">
                <p class="menu-name">샐러드</p>
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




<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/Form.js"></script><!-- 자바스크립트 링크 -->

</body>
</html>