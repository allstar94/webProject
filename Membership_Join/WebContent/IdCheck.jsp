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
<title>IdCheck.jsp ����</title>
</head>
<body>
	<table border="0" align="center">
		<tr>
			<td align="center>"> 	
				<%
					if(idCheck == 1){
				%>
				<%=mem_id %> �� �̹� �����ϴ� ID�Դϴ�. &nbsp;<br><br>
				<input type = "button" value = "�ݱ�" onClick="javascript:self.close();"
						opner.document.myForm.mem_id.focus();/>
				<% 
					}else{ 
				%>
				<br>
				<%=mem_id %> �� ��� ������ ID�Դϴ�. &nbsp;<br><br>
				<input type="button" value="�ݱ�" onclick="javascript:self.close();
						opener.document.myForm.mem_passwd.focus();">
				<%
					}
				%>
			</td>
		</tr>
	</table>

</body>
</html>