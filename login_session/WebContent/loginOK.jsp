<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%
	request.setCharacterEncoding("UTF-8");
	String userid = request.getParameter("userid");
	String password = request.getParameter("password");
	//request.getParameter를 이용해 아이디와 비밀번호를 받는다
	
	if(userid != null && userid.equals(password)){
		//로그인에 성공하면 사용자 아이디를 세션변수에 저장한다.
		session.setAttribute("userid", userid);
	}
	//index.jsp로 보낸다
	response.sendRedirect("index.jsp");
%>