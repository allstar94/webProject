<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!-- 추가 -->
<%@ page errorPage="error_page.jsp" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>error_page.jsp 페이지</title>
</head>

<body>
	<div align="center">
		<h2>error_test.jsp 페이지</h2>
		<hr>
		<%= 10/0 %>
	</div>

</body>
</html>