<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="UTF-8"%>
<!-- 추 가 -->
<%@ page import = "java.util.*" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>표현식 응용 예제</title>
</head>
<body>
	<% // 자바 코드 기술
		String[] str = {"자바","HTML", "CSS","JavaScript","React","Node.js"};
		
		Random rnd = new Random();
		int i = rnd.nextInt(6); // 난수를 0 ~ 5 까지 발생

		
	
	%>
	<%= str[i] %> 과목을 선택했습니다.
</body>
</html>