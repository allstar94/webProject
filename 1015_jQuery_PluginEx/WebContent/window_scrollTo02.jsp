<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!-- �߰� -->
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>[�߿�] ������ ���ڷ��� ���� ��ġ�� �̵��ϱ�</title>
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
	<h2>���� ����</h2>
	<h2>���� ��ǰ ��� ����Ʈ</h2>
	<div id="apple">
		<div>
			<img src='./images/appleImage.jpg'/>
		</div>
		<div>
			<b><c:out value="û�� �ܻ��"/></b>
		</div>
		<div>
			<b><fmt:formatNumber value="12000" pattern="#,###��"/></b>
		</div>
		<div>
			<small><c:out value="��絵 �ƻ��� ����� ��ĥ��"/></small>
		</div>
	</div>
	<div id="grape">
		<div>
			<img src='./images/grapeImage.jpg'/>
		</div>
		<div>
			<b><c:out value="ȫ�� ���� �ӽ���"/></b>
		</div>
		<div>
			<b><fmt:formatNumber value="20000" pattern="#,###��"/></b>
		</div>
		<div>
			<small><c:out value="����° �Դ� �� ���� ��ǰ�� ����"/></small>
		</div>
	</div>
	<div id="strawberry">
		<div>
			<img src='./images/strawberryImage.jpg'/>
		</div>
		<div>
			<b><c:out value="���� ����"/></b>
		</div>
		<div>
			<b><fmt:formatNumber value="15000" pattern="#,###��"/></b>
		</div>
		<div>
			<small><c:out value="������ ���� �ؿܿ����� �����ؿ�"/></small>
		</div>
	</div>
	<div id="watermelon">
		<div>
			<img src='./images/watermelon.jpg'/>
		</div>
		<div>
			<b><c:out value="����"/></b>
		</div>
		<div>
			<b><fmt:formatNumber value="25000" pattern="#,###��"/></b>
		</div>
		<div>
			<small><c:out value="����"/></small>
		</div>
	</div>
	<br><br>
	<input id="scroll-to-top" type = "image" src="./images/top_imgae.png"
			onclick="javascript:window.scrollTo(0,0)" alt ="������ ��ũ��"/>
</body>
</html>