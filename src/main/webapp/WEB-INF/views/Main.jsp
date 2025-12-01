<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>배달 어플</title>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet" href="resources/css/first.css"/>
<link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@400;700&display=swap" rel="stylesheet">

</head>
<body>

 
<!-- 머리말 -->   
<header>

<div><a href="${pageContext.request.contextPath}/"><img src="resources/img/Delivery.jpg" alt="배달 로고 사진" id="test"></a></div>

<div><input type="button" alt="프로필" value="" id="test2"></div>
</header>


<!-- 메뉴 -->
<nav>


<div class="menu">
<div class="menu-item">
	<a href="${pageContext.request.contextPath}/Korea">
	<img src="resources/img/3.jpg" alt="한식">
	</a>
	<p>한식</p>
</div>
<div class="menu-item">
	<a href="${pageContext.request.contextPath}/China">
	<img src="resources/img/4.jpg" alt="중식">
	</a>
	<p>중식</p>

</div>
<div class="menu-item">
	<a href="${pageContext.request.contextPath}/Japan">
	<img src="resources/img/5.jpg" alt="일식">
	</a>
	<p>일식</p>
</div>
<div class="menu-item">
	<a href="${pageContext.request.contextPath}/Form">
	<img src="resources/img/6.jpg" alt="양식">
	</a>
	<p>양식</p>
</div>
<div class="menu-item">
	<a href="${pageContext.request.contextPath}/FastFood">
	<img src="resources/img/7.jpg" alt="패스트푸드">
	</a>
	<p>패스트푸드</p>
</div>
</div>

</nav>






<!-- 본문 -->

<div class="sl"><!-- 걸스나잇이랑 1인용 가로 정렬 display: black으로 하기 overflow 되면 가로 스크롤 가능하게하기  -->
<section class="a"><!-- 걸스 나잇 -->
	<p>🎉파티 전용🎉</p>
	<div><img src="resources/img/9.png" alt="파티" id="c"></div>
</section>
<section class="a"><!-- 1인용 -->
	<p>🍴1인용 전용🍴</p>
	<div><img src="resources/img/10.png" alt="1인용" id="c"></div>
</section>
</div>


<section class="d"><!-- 선택 장애 룰렛? -->
	<p>메뉴 선정을 못하겠다면! 룰렛을 돌려보세요👌</p>
	<div><img src="resources/img/11.png" alt="룰렛" id="f"></div>
	
	<!-- 룰렛 나중에 java로 진짜 돌려서 답 나오게 하기 -->
</section>





<section class = "g"><!-- 내가 이때까지 시킨 체크리스트 순위별로 (DB로 연결해서 table에 있는거 가져와야됌)-->
	<div></div>
</section>



<section></section><!--  -->

<!-- 장바구니 -->
<div id="cart">
    <h2>장바구니 보기</h2>
    <div class="cart-items"></div>
    <div id="total-price"></div>
</div>






<!-- 맨 밑 하단 영역 -->
<footer id="footer">
<div><p> 전화연결 : 052-256-8282</p></div>
<div><p> 배달 유선 문의 : 052-256-0202</p></div>
<div><p> 대표 메일 : hhh010509@naver.com</p></div>
</footer>



<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/Main.js"></script><!-- 자바스크립트 링크 -->
</body>
</html>