<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content= "text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
		if(session.getAttribute("userid")==null){
			out.println("<a href='login.jsp'>로그인</a>");
		}else{
			String userid = (String)session.getAttribute("userid");
			out.println(userid+"님 반갑습니다.<br>");
			out.println("<a href='logout.jsp'>로그아웃</a>");
		}
	%>
</body>
</html>