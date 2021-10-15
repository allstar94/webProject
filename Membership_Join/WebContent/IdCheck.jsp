<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
  
<% request.setCharacterEncoding("EUC-KR"); %> 
   
   
<jsp:useBean id="mem" scope = "page" class ="member.DBBean"/>

<%
	String mem_id = request.getParameter("mem_id");
	int idCheck = mem.confirmId(mem_id);
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>IdCheck.jsp 파일</title>
</head>
<body>
	<table border="0" align="center">
		<tr>
			<td align="center>"> 	
				<%
					if(idCheck == 1){
				%>
				<%=mem_id %> 는 이미 존재하는 ID입니다. &nbsp;<br><br>
				<input type = "button" value = "닫기" onClick="javascript:self.close();"
						opner.document.myForm.mem_id.focus();/>
				<% 
					}else{ 
				%>
				<br>
				<%=mem_id %> 는 사용 가능한 ID입니다. &nbsp;<br><br>
				<input type="button" value="닫기" onclick="javascript:self.close();
						opener.document.myForm.mem_passwd.focus();">
				<%
					}
				%>
			</td>
		</tr>
	</table>

</body>
</html>