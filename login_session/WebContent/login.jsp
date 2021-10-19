<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form action="loginOK.jsp" method="post">
	<table border="1" align="center" width="500">
		<tr>
			<th colspan="2">로그인</th>
		</tr>
		<tr>
			<td>사용자 아이디</td>
			<td><input type="text" name="userid"></td>
		</tr>
		<tr>
			<td>사용자 암호</td>
			<td><input type="password" name="password"></td>
		</tr>
		<tr>
			<th colspan="2"><input type="submit" value="로그인"></th>
		</tr>
		
	</table>
	</form>

</body>
</html>