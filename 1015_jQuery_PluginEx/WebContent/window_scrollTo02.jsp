<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!-- 추가 -->
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>[중요] 윈도우 스코롤의 절대 위치로 이동하기</title>
<style>
	#scroll-to-top{
		width:50px;
		height:50px;
		position:fixed;
		bottom:3rem;
		right:3rem;
	}
</style>

</head>
<body>
	<h2>오픈 마켓</h2>
	<h2>과일 상품 목록 리스트</h2>
	<div id="apple">
		<div>
			<img src='./images/appleImage.jpg'/>
		</div>
		<div>
			<b><c:out value="청송 꿀사과"/></b>
		</div>
		<div>
			<b><fmt:formatNumber value="12000" pattern="#,###원"/></b>
		</div>
		<div>
			<small><c:out value="고당도 아삭한 사과의 감칠맛"/></small>
		</div>
	</div>
	<div id="grape">
		<div>
			<img src='./images/grapeImage.jpg'/>
		</div>
		<div>
			<b><c:out value="홍성 샤인 머스켓"/></b>
		</div>
		<div>
			<b><fmt:formatNumber value="20000" pattern="#,###원"/></b>
		</div>
		<div>
			<small><c:out value="껍질째 먹는 씨 없는 신품종 포도"/></small>
		</div>
	</div>
	<div id="strawberry">
		<div>
			<img src='./images/strawberryImage.jpg'/>
		</div>
		<div>
			<b><c:out value="강진 딸기"/></b>
		</div>
		<div>
			<b><fmt:formatNumber value="15000" pattern="#,###원"/></b>
		</div>
		<div>
			<small><c:out value="달콤한 딸기 해외에서도 유명해요"/></small>
		</div>
	</div>
	<div id="watermelon">
		<div>
			<img src='./images/watermelon.jpg'/>
		</div>
		<div>
			<b><c:out value="수박"/></b>
		</div>
		<div>
			<b><fmt:formatNumber value="25000" pattern="#,###원"/></b>
		</div>
		<div>
			<small><c:out value="수박"/></small>
		</div>
	</div>
	<br><br>
	<input id="scroll-to-top" type = "image" src="./images/top_imgae.png"
			onclick="javascript:window.scrollTo(0,0)" alt ="맨위로 스크롤"/>
</body>
</html>